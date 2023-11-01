/***************************************************************************//**
 * @file
 * @brief
 *******************************************************************************
 * # License
 * <b>Copyright 2021 Silicon Laboratories Inc. www.silabs.com</b>
 *******************************************************************************
 *
 * The licensor of this software is Silicon Laboratories Inc. Your use of this
 * software is governed by the terms of Silicon Labs Master Software License
 * Agreement (MSLA) available at
 * www.silabs.com/about-us/legal/master-software-license-agreement. This
 * software is distributed to you in Source Code format and is governed by the
 * sections of the MSLA applicable to Source Code.
 *
 ******************************************************************************/

#ifdef SL_COMPONENT_CATALOG_PRESENT
#include "sl_component_catalog.h"
#endif

// Plugin inclusion macros (AppBuilder-generated) are mapped to the UC component presense macros
// Commented out lines correspond to plugins present in the AppBuilder-generared files for the
// given sample app that have no corresponding componenents enabled in the UC version of the app

// Z3Light Section

// #define EMBER_AF_PLUGIN_ADC
// #define EMBER_AF_PLUGIN_AES_CMAC
// #define EMBER_AF_PLUGIN_ANTENNA_STUB

#ifdef SL_CATALOG_ZIGBEE_BASIC_PRESENT
#define EMBER_AF_PLUGIN_BASIC
#endif

#ifdef SL_CATALOG_ZIGBEE_BINDING_TABLE_PRESENT
#define EMBER_AF_PLUGIN_BINDING_TABLE_LIBRARY
#endif

#ifdef SL_CATALOG_ZIGBEE_CCM_ENCRYPTION_PRESENT
#define EMBER_AF_PLUGIN_CCM_ENCRYPTION
#endif

// #define EMBER_AF_PLUGIN_COEXISTENCE_STUB

#ifdef SL_CATALOG_ZIGBEE_COLOR_CONTROL_SERVER_PRESENT
#define EMBER_AF_PLUGIN_COLOR_CONTROL_SERVER
#endif

#ifdef SL_CATALOG_ZIGBEE_COUNTERS_PRESENT
#define EMBER_AF_PLUGIN_COUNTERS
#endif

// #define EMBER_AF_PLUGIN_DEBUG_BASIC_LIBRARY
// #define EMBER_AF_PLUGIN_DEBUG_JTAG
// #define EMBER_AF_PLUGIN_EMBER_MINIMAL_PRINTF

#ifdef SL_CATALOG_ZIGBEE_FIND_AND_BIND_TARGET_PRESENT
#define EMBER_AF_PLUGIN_FIND_AND_BIND_TARGET
#endif

#ifdef SL_CATALOG_ZIGBEE_GP_PRESENT
#define EMBER_AF_PLUGIN_GP_LIBRARY
#endif

#ifdef SL_CATALOG_ZIGBEE_GREEN_POWER_CLIENT_PRESENT
#define EMBER_AF_PLUGIN_GREEN_POWER_CLIENT
#endif

#ifdef SL_CATALOG_ZIGBEE_GREEN_POWER_COMMON_PRESENT
#define EMBER_AF_PLUGIN_GREEN_POWER_COMMON
#endif

#ifdef SL_CATALOG_ZIGBEE_GROUPS_SERVER_PRESENT
#define EMBER_AF_PLUGIN_GROUPS_SERVER
#endif

// #define EMBER_AF_PLUGIN_HAL_LIBRARY
// #define EMBER_AF_PLUGIN_HEARTBEAT

#ifdef SL_CATALOG_ZIGBEE_ZLL_IDENTIFY_SERVER_PRESENT
#define EMBER_AF_PLUGIN_IDENTIFY
#endif

#ifdef SL_CATALOG_ZIGBEE_INSTALL_CODE_PRESENT
#define EMBER_AF_PLUGIN_INSTALL_CODE_LIBRARY
#endif

#ifdef SL_CATALOG_ZIGBEE_INTERPAN_PRESENT
#define EMBER_AF_PLUGIN_INTERPAN
#endif

#ifdef SL_CATALOG_ZIGBEE_LEVEL_CONTROL_PRESENT
#define EMBER_AF_PLUGIN_LEVEL_CONTROL
#endif

// #define EMBER_AF_PLUGIN_MBEDTLS

#ifdef SL_CATALOG_ZIGBEE_NETWORK_CREATOR_PRESENT
#define EMBER_AF_PLUGIN_NETWORK_CREATOR
#endif

#ifdef SL_CATALOG_ZIGBEE_NETWORK_CREATOR_SECURITY_PRESENT
#define EMBER_AF_PLUGIN_NETWORK_CREATOR_SECURITY
#endif

#ifdef SL_CATALOG_ZIGBEE_NETWORK_STEERING_PRESENT
#define EMBER_AF_PLUGIN_NETWORK_STEERING
#endif

// #define EMBER_AF_PLUGIN_NVM3
// #define EMBER_AF_PLUGIN_NVM3_SIMULATION

#ifdef SL_CATALOG_ZIGBEE_ON_OFF_PRESENT
#define EMBER_AF_PLUGIN_ON_OFF
#endif

// #define EMBER_AF_PLUGIN_PA
// #define EMBER_AF_PLUGIN_PTI
// #define EMBER_AF_PLUGIN_RAIL_LIBRARY

#ifdef SL_CATALOG_ZIGBEE_REPORTING_PRESENT
#define EMBER_AF_PLUGIN_REPORTING
#endif

#ifdef SL_CATALOG_ZIGBEE_SCAN_DISPATCH_PRESENT
#define EMBER_AF_PLUGIN_SCAN_DISPATCH
#endif

#ifdef SL_CATALOG_ZIGBEE_SCENES_PRESENT
#define EMBER_AF_PLUGIN_SCENES
#endif

// #define EMBER_AF_PLUGIN_SERIAL
// #define EMBER_AF_PLUGIN_SIM_EEPROM2_TO_NVM3_UPGRADE_STUB
// #define EMBER_AF_PLUGIN_SIMPLE_MAIN

#ifdef SL_CATALOG_ZIGBEE_SOURCE_ROUTE_PRESENT
#define EMBER_AF_PLUGIN_SOURCE_ROUTE_LIBRARY
#endif

// #define EMBER_AF_PLUGIN_STACK_DIAGNOSTICS

#ifdef SL_CATALOG_ZIGBEE_STRONG_RANDOM_PRESENT
#define EMBER_AF_PLUGIN_STRONG_RANDOM
#endif

#ifdef SL_CATALOG_ZIGBEE_UPDATE_TC_LINK_KEY_PRESENT
#define EMBER_AF_PLUGIN_UPDATE_TC_LINK_KEY
#endif

#ifdef SL_CATALOG_ZIGBEE_ZCL_FRAMEWORK_CORE_PRESENT
#define EMBER_AF_PLUGIN_ZCL_FRAMEWORK_CORE
#endif

#ifdef SL_CATALOG_ZIGBEE_PRO_STACK_PRESENT
#define EMBER_AF_PLUGIN_ZIGBEE_PRO_LIBRARY
#endif

#ifdef SL_CATALOG_ZIGBEE_ZLL_COMMISSIONING_COMMON_PRESENT
#define EMBER_AF_PLUGIN_ZLL_COMMISSIONING_COMMON
#endif

#ifdef SL_CATALOG_ZIGBEE_ZLL_COMMISSIONING_SERVER_PRESENT
#define EMBER_AF_PLUGIN_ZLL_COMMISSIONING_SERVER
#endif

#ifdef SL_CATALOG_ZIGBEE_ZLL_IDENTIFY_SERVER_PRESENT
#define EMBER_AF_PLUGIN_ZLL_IDENTIFY_SERVER
#endif

#ifdef SL_CATALOG_ZIGBEE_ZLL_LEVEL_CONTROL_SERVER_PRESENT
#define EMBER_AF_PLUGIN_ZLL_LEVEL_CONTROL_SERVER
#endif

// #define EMBER_AF_PLUGIN_ZLL_LIBRARY

#ifdef SL_CATALOG_ZIGBEE_ZLL_ON_OFF_SERVER_PRESENT
#define EMBER_AF_PLUGIN_ZLL_ON_OFF_SERVER
#endif

#ifdef SL_CATALOG_ZIGBEE_ZLL_SCENES_SERVER_PRESENT
#define EMBER_AF_PLUGIN_ZLL_SCENES_SERVER
#endif

#ifdef SL_CATALOG_ZIGBEE_ZLL_UTILITY_SERVER_PRESENT
#define EMBER_AF_PLUGIN_ZLL_UTILITY_SERVER
#endif

// Z3Switch Section

// #define EMBER_AF_PLUGIN_ADC
// #define EMBER_AF_PLUGIN_ANTENNA_STUB

#ifdef SL_CATALOG_ZIGBEE_BASIC_PRESENT
#define EMBER_AF_PLUGIN_BASIC
#endif

#ifdef SL_CATALOG_ZIGBEE_BINDING_TABLE_PRESENT
#define EMBER_AF_PLUGIN_BINDING_TABLE_LIBRARY
#endif

#ifdef SL_CATALOG_ZIGBEE_CCM_ENCRYPTION_PRESENT
#define EMBER_AF_PLUGIN_CCM_ENCRYPTION
#endif

// #define EMBER_AF_PLUGIN_COEXISTENCE_STUB

#ifdef SL_CATALOG_ZIGBEE_COUNTERS_PRESENT
#define EMBER_AF_PLUGIN_COUNTERS
#endif

// #define EMBER_AF_PLUGIN_DEBUG_BASIC_LIBRARY
// #define EMBER_AF_PLUGIN_DEBUG_JTAG
// #define EMBER_AF_PLUGIN_EEPROM
// #define EMBER_AF_PLUGIN_EMBER_MINIMAL_PRINTF

#ifdef SL_CATALOG_ZIGBEE_END_DEVICE_SUPPORT_PRESENT
#define EMBER_AF_PLUGIN_END_DEVICE_SUPPORT
#endif

#ifdef SL_CATALOG_ZIGBEE_FIND_AND_BIND_INITIATOR_PRESENT
#define EMBER_AF_PLUGIN_FIND_AND_BIND_INITIATOR
#endif

// #define EMBER_AF_PLUGIN_HAL_LIBRARY

#ifdef SL_CATALOG_ZIGBEE_IDENTIFY_PRESENT
#define EMBER_AF_PLUGIN_IDENTIFY
#endif

// #define EMBER_AF_PLUGIN_IDLE_SLEEP
// #define EMBER_AF_PLUGIN_INSTALL_CODE_LIBRARY

#ifdef SL_CATALOG_ZIGBEE_INTERPAN_PRESENT
#define EMBER_AF_PLUGIN_INTERPAN
#endif

// #define EMBER_AF_PLUGIN_MBEDTLS

#ifdef SL_CATALOG_ZIGBEE_NETWORK_STEERING_PRESENT
#define EMBER_AF_PLUGIN_NETWORK_STEERING
#endif

// #define EMBER_AF_PLUGIN_NVM3
// #define EMBER_AF_PLUGIN_NVM3_SIMULATION
// #define EMBER_AF_PLUGIN_PA

#ifdef SL_CATALOG_ZIGBEE_PACKET_VALIDATE_PRESENT
#define EMBER_AF_PLUGIN_PACKET_VALIDATE_LIBRARY
#endif

// #define EMBER_AF_PLUGIN_PTI
// #define EMBER_AF_PLUGIN_RAIL_LIBRARY

#ifdef SL_CATALOG_ZIGBEE_SCAN_DISPATCH_PRESENT
#define EMBER_AF_PLUGIN_SCAN_DISPATCH
#endif

#ifdef SL_CATALOG_ZIGBEE_SCENES_CLIENT_PRESENT
#define EMBER_AF_PLUGIN_SCENES_CLIENT
#endif

// #define EMBER_AF_PLUGIN_SERIAL
// #define EMBER_AF_PLUGIN_SIM_EEPROM2_TO_NVM3_UPGRADE_STUB
// #define EMBER_AF_PLUGIN_SIMPLE_MAIN

#ifdef SL_CATALOG_ZIGBEE_SOURCE_ROUTE_PRESENT
#define EMBER_AF_PLUGIN_SOURCE_ROUTE_LIBRARY
#endif

#ifdef SL_CATALOG_ZIGBEE_STRONG_RANDOM_PRESENT
#define EMBER_AF_PLUGIN_STRONG_RANDOM
#endif

#ifdef SL_CATALOG_ZIGBEE_UPDATE_TC_LINK_KEY_PRESENT
#define EMBER_AF_PLUGIN_UPDATE_TC_LINK_KEY
#endif

#ifdef SL_CATALOG_ZIGBEE_ZCL_FRAMEWORK_CORE_PRESENT
#define EMBER_AF_PLUGIN_ZCL_FRAMEWORK_CORE
#endif

#ifdef SL_CATALOG_ZIGBEE_PRO_LEAF_STACK_PRESENT
#define EMBER_AF_PLUGIN_ZIGBEE_PRO_LEAF_LIBRARY
#endif

#ifdef SL_CATALOG_ZIGBEE_ZLL_COMMISSIONING_CLIENT_PRESENT
#define EMBER_AF_PLUGIN_ZLL_COMMISSIONING_CLIENT
#endif

#ifdef SL_CATALOG_ZIGBEE_ZLL_COMMISSIONING_SERVER_PRESENT
#define EMBER_AF_PLUGIN_ZLL_COMMISSIONING_SERVER
#endif

#ifdef SL_CATALOG_ZIGBEE_ZLL_COMMISSIONING_COMMON_PRESENT
#define EMBER_AF_PLUGIN_ZLL_COMMISSIONING_COMMON
#endif

// #define EMBER_AF_PLUGIN_ZLL_LIBRARY

#ifdef SL_CATALOG_ZIGBEE_ZLL_SCENES_CLIENT_PRESENT
#define EMBER_AF_PLUGIN_ZLL_SCENES_CLIENT
#endif

#ifdef SL_CATALOG_ZIGBEE_ZLL_UTILITY_CLIENT_PRESENT
#define EMBER_AF_PLUGIN_ZLL_UTILITY_CLIENT
#endif

#ifdef SL_CATALOG_ZIGBEE_CONCENTRATOR_PRESENT
#define EMBER_AF_PLUGIN_CONCENTRATOR
#endif

#ifdef SL_CATALOG_ZIGBEE_FRAGMENTATION_PRESENT
#define EMBER_AF_PLUGIN_FRAGMENTATION
#endif

#ifdef SL_CATALOG_ZIGBEE_FORM_AND_JOIN_PRESENT
#define EMBER_AF_PLUGIN_FORM_AND_JOIN
#endif

#ifdef SL_CATALOG_ZIGBEE_NETWORK_FIND_PRESENT
#define EMBER_AF_PLUGIN_NETWORK_FIND
#endif

#ifdef SL_CATALOG_ZIGBEE_EZMODE_COMMISSIONING_PRESENT
#define EMBER_AF_PLUGIN_EZMODE_COMMISSIONING
#endif
