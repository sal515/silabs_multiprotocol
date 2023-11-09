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

NCP_FIRMWARE_FILE="$CURRENT_DIR/src/test_4180A_ncp-uart-hw_rssi_offset.hex"
RCP_FIRMWARE_FILE="$CURRENT_DIR/src/test_rcp-uart-802154-blehci_4180A.hex"
BTL_FIRMWARE_FILE="$CURRENT_DIR/src/test_4180A_bootloader-uart-xmodem.hex"

GSDK_DOWNLOAD_LINK="https://github.com/SiliconLabs/gecko_sdk/releases/download/v4.3.2/gecko-sdk.zip"
GSDK_DOWNLOAD_DIR=$CURRENT_DIR
GSDK_UNZIPPED_DIR="$CURRENT_DIR/gsdk_unzipped"

SLC_DOWNLOAD_LINK="https://www.silabs.com/documents/login/software/slc_cli_linux.zip"
SLC_DOWNLOAD_DIR=$CURRENT_DIR
SLC_UNZIPPED_DIR="$CURRENT_DIR/slc_cli_unzipped"

CPCD_DOWNLOAD_LINK="https://github.com/SiliconLabs/cpc-daemon/archive/refs/tags/v4.3.2.zip"
CPCD_DOWNLOAD_DIR="$CURRENT_DIR/cpcd"
CPCD_UNZIP_DIR_NAME="cpc-daemon-4.3.2"
CPCD_CONFIG_FILE="$CURRENT_DIR/src/cpcd.conf"

ZIGBEED_PROJECT_NAME="test_lin32_zigbeed"
ZIGBEED_PROJECT_DIR="$CURRENT_DIR/src/$ZIGBEED_PROJECT_NAME"
ZIGBEED_CONFIG_FILE="src/zigbeed.conf"

Z3GATEWAY_PROJECT_NAME="test_lin32_Z3Gateway"
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
SLC_CLI_ZIP_DOWNLOAD_FILE="$SLC_DOWNLOAD_DIR/slc_download.zip"

GSDK_ZIGBEED_CONFIG_FILE="$ZIGBEED_CONFIG_FILE"
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

COMMANDER_REQUIRED_LIBRARIES=("libxrender1" "libxcb-render0" "libxcb-render-util0" "libxcb-shape0" "libxcb-randr0" "libxcb-xfixes0" "libxcb-sync1" "libxcb-shm0" "libxcb-icccm4" "libxcb-keysyms1" "libxcb-image0" "libxkbcommon0" "libxkbcommon-x11-0" "libx11-xcb1" "libsm6" "libice6")
CPCD_REQUIRED_LIBRARIES=("libmbedtls-dev" "cmake")
SOCAT_REQUIRED_LIBRARIES=("socat")

# ========================== Functions ====================================

# Function to handle directory cleanup and proceed prompt
handle_directory_cleanup() {
    local dir_to_check="$1"
    local confirmation_message="$2"

    if [ -d "$dir_to_check" ]; then
        echo "$confirmation_message"
        read -r -p "Do you want to delete it and proceed? (y/n): " answer
        if [ "$answer" = "y" ]; then
            # Remove the existing directory and its contents
            rm -rf "$dir_to_check"
        else
            echo "Operation cancelled."
            exit 1
        fi
    fi
}

# Function to install Debian packages
install_apt_packages() {
    local package_list=("$@")  # Get the list of package names from the function's parameters
    for package in "${package_list[@]}"; do
        if dpkg -l | grep -q "ii  $package "; then
            echo "$package is already installed."
        else
            echo "Installing $package..."
            sudo apt-get install -y "$package"
        fi
    done
}

# ========================== Functions ====================================

while [[ $# -gt 0 ]]; do
    case $1 in
        -h|--help)
            echo "Help usage is not implemented yet"
            echo "Usage: $0 [options]"
            exit
            ;;
        -commander-s|--commander-setup)
            handle_directory_cleanup "$COMMANDER_DOWNLOAD_DIR" "Commander directory already exists."

            echo "Installing JLink pre-req libraries"
            # sudo apt-get -y install libxrender1 libxcb-render0 libxcb-render-util0 libxcb-shape0 libxcb-randr0 libxcb-xfixes0 libxcb-sync1 libxcb-shm0 libxcb-icccm4 libxcb-keysyms1 libxcb-image0 libxkbcommon0 libxkbcommon-x11-0 libx11-xcb1 libsm6 libice6
            install_apt_packages "${COMMANDER_REQUIRED_LIBRARIES[@]}"
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
        -slc-dui|--slc-cli-download-unzip-install)
            handle_directory_cleanup "$SLC_UNZIPPED_DIR" "SLC CLI unzipped directory already exists."

            echo "SLC CLI downloading to directory: $SLC_DOWNLOAD_DIR"
            wget -O "$SLC_CLI_ZIP_DOWNLOAD_FILE" "$SLC_DOWNLOAD_LINK"

            echo "SLC CLI unzipping to directory: $SLC_UNZIPPED_DIR"
            unzip "$SLC_CLI_ZIP_DOWNLOAD_FILE" -d "$SLC_UNZIPPED_DIR"




            exit
            ;;        
        -gsdk-du|--gsdk-download-unzip)
            handle_directory_cleanup "$GSDK_UNZIPPED_DIR" "GSDK unzipped directory already exists."

            echo "GSDK downloading to directory: $GSDK_DOWNLOAD_DIR"
            wget -O "$GSDK_ZIP_DOWNLOAD_FILE" "$GSDK_DOWNLOAD_LINK"
            
            echo "GSDK unzipping to directory: $GSDK_UNZIPPED_DIR"
            unzip "$GSDK_ZIP_DOWNLOAD_FILE" -d "$GSDK_UNZIPPED_DIR"

            exit
            ;;
        -cpcd-dui|--cpcd-download-unzip-install)
        # Reference: Section 3.1 to 3.3 
        # https://www.silabs.com/documents/public/application-notes/an1351-using-co-processor-communication_daemon.pdf
            handle_directory_cleanup "$CPCD_DOWNLOAD_DIR" "CPCd directory already exists. [$CPCD_DOWNLOAD_DIR]"

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
            install_apt_packages "${CPCD_REQUIRED_LIBRARIES[@]}"

            echo "cmake CPCd and then install in the directory: $CPCD_BUILD_DIR"
            cmake -B "$CPCD_BUILD_DIR" "$CPCD_UNZIPPED_DIR"
            sudo make -C "$CPCD_BUILD_DIR" install
            sudo ldconfig

            exit
            ;;
        -cpcd-o|--cpcd-open)
            echo "Running cpcd with config_file=$CPCD_CONFIG_FILE"
            sudo cpcd -c "$CPCD_CONFIG_FILE"
            exit
            ;;
        -socat-o|--socat-open)
            install_apt_packages "${SOCAT_REQUIRED_LIBRARIES[@]}"
            echo "Socat program starting: cmd:[socat pty,link=/dev/ttyZigbeeNCP pty,link=/tmp/ttyZigbeeNCP]"
            sudo socat pty,link=/dev/ttyZigbeeNCP pty,link=/tmp/ttyZigbeeNCP
            echo "Socat exiting..."
            exit
            ;;
        -zigbeed-b|--zigbeed-build)
            handle_directory_cleanup "$ZIGBEED_BUILD_DIR" "Zigbeed build directory already exists."

            echo "Creating the following directories:"
            echo "1. $ZIGBEED_BUILD_DIR"

            mkdir "$ZIGBEED_BUILD_DIR"

            echo "Moving to Zigbeed Project directory, $ZIGBEED_PROJECT_DIR"
            cd "$ZIGBEED_PROJECT_DIR" || exit
            
            echo "Building Zigbeed project using makefile, $ZIGBEED_MAKEFILE"
            make -f "$ZIGBEED_MAKEFILE" 

            echo "Moving back to setup script directory, $CURRENT_DIR"
            cd "$CURRENT_DIR" || exit
            
            echo "Copy Zigbeed configuration file to $SYSTEM_ZIGBEED_CONFIG_DIR using sudo cp"
            sudo cp "$GSDK_ZIGBEED_CONFIG_FILE" "$SYSTEM_ZIGBEED_CONFIG_DIR"

            ls "$SYSTEM_ZIGBEED_CONFIG_DIR"

            exit
            ;;
        -zigbeed-o|--zigbeed-open)
            echo "Running Zigbeed application: $ZIGBEED_APP -v"
            sudo "$ZIGBEED_APP" -v
            exit
            ;;
        -z3gateway-b|--z3gateway-build)
            handle_directory_cleanup "$Z3GATEWAY_BUILD_DIR" "Z3Gateway build directory already exists."
            
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
        -flash-btl|--flash-bootloader-firmware)
            echo "Flashing bootloader firmware to DUT board"
            "$COMMANDER_CLI_APP" flash "$BTL_FIRMWARE_FILE"
            exit
            ;;
        *)
            echo "Unrecognized option '$1'"
            exit
            ;;
    esac
done