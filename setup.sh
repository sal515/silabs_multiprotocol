#!/bin/bash

# ========================== Base directory =============================================
CURRENT_DIR="$(pwd)"

# ========================== Config to Modify if required =============================================
COMMANDER_DOWNLOAD_LINK="https://www.silabs.com/documents/login/software/SimplicityCommander-Linux.zip"
COMMANDER_DIR_NAME="commander"
COMMANDER_ZIP_NAME="SimplicityCommander-Linux.zip"
COMMANDER_TAR_NAME="Commander-cli_linux_aarch32_1v16p0b1441.tar.bz"
COMMANDER_CLI_APP_NAME="commander-cli"

JLINK_32BIT_INSTALLER_NAME="JLink_Linux_V792n_arm.deb"
JLINK_32BIT_INSTALLER_FILE="$CURRENT_DIR/src/$JLINK_32BIT_INSTALLER_NAME"

NCP_FIRMWARE_FILE="$CURRENT_DIR/src/4180B_FW/4180B_mg21_432_ncp-uart-hw_RSSI.hex"
RCP_FIRMWARE_FILE="$CURRENT_DIR/src/4180B_FW/4180B_mg21_432_rcp-uart-802154_RSSI.hex"

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

Z3GATEWAY_PROJECT_NAME="lin32_432_Z3Gateway_RSSI"
Z3GATEWAY_PROJECT_DIR="$CURRENT_DIR/src/$Z3GATEWAY_PROJECT_NAME"
Z3GATEWAY_DEFAULT_RCP_LOG_NAME="Z3Gateway_RCP_Log.txt" # Located in Run directory
Z3GATEWAY_DEFAULT_NCP_LOG_NAME="Z3Gateway_NCP_Log.txt" # Located in Run directory

ZIGBEED_APP_FILE_RELPATH_FROM_BUILD="debug/$ZIGBEED_PROJECT_NAME"
Z3GATEWAY_APP_FILE_RELPATH_FROM_BUILD="debug/$Z3GATEWAY_PROJECT_NAME"

# ========================== Typically no modification required =======================================

COMMANDER_DOWNLOAD_DIR="$CURRENT_DIR/$COMMANDER_DIR_NAME"
COMMANDER_ZIP_FILE="$COMMANDER_DOWNLOAD_DIR/$COMMANDER_ZIP_NAME"
COMMANDER_TAR_FILE="$COMMANDER_DOWNLOAD_DIR/$(basename $COMMANDER_ZIP_NAME .zip)/$COMMANDER_TAR_NAME"
COMMANDER_CLI_DIR="$COMMANDER_DOWNLOAD_DIR/$COMMANDER_CLI_APP_NAME"
COMMANDER_CLI_APP="$COMMANDER_CLI_DIR/$COMMANDER_CLI_APP_NAME"

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

Z3GATEWAY_APP_RCP_LOG_FILE="$Z3GATEWAY_RUN_DIR/$Z3GATEWAY_DEFAULT_RCP_LOG_NAME"
Z3GATEWAY_APP_NCP_LOG_FILE="$Z3GATEWAY_RUN_DIR/$Z3GATEWAY_DEFAULT_NCP_LOG_NAME"

Z3GATEWAY_APP="$Z3GATEWAY_BUILD_DIR/$Z3GATEWAY_APP_FILE_RELPATH_FROM_BUILD"

# =========================================================================


while [[ $# -gt 0 ]]; do
    case $1 in
        -h|--help)
            echo "Help usage is not implemented yet"
            echo "Usage: $0 [options]"
            exit
            ;;
        -commander-s|--commander-setup)
            if [ -d "$COMMANDER_DOWNLOAD_DIR" ]; then
                echo "Commander directory already exists."
                read -r -p "Do you want to delete it and proceed? (y/n): " answer
                if [ "$answer" = "y" ]; then
                    # Remove the existing directory and its contents
                    rm -r "$COMMANDER_DOWNLOAD_DIR"
                else
                    echo "Commander download and installation cancelled."
                    exit 1
                fi
            fi

            echo "Installing JLink pre-req libraries"
            sudo apt-get install libxrender1 libxcb-render0 libxcb-render-util0 libxcb-shape0 libxcb-randr0 libxcb-xfixes0 libxcb-sync1 libxcb-shm0 libxcb-icccm4 libxcb-keysyms1 libxcb-image0 libxkbcommon0 libxkbcommon-x11-0 libx11-xcb1 libsm6 libice6
            sudo apt --fix-broken install

            echo "Installing JLink"
            sudo dpkg -i "$JLINK_32BIT_INSTALLER_FILE"

            echo "Creating the following directories:"
            echo "1. $COMMANDER_DOWNLOAD_DIR"

            mkdir "$COMMANDER_DOWNLOAD_DIR"

            echo "Downloading commander to $COMMANDER_DOWNLOAD_DIR"
            wget -P "$COMMANDER_DOWNLOAD_DIR" "$COMMANDER_DOWNLOAD_LINK"

            echo "Unpack commander [$COMMANDER_ZIP_FILE] & [$COMMANDER_TAR_FILE] to $COMMANDER_DOWNLOAD_DIR"
            unzip "$COMMANDER_ZIP_FILE" -d "$COMMANDER_DOWNLOAD_DIR"
            tar -xjf "$COMMANDER_TAR_FILE" -C "$COMMANDER_DOWNLOAD_DIR"

            echo "Command CLI application path: $COMMANDER_CLI_DIR"
            $COMMANDER_CLI_APP -v
            cd "$COMMANDER_CLI_DIR" || exit

            exit
            ;;
        -gsdk-du|--gsdk-download-unzip)
            if [ -d "$GSDK_UNZIPPED_DIR" ]; then
                echo "GSDK unzipped directory already exists."
                read -r -p "Do you want to delete it and proceed? (y/n): " answer
                if [ "$answer" = "y" ]; then
                    # Remove the existing directory and its contents
                    rm -r "$GSDK_UNZIPPED_DIR"
                else
                    echo "GSDK download and installation cancelled."
                    exit 1
                fi
            fi

            echo "GSDK downloading to directory: $GSDK_DOWNLOAD_DIR"
            wget -O "$GSDK_ZIP_DOWNLOAD_FILE" "$GSDK_DOWNLOAD_LINK"
            
            echo "GSDK unzipping to directory: $GSDK_UNZIPPED_DIR"
            unzip "$GSDK_ZIP_DOWNLOAD_FILE" -d "$GSDK_UNZIPPED_DIR"

            exit
            ;;
        -cpcd-dui|--cpcd-download-unzip-install)
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
        -zigbeed-o|--zigbeed-open)
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
        -z3gateway-rcp-o|--z3gateway-rcp-open)
            echo "Moving to Z3Gateway Run directory, $Z3GATEWAY_RUN_DIR"
            cd "$Z3GATEWAY_RUN_DIR" || exit

            if [ -n "$2" ]; then
                Z3GATEWAY_APP_RCP_LOG_FILE="$Z3GATEWAY_RUN_DIR/$2"
            fi

            echo "Running RCP Z3Gateway application: $Z3GATEWAY_APP -p /dev/ttyZigbeeNCP -t 0 2>&1 | tee $Z3GATEWAY_APP_RCP_LOG_FILE"
            sudo "$Z3GATEWAY_APP" -p /dev/ttyZigbeeNCP -t 0 2>&1 | tee "$Z3GATEWAY_APP_RCP_LOG_FILE"
            
            exit
            ;;
        -z3gateway-ncp-o|--z3gateway-ncp-open)
            echo "Moving to Z3Gateway Run directory, $Z3GATEWAY_RUN_DIR"
            cd "$Z3GATEWAY_RUN_DIR" || exit

            if [ -z "$2" ]; then
                echo "Device name argument missing - eg. \"ACM0\" or \"ACM1\""
                echo "cmd:[ls /dev/]"
                ls /dev/
                exit 1
            fi

            if [ -n "$3" ]; then
                Z3GATEWAY_APP_NCP_LOG_FILE="$Z3GATEWAY_RUN_DIR/$3"
            fi

            echo "Running NCP Z3Gateway application: $Z3GATEWAY_APP -n 0 -p /dev/$2 2>&1 | tee $Z3GATEWAY_APP_NCP_LOG_FILE"
            sudo "$Z3GATEWAY_APP" -n 0 -p "/dev/$2" 2>&1 | tee "$Z3GATEWAY_APP_NCP_LOG_FILE"
            
            exit
            ;;

        -flash-ncp|--flash-ncp-firmware)
            echo "Flashing NCP firmware to DUT board"
            "$COMMANDER_CLI_APP" flash "$NCP_FIRMWARE_FILE"
            exit
            ;;
        -flash-rcp|--flash-rcp-firmware)
            echo "Flashing RCP firmware to DUT board"
            "$COMMANDER_CLI_APP" flash "$RCP_FIRMWARE_FILE"
            exit
            ;;
        *)
            echo "Unrecognized option '$1'"
            exit
            ;;
    esac
done