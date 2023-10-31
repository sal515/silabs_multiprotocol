#!/bin/bash

GSDK_DOWNLOAD_LINK="https://github.com/SiliconLabs/gecko_sdk/releases/download/v4.3.2/gecko-sdk.zip"
GSDK_DOWNLOAD_DIR="$(pwd)"
GSDK_DOWNLOAD_ZIP_FILEPATH="$GSDK_DOWNLOAD_DIR/gsdk_download.zip"
GSDK_UNZIPPED_DIR_PATH="$GSDK_DOWNLOAD_DIR/gsdk_unzipped"

CPCD_DOWNLOAD_LINK="https://github.com/SiliconLabs/cpc-daemon/archive/refs/tags/v4.3.2.zip"
CPCD_DOWNLOAD_DIR="$(pwd)/cpcd"
CPCD_BUILD_DIR="$CPCD_DOWNLOAD_DIR/build"
CPCD_DOWNLOAD_FILE_NAME="$CPCD_DOWNLOAD_DIR/cpcd_download.zip"
CPCD_UNZIPPED_DIR_PATH="$CPCD_DOWNLOAD_DIR/cpc-daemon-4.3.2"




while [[ $# -gt 0 ]]; do
    case $1 in
        -h|--help)
            echo "Usage: $0 [options]"
            exit
            ;;
        -cpcd-di|--cpcd-download-install)
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
        -gsdk-du|--gsdk-download-unzip)
            echo "GSDK download and unzip to directory: $GSDK_DOWNLOAD_DIR"

            # download GSDK and unzip
            wget -O "$GSDK_DOWNLOAD_ZIP_FILEPATH" "$GSDK_DOWNLOAD_LINK"
            unzip "$GSDK_DOWNLOAD_ZIP_FILEPATH" -d "$GSDK_UNZIPPED_DIR_PATH"

            exit
            ;;
        -socat-o|--socat-open)
            echo "Socat command executing: socat pty,link=/dev/ttyZigbeeNCP pty,link=/tmp/ttyZigbeeNCP"
            sudo socat pty,link=/dev/ttyZigbeeNCP pty,link=/tmp/ttyZigbeeNCP
            echo "Socat exiting..."
            exit
            ;;
        *)
            echo "Unrecognized option '$1'"
            exit
            ;;
    esac
done