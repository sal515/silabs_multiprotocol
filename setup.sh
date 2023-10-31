#!/bin/bash

CURRENT_DIR="$(pwd)"


CPCD_CONFIG_FILE_PATH="$CURRENT_DIR/src/cpcd.conf"
ZIGBEED_SYSTEM_CONFIG_FILE_DIR="/usr/local/etc/"

GSDK_DOWNLOAD_LINK="https://github.com/SiliconLabs/gecko_sdk/releases/download/v4.3.2/gecko-sdk.zip"
GSDK_DOWNLOAD_DIR=$CURRENT_DIR
GSDK_DOWNLOAD_ZIP_FILEPATH="$GSDK_DOWNLOAD_DIR/gsdk_download.zip"
GSDK_UNZIPPED_DIR_PATH="$GSDK_DOWNLOAD_DIR/gsdk_unzipped"

GSDK_ZIGBEED_CONFIG_FILE_PATH="$GSDK_UNZIPPED_DIR_PATH/app/host/multiprotocol/zigbeed/multiprotocol-container/_artifacts/etc/zigbeed.conf"

CPCD_DOWNLOAD_LINK="https://github.com/SiliconLabs/cpc-daemon/archive/refs/tags/v4.3.2.zip"
CPCD_DOWNLOAD_DIR="$CURRENT_DIR/cpcd"
CPCD_BUILD_DIR="$CPCD_DOWNLOAD_DIR/build"
CPCD_DOWNLOAD_FILE_NAME="$CPCD_DOWNLOAD_DIR/cpcd_download.zip"
CPCD_UNZIPPED_DIR_PATH="$CPCD_DOWNLOAD_DIR/cpc-daemon-4.3.2"

ZIGBEED_PROJECT_NAME="lin32_432_zigbeed_RSSI"
ZIGBEED_PROJECT_PATH="$CURRENT_DIR/src/$ZIGBEED_PROJECT_NAME"
ZIGBEED_MAKEFILE_PATH="$ZIGBEED_PROJECT_PATH/$ZIGBEED_PROJECT_NAME.Makefile"
ZIGBEED_BUILD_PATH="$ZIGBEED_PROJECT_PATH/build"

ZIGBEED_APP="$ZIGBEED_BUILD_PATH/debug/$ZIGBEED_PROJECT_NAME"


Z3GATEWAY_PROJECT_NAME="lin32_432_Z3Gateway_RSSI"
Z3GATEWAY_PROJECT_PATH="$CURRENT_DIR/src/$Z3GATEWAY_PROJECT_NAME"
Z3GATEWAY_MAKEFILE_PATH="$Z3GATEWAY_PROJECT_PATH/$Z3GATEWAY_PROJECT_NAME.Makefile"
Z3GATEWAY_BUILD_PATH="$Z3GATEWAY_PROJECT_PATH/build"
Z3GATEWAY_RUN_PATH="$Z3GATEWAY_PROJECT_PATH/run"

Z3GATEWAY_APP_LOG_FILE_PATH="$Z3GATEWAY_RUN_PATH/Z3Gateway.txt"

Z3GATEWAY_APP="$Z3GATEWAY_BUILD_PATH/debug/$Z3GATEWAY_PROJECT_NAME"


while [[ $# -gt 0 ]]; do
    case $1 in
        -h|--help)
            echo "Usage: $0 [options]"
            exit
            ;;
        -cpcd-dui|--cpcd-download-install)
        # Reference: Section 3.1 to 3.3 
        # https://www.silabs.com/documents/public/application-notes/an1351-using-co-processor-communication_daemon.pdf
            echo "CPCd download starting to path: $CPCD_DOWNLOAD_DIR"
            if [ -d "$CPCD_DOWNLOAD_DIR" ]; then
                echo "CPCd directory already exists."
                read -p "Do you want to delete it and proceed? (y/n): " answer
                if [ "$answer" = "y" ]; then
                    # Remove the existing directory and its contents
                    rm -r "$CPCD_DOWNLOAD_DIR"
                else
                    echo "CPCd download and installation cancelled."
                    exit 1
                fi
            fi

            # Install pre-requisite libs for CPCD
            sudo apt-get install libmbedtls-dev 

            # Create the CPCD download directory
            mkdir "$CPCD_DOWNLOAD_DIR"
            mkdir "$CPCD_BUILD_DIR"

            # Download and unzip the cpcd zip directory
            wget -O "$CPCD_DOWNLOAD_FILE_NAME" "$CPCD_DOWNLOAD_LINK"
            unzip "$CPCD_DOWNLOAD_FILE_NAME" -d "$CPCD_DOWNLOAD_DIR"

            # cmake and make the cpcd project and then finally install
            cmake -B "$CPCD_BUILD_DIR" "$CPCD_UNZIPPED_DIR_PATH"
            sudo make -C "$CPCD_BUILD_DIR" install

            exit
            ;;
        -cpcd-o|--cpcd-open)
            sudo cpcd -c "$CPCD_CONFIG_FILE_PATH"
            exit
            ;;

        -gsdk-du|--gsdk-download-unzip)
            echo "GSDK download and unzip to directory: $GSDK_DOWNLOAD_DIR"

            # download GSDK and unzip
            wget -O "$GSDK_DOWNLOAD_ZIP_FILEPATH" "$GSDK_DOWNLOAD_LINK"
            unzip "$GSDK_DOWNLOAD_ZIP_FILEPATH" -d "$GSDK_UNZIPPED_DIR_PATH"

            exit
            ;;
        -socat-o|--socat-open)
            echo "Socat program starting: socat pty,link=/dev/ttyZigbeeNCP pty,link=/tmp/ttyZigbeeNCP"
            sudo socat pty,link=/dev/ttyZigbeeNCP pty,link=/tmp/ttyZigbeeNCP
            echo "Socat exiting..."
            exit
            ;;
        -zigbeed-b|--zigbeed-build)
            echo "Building Zigbeed..."
            if [ -d "$ZIGBEED_BUILD_PATH" ]; then
                echo "Zigbeed build directory already exists."
                read -p "Do you want to delete it and proceed? (y/n): " answer
                if [ "$answer" = "y" ]; then
                    # Remove the existing directory and its contents
                    rm -r "$ZIGBEED_BUILD_PATH"
                else
                    echo "Zigbeed build and copy of config cancelled."
                    exit 1
                fi
            fi

            mkdir "$ZIGBEED_BUILD_PATH"
            cd "$ZIGBEED_PROJECT_PATH"
            make -f "$ZIGBEED_MAKEFILE_PATH" 
            cd "$CURRENT_DIR"
            sudo cp $GSDK_ZIGBEED_CONFIG_FILE_PATH $ZIGBEED_SYSTEM_CONFIG_FILE_DIR
            exit
            ;;
        -zigbeed-o|--zigbeed-o)
            sudo $ZIGBEED_APP -v
            exit
            ;;
        -z3gateway-b|--z3gateway-build)
            echo "Building Z3Gateway..."
            if [ -d "$Z3GATEWAY_BUILD_PATH" ]; then
                echo "Z3Gateway build directory already exists."
                read -p "Do you want to delete it and proceed? (y/n): " answer
                if [ "$answer" = "y" ]; then
                    # Remove the existing directory and its contents
                    rm -r "$Z3GATEWAY_BUILD_PATH"
                else
                    echo "Z3Gateway build and copy of config cancelled."
                    exit 1
                fi
            fi
            
            mkdir "$Z3GATEWAY_BUILD_PATH"
            mkdir "$Z3GATEWAY_RUN_PATH"

            cd "$Z3GATEWAY_PROJECT_PATH"
            make -f "$Z3GATEWAY_MAKEFILE_PATH" 
            cd "$CURRENT_DIR"
            exit
            ;;
        -z3gateway-o|--z3gateway-open)
            cd "$Z3GATEWAY_RUN_PATH"
            sudo $Z3GATEWAY_APP -p /dev/ttyZigbeeNCP -t 0 2>&1 | tee $Z3GATEWAY_APP_LOG_FILE_PATH
            exit
            ;;
        *)
            echo "Unrecognized option '$1'"
            exit
            ;;
    esac
done