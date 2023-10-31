#!/bin/bash

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

            # cmake and make the cpcd project
            cmake -B "$CPCD_BUILD_DIR" "$CPCD_UNZIPPED_DIR_PATH"
            make -C "$CPCD_BUILD_DIR"

            


            exit
            ;;
        *)
            echo "Unrecognized option '$1'"
            exit
            ;;
    esac
done

