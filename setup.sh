#!/bin/bash

# ========================== Base directory =============================================
CURRENT_DIR="$(pwd)"

# ========================== Config to Modify if required =============================================
GSDK_DOWNLOAD_LINK="https://github.com/SiliconLabs/gecko_sdk/releases/download/v4.3.2/gecko-sdk.zip"
GSDK_DOWNLOAD_DIR=$CURRENT_DIR
GSDK_UNZIPPED_DIR="$CURRENT_DIR/gsdk_unzipped"

CPCD_DOWNLOAD_LINK="https://github.com/SiliconLabs/cpc-daemon/archive/refs/tags/v4.3.2.zip"
CPCD_DOWNLOAD_DIR="$CURRENT_DIR/cpcd"
CPCD_UNZIP_DIR_NAME="cpc-daemon-4.3.2"
CPCD_CONFIG_FILE="$CURRENT_DIR/src/cpcd.conf"

ZIGBEED_PROJECT_NAME="lin32_432_zigbeed_RSSI"
ZIGBEED_PROJECT_DIR="$CURRENT_DIR/src/$ZIGBEED_PROJECT_NAME"
ZIGBEED_CONFIG_IN_GSDK_FILE="app/host/multiprotocol/zigbeed/multiprotocol-container/_artifacts/etc/zigbeed.conf"

Z3GATEWAY_DEFAULT_LOG_NAME="Z3Gateway.txt" # Located in Run directory
Z3GATEWAY_PROJECT_DIR="$CURRENT_DIR/src/$Z3GATEWAY_PROJECT_NAME"
Z3GATEWAY_PROJECT_NAME="lin32_432_Z3Gateway_RSSI"

ZIGBEED_APP_FILE_RELPATH_FROM_BUILD="debug/$ZIGBEED_PROJECT_NAME"
Z3GATEWAY_APP_FILE_RELPATH_FROM_BUILD="debug/$Z3GATEWAY_PROJECT_NAME"

# ========================== Typically no modification required =======================================
GSDK_ZIP_DOWNLOAD_FILE="$GSDK_DOWNLOAD_DIR/gsdk_download.zip"

GSDK_ZIGBEED_CONFIG_FILE="$GSDK_UNZIPPED_DIR/$ZIGBEED_CONFIG_IN_GSDK_FILE"
SYSTEM_ZIGBEED_CONFIG_DIR="/usr/local/etc/"

CPCD_BUILD_DIR="$CPCD_DOWNLOAD_DIR/build"
CPCD_DOWNLOAD_FILE="$CPCD_DOWNLOAD_DIR/cpcd_download.zip"
CPCD_UNZIPPED_DIR="$CPCD_DOWNLOAD_DIR/$CPCD_UNZIP_DIR_NAME"

ZIGBEED_MAKEFILE="$ZIGBEED_PROJECT_DIR/$ZIGBEED_PROJECT_NAME.Makefile"
ZIGBEED_BUILD_DIR="$ZIGBEED_PROJECT_DIR/build"

ZIGBEED_APP="$ZIGBEED_BUILD_DIR/$ZIGBEED_APP_FILE_RELPATH_FROM_BUILD"

Z3GATEWAY_MAKEFILE="$Z3GATEWAY_PROJECT_DIR/$Z3GATEWAY_PROJECT_NAME.Makefile"
Z3GATEWAY_BUILD_DIR="$Z3GATEWAY_PROJECT_DIR/build"
Z3GATEWAY_RUN_DIR="$Z3GATEWAY_PROJECT_DIR/run"

Z3GATEWAY_APP_LOG_FILE="$Z3GATEWAY_RUN_DIR/$Z3GATEWAY_DEFAULT_LOG_NAME"

Z3GATEWAY_APP="$Z3GATEWAY_BUILD_DIR/$Z3GATEWAY_APP_FILE_RELPATH_FROM_BUILD"

# =========================================================================


while [[ $# -gt 0 ]]; do
    case $1 in
        -h|--help)
            echo "Help usage is not implemented yet"
            echo "Usage: $0 [options]"
            exit
            ;;
        -gsdk-du|--gsdk-download-unzip)
            echo "GSDK downloading to directory: $GSDK_DOWNLOAD_DIR"
            wget -O "$GSDK_ZIP_DOWNLOAD_FILE" "$GSDK_DOWNLOAD_LINK"
            
            echo "GSDK unzipping to directory: $GSDK_UNZIPPED_DIR"
            unzip "$GSDK_ZIP_DOWNLOAD_FILE" -d "$GSDK_UNZIPPED_DIR"

            exit
            ;;
        -cpcd-dui|--cpcd-download-install)
        # Reference: Section 3.1 to 3.3 
        # https://www.silabs.com/documents/public/application-notes/an1351-using-co-processor-communication_daemon.pdf
            if [ -d "$CPCD_DOWNLOAD_DIR" ]; then
                echo "CPCd directory already exists."
                read -r -p "Do you want to delete it and proceed? (y/n): " answer
                if [ "$answer" = "y" ]; then
                    # Remove the existing directory and its contents
                    rm -r "$CPCD_DOWNLOAD_DIR"
                else
                    echo "CPCd download and installation cancelled."
                    exit 1
                fi
            fi

            echo "Creating the following directories:"
            echo "1. $CPCD_DOWNLOAD_DIR"
            echo "2. $CPCD_BUILD_DIR"

            mkdir "$CPCD_DOWNLOAD_DIR"
            mkdir "$CPCD_BUILD_DIR"

            echo "CPCd downloading to: $CPCD_DOWNLOAD_DIR"
            wget -O "$CPCD_DOWNLOAD_FILE" "$CPCD_DOWNLOAD_LINK"

            echo "CPCd unzipping to: $CPCD_DOWNLOAD_DIR"
            unzip "$CPCD_DOWNLOAD_FILE" -d "$CPCD_DOWNLOAD_DIR"

            echo "Installing CPCd pre-req libraries as mentined in AN1333"
            sudo apt-get install libmbedtls-dev 

            echo "cmake CPCd and then install in the directory: $CPCD_BUILD_DIR"
            cmake -B "$CPCD_BUILD_DIR" "$CPCD_UNZIPPED_DIR"
            sudo make -C "$CPCD_BUILD_DIR" install

            exit
            ;;
        -cpcd-o|--cpcd-open)
            echo "Running cpcd with config_file=$CPCD_CONFIG_FILE"
            sudo cpcd -c "$CPCD_CONFIG_FILE"
            exit
            ;;
        -socat-o|--socat-open)
            echo "Socat program starting: cmd:[socat pty,link=/dev/ttyZigbeeNCP pty,link=/tmp/ttyZigbeeNCP]"
            sudo socat pty,link=/dev/ttyZigbeeNCP pty,link=/tmp/ttyZigbeeNCP
            echo "Socat exiting..."
            exit
            ;;
        -zigbeed-b|--zigbeed-build)
            if [ -d "$ZIGBEED_BUILD_DIR" ]; then
                echo "Zigbeed build directory already exists."
                read -r -p "Do you want to delete it and proceed? (y/n): " answer
                if [ "$answer" = "y" ]; then
                    # Remove the existing directory and its contents
                    rm -r "$ZIGBEED_BUILD_DIR"
                else
                    echo "Zigbeed build and copy of config cancelled."
                    exit 1
                fi
            fi

            echo "Creating the following directories:"
            echo "1. $ZIGBEED_BUILD_DIR"

            mkdir "$ZIGBEED_BUILD_DIR"

            echo "Moving to Zigbeed Project directory, $ZIGBEED_PROJECT_DIR"
            cd "$ZIGBEED_PROJECT_DIR" || exit
            
            echo "Building Zigbeed project using makefile, $ZIGBEED_MAKEFILE"
            make -f "$ZIGBEED_MAKEFILE" 

            echo "Moving back to setup script directory, $CURRENT_DIR"
            cd "$CURRENT_DIR" || 
            
            echo "Copy Zigbeed configuration file to $SYSTEM_ZIGBEED_CONFIG_DIR using sudo cp"
            sudo cp "$GSDK_ZIGBEED_CONFIG_FILE" "$SYSTEM_ZIGBEED_CONFIG_DIR"

            exit
            ;;
        -zigbeed-o|--zigbeed-o)
            echo "Running Zigbeed application: $ZIGBEED_APP -v"
            sudo "$ZIGBEED_APP" -v
            exit
            ;;
        -z3gateway-b|--z3gateway-build)
            if [ -d "$Z3GATEWAY_BUILD_DIR" ]; then
                echo "Z3Gateway build directory already exists."
                read -r -p "Do you want to delete it and proceed? (y/n): " answer
                if [ "$answer" = "y" ]; then
                    # Remove the existing directory and its contents
                    rm -r "$Z3GATEWAY_BUILD_DIR"
                else
                    echo "Z3Gateway build and copy of config cancelled."
                    exit 1
                fi
            fi
            
            echo "Creating the following directories:"
            echo "1. $Z3GATEWAY_BUILD_DIR"
            echo "2. $Z3GATEWAY_RUN_DIR"

            mkdir "$Z3GATEWAY_BUILD_DIR"
            mkdir "$Z3GATEWAY_RUN_DIR"

            echo "Moving to Z3Gateway Project directory, $Z3GATEWAY_PROJECT_DIR"
            cd "$Z3GATEWAY_PROJECT_DIR" || exit

            echo "Building Z3Gateway project using makefile, $Z3GATEWAY_MAKEFILE"
            make -f "$Z3GATEWAY_MAKEFILE"

            echo "Moving back to setup script directory, $CURRENT_DIR"
            cd "$CURRENT_DIR" || exit
            exit
            ;;
        -z3gateway-o|--z3gateway-open)
            echo "Moving to Z3Gateway Run directory, $Z3GATEWAY_RUN_DIR"
            cd "$Z3GATEWAY_RUN_DIR" || exit

            if [ -n "$2" ]; then
                Z3GATEWAY_APP_LOG_FILE="$Z3GATEWAY_RUN_DIR/$2"
            # echo "Running Zigbeed application: $Z3GATEWAY_APP -p /dev/ttyZigbeeNCP -t 0 2>&1 | tee $2"
            # sudo "$Z3GATEWAY_APP" -p /dev/ttyZigbeeNCP -t 0 2>&1 | tee "$2"
                # echo "Running Zigbeed application: $Z3GATEWAY_APP -p /dev/ttyZigbeeNCP -t 0 2>&1 | tee $Z3GATEWAY_APP_LOG_FILE"
                # sudo "$Z3GATEWAY_APP" -p /dev/ttyZigbeeNCP -t 0 2>&1 | tee "$Z3GATEWAY_APP_LOG_FILE"
            fi

            echo "Running Zigbeed application: $Z3GATEWAY_APP -p /dev/ttyZigbeeNCP -t 0 2>&1 | tee $Z3GATEWAY_APP_LOG_FILE"
            sudo "$Z3GATEWAY_APP" -p /dev/ttyZigbeeNCP -t 0 2>&1 | tee "$Z3GATEWAY_APP_LOG_FILE"
            
            exit
            ;;
        *)
            echo "Unrecognized option '$1'"
            exit
            ;;
    esac
done