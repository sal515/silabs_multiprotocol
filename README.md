# silabs_multiprotocol - # RSSI Test Setup

- This following setup instruction was tested on RPi4b+ Raspbian OS version:

    ```text
    terminal_command: lsb_release -a
    
    No LSB modules are available.
    Distributor ID: Raspbian
    Description:    Raspbian GNU/Linux 11 (bullseye)
    Release:        11
    Codename:       bullseye
    ```

<!-- TODO FIXME Update release version -->

- All the firmwares mentioned were created with Silicon Labs GSDKv4.3.2.

## Hardware

- DUT:
  - EFR32xG21 2.4 GHz 20 dBm Radio Board (BRD4180B Rev A02)
  
- Host Machine
  - Raspberry Pi
    - Commander & JLink & GSDK enabled using the setup.sh script

- Random MFGLIB packet sending node
  - EFR32MG12 2.4 GHz 19 dBm Radio Board (BRD4161A Rev A02)

## Setting up the Host - RPi

### Natively Compiling the Host Application on RPi - Using setup.sh

- Clone the branch to the rpi
  
  `TODO FIXME command to clone`

- Move to the Cloned directory

- Make the setup script executable

   `chmod +x setup.sh`

- Install commander on the RPi (option to flash the RCP/NCP FW from the RPi to the DUT)

  `./setup.sh -commander-s`

- Download and unpack the GSDK 4.3.2 on the Host machine:
  
  `./setup.sh -gsdk-du`

- Download, unpack and install CPCd on the Host machine:

    `./setup.sh -cpcd-dui`

- Build Zigbeed project provided in the `src` repository directory

  `./setup.sh -zigbeed-b`

- Build the Z3Gateway project provided in the `src` repository directory

   `./setup.sh -z3gateway-b`

## RCP RSSI test procedure

- Connect the DUT Board to the Host using USB cable (using UART)

- Flash RCP firmware to the DUT (using commander on RPi)

    `./setup.sh -flash-rcp`

  - Alternatively, flash the RCP firmware to the DUT board before connecting to the host
  - RCP firmware is provided in the `src` repository directory

- Flash Bootloader firmware to the DUT (using commander on RPi or from PC before connecting to the Host)
  - TODO FIXME Bootloader command
  - BTL firmware is provided in the `src` repository directory

- Create a (1st) terminal in vscode and execute the following to run `CPCd`:
  
  `./setup.sh -cpcd-o`

- Create another (2nd) terminal in vscode and execute the following to run `Socat`:

  `./setup.sh -socat-o`

- Create (3rd) terminal in vscode and execute the following to run `Zigbeed`

  `./setup.sh -zigbeed-o`

- Create (4th) terminal in vscode and execute the following to run the `Z3Gateway in RCP mode`:

  `./setup.sh  -z3gateway-rcp-o`

- The logs from the RCP z3gateway mode shoud be automatically stored in the **`run`** directory of the Z3Gateway Project in the PATH=TODOFIXME

- Flash the firmware with MFGLIB library to the Random Packet Sender node:
  - The sender node needs to be connected to the PC - to access the CLI and to send the RANDOM packets using the following commands.
  
  - Initialization of the MFGLIB to send packets
    - `TODO FIXME`
  - Commands to send the MFGLIB packets
    - `TODO FIXME`

- Our goal is to observe and compare the RSSI values seen in the Z3Gateway logs with and without transmission in the air.
  - TODO FIXME

## NCP RSSI test procedure

- Terminate all the programs that were running for the RCP test using

   `CTRL + C`

- Connect the DUT Board to the Host using USB cable (using UART)

- Flash NCP firmware to the DUT (using commander on RPi)

    `./setup.sh -flash-ncp`

  - Alternatively, flash the NCP firmware to the DUT board before connecting to the host
  - NCP firmware is provided in the `src` repository directory

- In one of the terminals on the Host - start the NCP Gateway application using:

  `./setup.sh -z3gateway-ncp-o ttyACM0`

  - Please note: Typically the port is ttyACM0 sometimes it switches to ttyACM1

- The logs from the NCP Z3Gateway mode shoud be automatically stored in the **`run`** directory of the Z3Gateway Project in the PATH=TODO FIXME

- Use the sender Node with the MFGLIG library to send random packets in the controlled enviornment
  - Commands to send the MFGLIB packets
    - `TODO FIXME`

- Our goal is to observe and compare the RSSI values seen in the Z3Gateway logs with and without transmission in the air.
  - TODO FIXME
