####################################################################
# Automatically-generated file. Do not edit!                       #
# Makefile Version 15                                              #
####################################################################

BASE_SDK_PATH = C:/Users/salma/SimplicityStudio/SDKs/gecko_sdk_2
UNAME:=$(shell $(POSIX_TOOL_PATH)uname -s | $(POSIX_TOOL_PATH)sed -e 's/^\(CYGWIN\).*/\1/' | $(POSIX_TOOL_PATH)sed -e 's/^\(MINGW\).*/\1/')
ifeq ($(UNAME),MINGW)
# Translate "C:/super" into "/C/super" for MinGW make.
SDK_PATH := /$(shell $(POSIX_TOOL_PATH)echo $(BASE_SDK_PATH) | sed s/://)
endif
SDK_PATH ?= $(BASE_SDK_PATH)
COPIED_SDK_PATH ?= gecko_sdk_4.3.2

# This uses the explicit build rules below
PROJECT_SOURCE_FILES =

C_SOURCE_FILES   += $(filter %.c, $(PROJECT_SOURCE_FILES))
CXX_SOURCE_FILES += $(filter %.cpp, $(PROJECT_SOURCE_FILES))
CXX_SOURCE_FILES += $(filter %.cc, $(PROJECT_SOURCE_FILES))
ASM_SOURCE_FILES += $(filter %.s, $(PROJECT_SOURCE_FILES))
ASM_SOURCE_FILES += $(filter %.S, $(PROJECT_SOURCE_FILES))
LIB_FILES        += $(filter %.a, $(PROJECT_SOURCE_FILES))

C_DEFS += \
 '-DSL_COMPONENT_CATALOG_PRESENT=1' \
 '-DPLATFORM_HEADER="platform-header.h"' \
 '-DEZSP_HOST=1' \
 '-DGATEWAY_APP=1' \
 '-DUC_BUILD=1' \
 '-DEZSP_ASH=1' \
 '-DEZSP_UART=1' \
 '-DUSE_ZAP_CONFIG=1' \
 '-DEZSP_APPLICATION_HAS_MFGLIB_HANDLER=1' \
 '-DCONFIGURATION_HEADER="app/framework/util/config.h"'

ASM_DEFS += \
 '-DSL_COMPONENT_CATALOG_PRESENT=1' \
 '-DPLATFORM_HEADER="platform-header.h"' \
 '-DEZSP_HOST=1' \
 '-DGATEWAY_APP=1' \
 '-DUC_BUILD=1' \
 '-DEZSP_ASH=1' \
 '-DEZSP_UART=1' \
 '-DUSE_ZAP_CONFIG=1' \
 '-DEZSP_APPLICATION_HAS_MFGLIB_HANDLER=1' \
 '-DCONFIGURATION_HEADER="app/framework/util/config.h"'

INCLUDES += \
 -Iconfig \
 -Iautogen \
 -I. \
 -I$(COPIED_SDK_PATH)/platform/service/cli/inc \
 -I$(COPIED_SDK_PATH)/platform/service/cli/src \
 -I$(COPIED_SDK_PATH)/platform/CMSIS/Core/Include \
 -I$(COPIED_SDK_PATH)/platform/emlib/inc \
 -I$(COPIED_SDK_PATH)/platform/emlib/host/inc \
 -I$(COPIED_SDK_PATH)/platform/common/inc \
 -I$(COPIED_SDK_PATH)/platform/service/iostream/inc \
 -I$(COPIED_SDK_PATH)/platform/service/legacy_common_ash/inc \
 -I$(COPIED_SDK_PATH)/platform/service/legacy_hal/inc \
 -I$(COPIED_SDK_PATH)/util/third_party/printf \
 -I$(COPIED_SDK_PATH)/util/third_party/printf/inc \
 -I$(COPIED_SDK_PATH)/util/silicon_labs/silabs_core \
 -I$(COPIED_SDK_PATH)/util/silicon_labs/silabs_core/event_queue \
 -I$(COPIED_SDK_PATH)/util/silicon_labs/silabs_core/memory_manager \
 -I$(COPIED_SDK_PATH)/platform/service/system/inc \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/address-table \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/basic \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/util/serial \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/service-function \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/color-control-server \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/concentrator \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/counters \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/debug-print \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ezmode-commissioning \
 -I$(COPIED_SDK_PATH)/. \
 -I$(COPIED_SDK_PATH)/protocol/zigbee \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/ezsp-host \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/util/gateway \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/util/ezsp \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/util/zigbee-framework \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/stack \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/stack/platform/host \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/stack/include \
 -I$(COPIED_SDK_PATH)/platform/radio/mac \
 -I$(COPIED_SDK_PATH)/platform/service/token_manager/inc \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/ezsp-host/ash \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/file-descriptor-dispatch \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/gateway \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/green-power-client \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/stack/gp \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/green-power-common \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/common \
 -I$(COPIED_SDK_PATH)/platform/service/legacy_host/inc \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/stack/config \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/stack/zll \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/stack/core \
 -I$(COPIED_SDK_PATH)/platform/service/legacy_printf/inc \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ias-zone-client \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/identify \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/level-control \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/manufacturing-library-cli \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator-security \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-steering \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/on-off \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-common \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server-policy \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-storage-simple \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-storage-common \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-storage-posix-filesystem \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/poll-control-client \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/reporting \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/scan-dispatch \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/stack/security \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/signature-decode \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/simple-metering-client \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/test-harness \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/xncp-test-harness \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/time-server \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-broadcast \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-unicast \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/update-tc-link-key \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/include \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/security \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/util/counters \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/util/common \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/util/security \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/zcl-framework-core

GROUP_START =
GROUP_END =

PROJECT_LIBS = \
 -lpthread \
 -lc \
 -lm

LIBS += $(GROUP_START) $(PROJECT_LIBS) $(GROUP_END)

LIB_FILES += $(filter %.a, $(PROJECT_LIBS))

C_FLAGS += \
 -std=c99 \
 -Wall \
 -Wextra \
 -Os \
 -Wno-unused-parameter \
 -Wno-missing-field-initializers \
 -Wno-missing-braces

CXX_FLAGS += \
 -std=c++11 \
 -Wall \
 -Wextra \
 -Os \
 -Wno-unused-parameter \
 -Wno-missing-field-initializers \
 -Wno-missing-braces

ASM_FLAGS += \

LD_FLAGS += \


####################################################################
# Pre/Post Build Rules                                             #
####################################################################
pre-build:
	# No pre-build defined

post-build: $(OUTPUT_DIR)/$(PROJECTNAME).out
	# No post-build defined

####################################################################
# SDK Build Rules                                                  #
####################################################################
$(OUTPUT_DIR)/sdk/platform/common/src/sl_assert.o: $(COPIED_SDK_PATH)/platform/common/src/sl_assert.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/common/src/sl_assert.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/common/src/sl_assert.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_assert.d
OBJS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_assert.o

$(OUTPUT_DIR)/sdk/platform/common/src/sl_slist.o: $(COPIED_SDK_PATH)/platform/common/src/sl_slist.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/common/src/sl_slist.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/common/src/sl_slist.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_slist.d
OBJS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_slist.o

$(OUTPUT_DIR)/sdk/platform/common/src/sl_string.o: $(COPIED_SDK_PATH)/platform/common/src/sl_string.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/common/src/sl_string.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/common/src/sl_string.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_string.d
OBJS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_string.o

$(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli.o: $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli.o

$(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_arguments.o: $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_arguments.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_arguments.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_arguments.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_arguments.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_arguments.o

$(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_command.o: $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_command.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_command.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_command.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_command.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_command.o

$(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_input.o: $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_input.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_input.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_input.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_input.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_input.o

$(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_io.o: $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_io.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_io.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_io.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_io.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_io.o

$(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_threaded_host.o: $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_threaded_host.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_threaded_host.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_threaded_host.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_threaded_host.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_threaded_host.o

$(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_tokenize.o: $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_tokenize.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_tokenize.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_tokenize.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_tokenize.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_tokenize.o

$(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream.o: $(COPIED_SDK_PATH)/platform/service/iostream/src/sl_iostream.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/iostream/src/sl_iostream.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/iostream/src/sl_iostream.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream.o

$(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_stdio.o: $(COPIED_SDK_PATH)/platform/service/iostream/src/sl_iostream_stdio.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/iostream/src/sl_iostream_stdio.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/iostream/src/sl_iostream_stdio.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_stdio.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_stdio.o

$(OUTPUT_DIR)/sdk/platform/service/legacy_common_ash/src/ash-common.o: $(COPIED_SDK_PATH)/platform/service/legacy_common_ash/src/ash-common.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/legacy_common_ash/src/ash-common.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/legacy_common_ash/src/ash-common.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/legacy_common_ash/src/ash-common.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/legacy_common_ash/src/ash-common.o

$(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/crc.o: $(COPIED_SDK_PATH)/platform/service/legacy_hal/src/crc.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/legacy_hal/src/crc.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/legacy_hal/src/crc.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/crc.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/crc.o

$(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/ember-printf-convert.o: $(COPIED_SDK_PATH)/platform/service/legacy_hal/src/ember-printf-convert.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/legacy_hal/src/ember-printf-convert.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/legacy_hal/src/ember-printf-convert.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/ember-printf-convert.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/ember-printf-convert.o

$(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/micro_host.o: $(COPIED_SDK_PATH)/platform/service/legacy_hal/src/micro_host.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/legacy_hal/src/micro_host.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/legacy_hal/src/micro_host.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/micro_host.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/micro_host.o

$(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/random.o: $(COPIED_SDK_PATH)/platform/service/legacy_hal/src/random.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/legacy_hal/src/random.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/legacy_hal/src/random.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/random.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/random.o

$(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/system-timer.o: $(COPIED_SDK_PATH)/platform/service/legacy_hal/src/system-timer.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/legacy_hal/src/system-timer.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/legacy_hal/src/system-timer.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/system-timer.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/system-timer.o

$(OUTPUT_DIR)/sdk/platform/service/legacy_host/src/token.o: $(COPIED_SDK_PATH)/platform/service/legacy_host/src/token.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/legacy_host/src/token.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/legacy_host/src/token.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/legacy_host/src/token.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/legacy_host/src/token.o

$(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_init.o: $(COPIED_SDK_PATH)/platform/service/system/src/sl_system_init.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/system/src/sl_system_init.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/system/src/sl_system_init.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_init.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_init.o

$(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_process_action.o: $(COPIED_SDK_PATH)/platform/service/system/src/sl_system_process_action.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/system/src/sl_system_process_action.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/system/src/sl_system_process_action.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_process_action.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_process_action.o

$(OUTPUT_DIR)/sdk/platform/service/token_manager/src/sl_token_def.o: $(COPIED_SDK_PATH)/platform/service/token_manager/src/sl_token_def.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/token_manager/src/sl_token_def.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/token_manager/src/sl_token_def.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/token_manager/src/sl_token_def.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/token_manager/src/sl_token_def.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/ash/ash-host-ui.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/ezsp-host/ash/ash-host-ui.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/ezsp-host/ash/ash-host-ui.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/ezsp-host/ash/ash-host-ui.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/ash/ash-host-ui.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/ash/ash-host-ui.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/ash/ash-host.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/ezsp-host/ash/ash-host.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/ezsp-host/ash/ash-host.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/ezsp-host/ash/ash-host.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/ash/ash-host.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/ash/ash-host.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/ezsp-host-io.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/ezsp-host/ezsp-host-io.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/ezsp-host/ezsp-host-io.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/ezsp-host/ezsp-host-io.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/ezsp-host-io.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/ezsp-host-io.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/ezsp-host-queues.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/ezsp-host/ezsp-host-queues.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/ezsp-host/ezsp-host-queues.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/ezsp-host/ezsp-host-queues.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/ezsp-host-queues.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/ezsp-host-queues.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/ezsp-host-ui.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/ezsp-host/ezsp-host-ui.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/ezsp-host/ezsp-host-ui.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/ezsp-host/ezsp-host-ui.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/ezsp-host-ui.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/ezsp-host-ui.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/core-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli/core-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli/core-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli/core-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/core-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/core-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/network-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli/network-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli/network-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli/network-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/network-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/network-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/option-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli/option-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli/option-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli/option-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/option-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/option-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/security-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli/security-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli/security-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli/security-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/security-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/security-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/zcl-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli/zcl-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli/zcl-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli/zcl-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/zcl-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/zcl-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/zdo-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli/zdo-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli/zdo-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli/zdo-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/zdo-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/zdo-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/common/zigbee_app_framework_common.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/common/zigbee_app_framework_common.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/common/zigbee_app_framework_common.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/common/zigbee_app_framework_common.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/common/zigbee_app_framework_common.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/common/zigbee_app_framework_common.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/common/zigbee_app_framework_host_cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/common/zigbee_app_framework_host_cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/common/zigbee_app_framework_host_cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/common/zigbee_app_framework_host_cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/common/zigbee_app_framework_host_cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/common/zigbee_app_framework_host_cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/ezsp/ezsp-cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/ezsp/ezsp-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/ezsp/ezsp-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/ezsp/ezsp-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/ezsp/ezsp-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/ezsp/ezsp-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/file-descriptor-dispatch/file-descriptor-dispatch-cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/file-descriptor-dispatch/file-descriptor-dispatch-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/file-descriptor-dispatch/file-descriptor-dispatch-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/file-descriptor-dispatch/file-descriptor-dispatch-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/file-descriptor-dispatch/file-descriptor-dispatch-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/file-descriptor-dispatch/file-descriptor-dispatch-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/file-descriptor-dispatch/file-descriptor-dispatch.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/file-descriptor-dispatch/file-descriptor-dispatch.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/file-descriptor-dispatch/file-descriptor-dispatch.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/file-descriptor-dispatch/file-descriptor-dispatch.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/file-descriptor-dispatch/file-descriptor-dispatch.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/file-descriptor-dispatch/file-descriptor-dispatch.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/gateway/backchannel-support.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/gateway/backchannel-support.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/gateway/backchannel-support.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/gateway/backchannel-support.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/gateway/backchannel-support.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/gateway/backchannel-support.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/gateway/gateway-cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/gateway/gateway-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/gateway/gateway-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/gateway/gateway-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/gateway/gateway-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/gateway/gateway-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/gateway/gateway-support-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/gateway/gateway-support-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/gateway/gateway-support-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/gateway/gateway-support-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/gateway/gateway-support-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/gateway/gateway-support-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/gateway/gateway-support.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/gateway/gateway-support.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/gateway/gateway-support.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/gateway/gateway-support.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/gateway/gateway-support.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/gateway/gateway-support.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/ncp-configuration/ncp-configuration.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/ncp-configuration/ncp-configuration.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/ncp-configuration/ncp-configuration.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/ncp-configuration/ncp-configuration.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/ncp-configuration/ncp-configuration.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/ncp-configuration/ncp-configuration.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/address-table/address-table-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/address-table/address-table-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/address-table/address-table-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/address-table/address-table-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/address-table/address-table-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/address-table/address-table-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/address-table/address-table.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/address-table/address-table.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/address-table/address-table.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/address-table/address-table.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/address-table/address-table.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/address-table/address-table.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/basic/basic-cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/basic/basic-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/basic/basic-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/basic/basic-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/basic/basic-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/basic/basic-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/basic/basic.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/basic/basic.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/basic/basic.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/basic/basic.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/basic/basic.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/basic/basic.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/color-control-server/color-control-server-cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/color-control-server/color-control-server-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/color-control-server/color-control-server-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/color-control-server/color-control-server-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/color-control-server/color-control-server-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/color-control-server/color-control-server-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/color-control-server/color-control-server.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/color-control-server/color-control-server.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/color-control-server/color-control-server.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/color-control-server/color-control-server.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/color-control-server/color-control-server.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/color-control-server/color-control-server.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/concentrator/concentrator-support-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/concentrator/concentrator-support-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/concentrator/concentrator-support-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/concentrator/concentrator-support-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/concentrator/concentrator-support-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/concentrator/concentrator-support-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/concentrator/concentrator-support.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/concentrator/concentrator-support.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/concentrator/concentrator-support.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/concentrator/concentrator-support.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/concentrator/concentrator-support.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/concentrator/concentrator-support.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/counters/counters-cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/counters/counters-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/counters/counters-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/counters/counters-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/counters/counters-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/counters/counters-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/counters/counters-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/counters/counters-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/counters/counters-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/counters/counters-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/counters/counters-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/counters/counters-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/counters/counters-host.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/counters/counters-host.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/counters/counters-host.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/counters/counters-host.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/counters/counters-host.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/counters/counters-host.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/counters/counters-ota-host.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/counters/counters-ota-host.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/counters/counters-ota-host.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/counters/counters-ota-host.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/counters/counters-ota-host.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/counters/counters-ota-host.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/debug-print/sl_zigbee_debug_print.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/debug-print/sl_zigbee_debug_print.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/debug-print/sl_zigbee_debug_print.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/debug-print/sl_zigbee_debug_print.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/debug-print/sl_zigbee_debug_print.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/debug-print/sl_zigbee_debug_print.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ez-mode-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ez-mode-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ez-mode-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ez-mode-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ez-mode-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ez-mode-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ez-mode.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ez-mode.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ez-mode.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ez-mode.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ez-mode.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ez-mode.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ezmode-commissioning-cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ezmode-commissioning-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ezmode-commissioning-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ezmode-commissioning-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ezmode-commissioning-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ezmode-commissioning-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/green-power-client/green-power-client.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/green-power-client/green-power-client.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/green-power-client/green-power-client.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/green-power-client/green-power-client.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/green-power-client/green-power-client.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/green-power-client/green-power-client.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/green-power-common/green-power-common.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/green-power-common/green-power-common.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/green-power-common/green-power-common.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/green-power-common/green-power-common.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/green-power-common/green-power-common.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/green-power-common/green-power-common.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ias-zone-client/ias-zone-client-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ias-zone-client/ias-zone-client-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ias-zone-client/ias-zone-client-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ias-zone-client/ias-zone-client-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ias-zone-client/ias-zone-client-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ias-zone-client/ias-zone-client-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ias-zone-client/ias-zone-client.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ias-zone-client/ias-zone-client.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ias-zone-client/ias-zone-client.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ias-zone-client/ias-zone-client.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ias-zone-client/ias-zone-client.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ias-zone-client/ias-zone-client.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/identify-feedback/identify-feedback.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/identify-feedback/identify-feedback.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/identify-feedback/identify-feedback.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/identify-feedback/identify-feedback.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/identify-feedback/identify-feedback.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/identify-feedback/identify-feedback.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/identify/identify-cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/identify/identify-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/identify/identify-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/identify/identify-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/identify/identify-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/identify/identify-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/identify/identify-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/identify/identify-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/identify/identify-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/identify/identify-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/identify/identify-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/identify/identify-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/identify/identify.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/identify/identify.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/identify/identify.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/identify/identify.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/identify/identify.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/identify/identify.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/level-control/level-control-cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/level-control/level-control-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/level-control/level-control-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/level-control/level-control-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/level-control/level-control-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/level-control/level-control-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/level-control/level-control.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/level-control/level-control.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/level-control/level-control.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/level-control/level-control.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/level-control/level-control.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/level-control/level-control.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/manufacturing-library-cli/manufacturing-library-cli-host.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/manufacturing-library-cli/manufacturing-library-cli-host.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/manufacturing-library-cli/manufacturing-library-cli-host.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/manufacturing-library-cli/manufacturing-library-cli-host.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/manufacturing-library-cli/manufacturing-library-cli-host.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/manufacturing-library-cli/manufacturing-library-cli-host.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-creator-security/network-creator-security-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator-security/network-creator-security-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator-security/network-creator-security-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator-security/network-creator-security-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-creator-security/network-creator-security-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-creator-security/network-creator-security-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-creator-security/network-creator-security.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator-security/network-creator-security.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator-security/network-creator-security.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator-security/network-creator-security.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-creator-security/network-creator-security.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-creator-security/network-creator-security.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-creator/network-creator-cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator/network-creator-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator/network-creator-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator/network-creator-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-creator/network-creator-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-creator/network-creator-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-creator/network-creator-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator/network-creator-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator/network-creator-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator/network-creator-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-creator/network-creator-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-creator/network-creator-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-creator/network-creator.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator/network-creator.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator/network-creator.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator/network-creator.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-creator/network-creator.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-creator/network-creator.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-steering/network-steering-cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-steering/network-steering-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-steering/network-steering-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-steering/network-steering-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-steering/network-steering-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-steering/network-steering-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-steering/network-steering-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-steering/network-steering-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-steering/network-steering-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-steering/network-steering-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-steering/network-steering-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-steering/network-steering-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-steering/network-steering-host.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-steering/network-steering-host.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-steering/network-steering-host.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-steering/network-steering-host.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-steering/network-steering-host.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-steering/network-steering-host.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-steering/network-steering-v2.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-steering/network-steering-v2.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-steering/network-steering-v2.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-steering/network-steering-v2.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-steering/network-steering-v2.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-steering/network-steering-v2.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-steering/network-steering.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-steering/network-steering.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-steering/network-steering.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-steering/network-steering.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-steering/network-steering.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-steering/network-steering.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/on-off/on-off-cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/on-off/on-off-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/on-off/on-off-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/on-off/on-off-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/on-off/on-off-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/on-off/on-off-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/on-off/on-off.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/on-off/on-off.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/on-off/on-off.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/on-off/on-off.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/on-off/on-off.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/on-off/on-off.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-common/ota-common.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-common/ota-common.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-common/ota-common.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-common/ota-common.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-common/ota-common.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-common/ota-common.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server-policy/ota-server-policy-cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server-policy/ota-server-policy-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server-policy/ota-server-policy-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server-policy/ota-server-policy-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server-policy/ota-server-policy-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server-policy/ota-server-policy-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server-policy/ota-server-policy.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server-policy/ota-server-policy.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server-policy/ota-server-policy.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server-policy/ota-server-policy.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server-policy/ota-server-policy.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server-policy/ota-server-policy.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server/ota-server-cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server/ota-server-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server/ota-server-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server/ota-server-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server/ota-server-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server/ota-server-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server/ota-server-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server/ota-server-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server/ota-server-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server/ota-server-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server/ota-server-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server/ota-server-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server/ota-server-dynamic-block-period.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server/ota-server-dynamic-block-period.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server/ota-server-dynamic-block-period.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server/ota-server-dynamic-block-period.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server/ota-server-dynamic-block-period.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server/ota-server-dynamic-block-period.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server/ota-server-page-request.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server/ota-server-page-request.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server/ota-server-page-request.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server/ota-server-page-request.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server/ota-server-page-request.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server/ota-server-page-request.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server/ota-server.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server/ota-server.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server/ota-server.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server/ota-server.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server/ota-server.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server/ota-server.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-storage-common/ota-storage-common-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-storage-common/ota-storage-common-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-storage-common/ota-storage-common-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-storage-common/ota-storage-common-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-storage-common/ota-storage-common-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-storage-common/ota-storage-common-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-storage-common/ota-storage-common.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-storage-common/ota-storage-common.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-storage-common/ota-storage-common.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-storage-common/ota-storage-common.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-storage-common/ota-storage-common.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-storage-common/ota-storage-common.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-storage-posix-filesystem/ota-storage-linux.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-storage-posix-filesystem/ota-storage-linux.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-storage-posix-filesystem/ota-storage-linux.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-storage-posix-filesystem/ota-storage-linux.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-storage-posix-filesystem/ota-storage-linux.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-storage-posix-filesystem/ota-storage-linux.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/poll-control-client/poll-control-client-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/poll-control-client/poll-control-client-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/poll-control-client/poll-control-client-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/poll-control-client/poll-control-client-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/poll-control-client/poll-control-client-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/poll-control-client/poll-control-client-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/poll-control-client/poll-control-client.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/poll-control-client/poll-control-client.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/poll-control-client/poll-control-client.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/poll-control-client/poll-control-client.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/poll-control-client/poll-control-client.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/poll-control-client/poll-control-client.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/reporting/reporting-cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/reporting/reporting-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/reporting/reporting-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/reporting/reporting-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/reporting/reporting-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/reporting/reporting-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/reporting/reporting-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/reporting/reporting-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/reporting/reporting-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/reporting/reporting-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/reporting/reporting-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/reporting/reporting-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/reporting/reporting-default-configuration.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/reporting/reporting-default-configuration.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/reporting/reporting-default-configuration.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/reporting/reporting-default-configuration.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/reporting/reporting-default-configuration.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/reporting/reporting-default-configuration.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/reporting/reporting.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/reporting/reporting.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/reporting/reporting.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/reporting/reporting.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/reporting/reporting.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/reporting/reporting.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/scan-dispatch/scan-dispatch.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/scan-dispatch/scan-dispatch.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/scan-dispatch/scan-dispatch.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/scan-dispatch/scan-dispatch.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/scan-dispatch/scan-dispatch.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/scan-dispatch/scan-dispatch.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client-cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/stack-diagnostics/stack-diagnostics.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/stack-diagnostics/stack-diagnostics.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/stack-diagnostics/stack-diagnostics.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/stack-diagnostics/stack-diagnostics.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/stack-diagnostics/stack-diagnostics.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/stack-diagnostics/stack-diagnostics.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/test-harness/read-write-attributes.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/test-harness/read-write-attributes.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/test-harness/read-write-attributes.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/test-harness/read-write-attributes.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/test-harness/read-write-attributes.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/test-harness/read-write-attributes.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/test-harness/test-harness-host.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/test-harness/test-harness-host.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/test-harness/test-harness-host.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/test-harness/test-harness-host.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/test-harness/test-harness-host.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/test-harness/test-harness-host.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/test-harness/test-harness.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/test-harness/test-harness.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/test-harness/test-harness.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/test-harness/test-harness.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/test-harness/test-harness.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/test-harness/test-harness.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/time-server/time-server.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/time-server/time-server.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/time-server/time-server.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/time-server/time-server.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/time-server/time-server.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/time-server/time-server.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-broadcast/trust-center-nwk-key-update-broadcast.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-broadcast/trust-center-nwk-key-update-broadcast.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-broadcast/trust-center-nwk-key-update-broadcast.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-broadcast/trust-center-nwk-key-update-broadcast.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-broadcast/trust-center-nwk-key-update-broadcast.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-broadcast/trust-center-nwk-key-update-broadcast.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-periodic/trust-center-nwk-key-update-periodic.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-periodic/trust-center-nwk-key-update-periodic.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-periodic/trust-center-nwk-key-update-periodic.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-periodic/trust-center-nwk-key-update-periodic.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-periodic/trust-center-nwk-key-update-periodic.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-periodic/trust-center-nwk-key-update-periodic.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-unicast/trust-center-nwk-key-update-unicast.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-unicast/trust-center-nwk-key-update-unicast.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-unicast/trust-center-nwk-key-update-unicast.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-unicast/trust-center-nwk-key-update-unicast.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-unicast/trust-center-nwk-key-update-unicast.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-unicast/trust-center-nwk-key-update-unicast.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key-cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/zcl-framework-core/zcl-framework-core-cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/zcl-framework-core/zcl-framework-core-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/zcl-framework-core/zcl-framework-core-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/zcl-framework-core/zcl-framework-core-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/zcl-framework-core/zcl-framework-core-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/zcl-framework-core/zcl-framework-core-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-custom-cluster-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-custom-cluster-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-custom-cluster-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-custom-cluster-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-custom-cluster-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-custom-cluster-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-global-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-global-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-global-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-global-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-global-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-global-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/security/af-node.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/security/af-node.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/security/af-node.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/security/af-node.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/security/af-node.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/security/af-node.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/security/af-security-common.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/security/af-security-common.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/security/af-security-common.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/security/af-security-common.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/security/af-security-common.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/security/af-security-common.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/security/af-trust-center.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/security/af-trust-center.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/security/af-trust-center.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/security/af-trust-center.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/security/af-trust-center.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/security/af-trust-center.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/security/crypto-state.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/security/crypto-state.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/security/crypto-state.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/security/crypto-state.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/security/crypto-state.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/security/crypto-state.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/service-function/sl_service_function.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/service-function/sl_service_function.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/service-function/sl_service_function.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/service-function/sl_service_function.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/service-function/sl_service_function.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/service-function/sl_service_function.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/signature-decode/sl_signature_decode.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/signature-decode/sl_signature_decode.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/signature-decode/sl_signature_decode.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/signature-decode/sl_signature_decode.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/signature-decode/sl_signature_decode.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/signature-decode/sl_signature_decode.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/af-common.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/af-common.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/af-common.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/af-common.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/af-common.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/af-common.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/af-event.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/af-event.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/af-event.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/af-event.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/af-event.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/af-event.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/af-host.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/af-host.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/af-host.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/af-host.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/af-host.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/af-host.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/attribute-size.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/attribute-size.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/attribute-size.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/attribute-size.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/attribute-size.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/attribute-size.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/attribute-storage.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/attribute-storage.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/attribute-storage.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/attribute-storage.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/attribute-storage.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/attribute-storage.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/attribute-table.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/attribute-table.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/attribute-table.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/attribute-table.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/attribute-table.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/attribute-table.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/client-api.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/client-api.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/client-api.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/client-api.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/client-api.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/client-api.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/global-callback.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/global-callback.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/global-callback.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/global-callback.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/global-callback.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/global-callback.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/global-other-callback.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/global-other-callback.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/global-other-callback.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/global-other-callback.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/global-other-callback.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/global-other-callback.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/message.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/message.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/message.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/message.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/message.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/message.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/multi-network.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/multi-network.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/multi-network.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/multi-network.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/multi-network.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/multi-network.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/print-formatter.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/print-formatter.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/print-formatter.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/print-formatter.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/print-formatter.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/print-formatter.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/print.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/print.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/print.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/print.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/print.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/print.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/process-cluster-message.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/process-cluster-message.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/process-cluster-message.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/process-cluster-message.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/process-cluster-message.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/process-cluster-message.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/process-global-message.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/process-global-message.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/process-global-message.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/process-global-message.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/process-global-message.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/process-global-message.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/service-discovery-common.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/service-discovery-common.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/service-discovery-common.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/service-discovery-common.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/service-discovery-common.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/service-discovery-common.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/service-discovery-host.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/service-discovery-host.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/service-discovery-host.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/service-discovery-host.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/service-discovery-host.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/service-discovery-host.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/time-util.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/time-util.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/time-util.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/time-util.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/time-util.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/time-util.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/util.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/util.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/util.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/util.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/util.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/util.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/zcl-util.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/zcl-util.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/zcl-util.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/zcl-util.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/zcl-util.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/zcl-util.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/common/library.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/util/common/library.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/util/common/library.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/util/common/library.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/common/library.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/common/library.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/ezsp-callbacks.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/util/ezsp/ezsp-callbacks.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/util/ezsp/ezsp-callbacks.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/util/ezsp/ezsp-callbacks.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/ezsp-callbacks.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/ezsp-callbacks.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/ezsp-enum-decode.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/util/ezsp/ezsp-enum-decode.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/util/ezsp/ezsp-enum-decode.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/util/ezsp/ezsp-enum-decode.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/ezsp-enum-decode.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/ezsp-enum-decode.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/ezsp-frame-utilities.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/util/ezsp/ezsp-frame-utilities.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/util/ezsp/ezsp-frame-utilities.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/util/ezsp/ezsp-frame-utilities.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/ezsp-frame-utilities.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/ezsp-frame-utilities.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/ezsp.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/util/ezsp/ezsp.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/util/ezsp/ezsp.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/util/ezsp/ezsp.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/ezsp.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/ezsp.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/secure-ezsp-stub.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/util/ezsp/secure-ezsp-stub.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/util/ezsp/secure-ezsp-stub.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/util/ezsp/secure-ezsp-stub.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/secure-ezsp-stub.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/secure-ezsp-stub.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/serial-interface-uart.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/util/ezsp/serial-interface-uart.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/util/ezsp/serial-interface-uart.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/util/ezsp/serial-interface-uart.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/serial-interface-uart.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/serial-interface-uart.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/security/security-address-cache.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/util/security/security-address-cache.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/util/security/security-address-cache.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/util/security/security-address-cache.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/security/security-address-cache.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/security/security-address-cache.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/serial/linux-serial.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/util/serial/linux-serial.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/util/serial/linux-serial.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/util/serial/linux-serial.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/serial/linux-serial.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/serial/linux-serial.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/serial/sl_zigbee_command_interpreter.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/util/serial/sl_zigbee_command_interpreter.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/util/serial/sl_zigbee_command_interpreter.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/util/serial/sl_zigbee_command_interpreter.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/serial/sl_zigbee_command_interpreter.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/serial/sl_zigbee_command_interpreter.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/zigbee-framework/zigbee-device-common.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/util/zigbee-framework/zigbee-device-common.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/util/zigbee-framework/zigbee-device-common.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/util/zigbee-framework/zigbee-device-common.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/zigbee-framework/zigbee-device-common.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/zigbee-framework/zigbee-device-common.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/zigbee-framework/zigbee-device-host.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/util/zigbee-framework/zigbee-device-host.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/util/zigbee-framework/zigbee-device-host.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/util/zigbee-framework/zigbee-device-host.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/zigbee-framework/zigbee-device-host.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/zigbee-framework/zigbee-device-host.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/config/ember-configuration-host-access.o: $(COPIED_SDK_PATH)/protocol/zigbee/stack/config/ember-configuration-host-access.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/stack/config/ember-configuration-host-access.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/stack/config/ember-configuration-host-access.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/config/ember-configuration-host-access.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/config/ember-configuration-host-access.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/gp/gp-util.o: $(COPIED_SDK_PATH)/protocol/zigbee/stack/gp/gp-util.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/stack/gp/gp-util.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/stack/gp/gp-util.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/gp/gp-util.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/gp/gp-util.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/security/zigbee-security-manager-host.o: $(COPIED_SDK_PATH)/protocol/zigbee/stack/security/zigbee-security-manager-host.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/stack/security/zigbee-security-manager-host.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/stack/security/zigbee-security-manager-host.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/security/zigbee-security-manager-host.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/security/zigbee-security-manager-host.o

$(OUTPUT_DIR)/sdk/util/silicon_labs/silabs_core/event_queue/event-queue.o: $(COPIED_SDK_PATH)/util/silicon_labs/silabs_core/event_queue/event-queue.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/util/silicon_labs/silabs_core/event_queue/event-queue.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/silicon_labs/silabs_core/event_queue/event-queue.c
CDEPS += $(OUTPUT_DIR)/sdk/util/silicon_labs/silabs_core/event_queue/event-queue.d
OBJS += $(OUTPUT_DIR)/sdk/util/silicon_labs/silabs_core/event_queue/event-queue.o

$(OUTPUT_DIR)/sdk/util/silicon_labs/silabs_core/memory_manager/sl_malloc.o: $(COPIED_SDK_PATH)/util/silicon_labs/silabs_core/memory_manager/sl_malloc.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/util/silicon_labs/silabs_core/memory_manager/sl_malloc.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/silicon_labs/silabs_core/memory_manager/sl_malloc.c
CDEPS += $(OUTPUT_DIR)/sdk/util/silicon_labs/silabs_core/memory_manager/sl_malloc.d
OBJS += $(OUTPUT_DIR)/sdk/util/silicon_labs/silabs_core/memory_manager/sl_malloc.o

$(OUTPUT_DIR)/sdk/util/third_party/printf/printf.o: $(COPIED_SDK_PATH)/util/third_party/printf/printf.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/util/third_party/printf/printf.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/third_party/printf/printf.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/printf/printf.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/printf/printf.o

$(OUTPUT_DIR)/sdk/util/third_party/printf/src/iostream_printf.o: $(COPIED_SDK_PATH)/util/third_party/printf/src/iostream_printf.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/util/third_party/printf/src/iostream_printf.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/third_party/printf/src/iostream_printf.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/printf/src/iostream_printf.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/printf/src/iostream_printf.o

$(OUTPUT_DIR)/project/app.o: app.c
	@$(POSIX_TOOL_PATH)echo 'Building app.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ app.c
CDEPS += $(OUTPUT_DIR)/project/app.d
OBJS += $(OUTPUT_DIR)/project/app.o

$(OUTPUT_DIR)/project/autogen/sl_cli_command_table.o: autogen/sl_cli_command_table.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/sl_cli_command_table.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_cli_command_table.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_cli_command_table.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_cli_command_table.o

$(OUTPUT_DIR)/project/autogen/sl_cli_instances.o: autogen/sl_cli_instances.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/sl_cli_instances.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_cli_instances.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_cli_instances.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_cli_instances.o

$(OUTPUT_DIR)/project/autogen/sl_cluster_service_gen.o: autogen/sl_cluster_service_gen.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/sl_cluster_service_gen.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_cluster_service_gen.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_cluster_service_gen.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_cluster_service_gen.o

$(OUTPUT_DIR)/project/autogen/sl_event_handler.o: autogen/sl_event_handler.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/sl_event_handler.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_event_handler.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_event_handler.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_event_handler.o

$(OUTPUT_DIR)/project/autogen/sl_iostream_handles.o: autogen/sl_iostream_handles.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/sl_iostream_handles.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_iostream_handles.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_iostream_handles.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_iostream_handles.o

$(OUTPUT_DIR)/project/autogen/sli_cli_hooks.o: autogen/sli_cli_hooks.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/sli_cli_hooks.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sli_cli_hooks.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sli_cli_hooks.d
OBJS += $(OUTPUT_DIR)/project/autogen/sli_cli_hooks.o

$(OUTPUT_DIR)/project/autogen/zap-cli.o: autogen/zap-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/zap-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/zap-cli.c
CDEPS += $(OUTPUT_DIR)/project/autogen/zap-cli.d
OBJS += $(OUTPUT_DIR)/project/autogen/zap-cli.o

$(OUTPUT_DIR)/project/autogen/zap-cluster-command-parser.o: autogen/zap-cluster-command-parser.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/zap-cluster-command-parser.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/zap-cluster-command-parser.c
CDEPS += $(OUTPUT_DIR)/project/autogen/zap-cluster-command-parser.d
OBJS += $(OUTPUT_DIR)/project/autogen/zap-cluster-command-parser.o

$(OUTPUT_DIR)/project/autogen/zap-event.o: autogen/zap-event.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/zap-event.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/zap-event.c
CDEPS += $(OUTPUT_DIR)/project/autogen/zap-event.d
OBJS += $(OUTPUT_DIR)/project/autogen/zap-event.o

$(OUTPUT_DIR)/project/autogen/zigbee_common_callback_dispatcher.o: autogen/zigbee_common_callback_dispatcher.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/zigbee_common_callback_dispatcher.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/zigbee_common_callback_dispatcher.c
CDEPS += $(OUTPUT_DIR)/project/autogen/zigbee_common_callback_dispatcher.d
OBJS += $(OUTPUT_DIR)/project/autogen/zigbee_common_callback_dispatcher.o

$(OUTPUT_DIR)/project/autogen/zigbee_host_callback_dispatcher.o: autogen/zigbee_host_callback_dispatcher.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/zigbee_host_callback_dispatcher.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/zigbee_host_callback_dispatcher.c
CDEPS += $(OUTPUT_DIR)/project/autogen/zigbee_host_callback_dispatcher.d
OBJS += $(OUTPUT_DIR)/project/autogen/zigbee_host_callback_dispatcher.o

$(OUTPUT_DIR)/project/autogen/zigbee_stack_callback_dispatcher.o: autogen/zigbee_stack_callback_dispatcher.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/zigbee_stack_callback_dispatcher.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/zigbee_stack_callback_dispatcher.c
CDEPS += $(OUTPUT_DIR)/project/autogen/zigbee_stack_callback_dispatcher.d
OBJS += $(OUTPUT_DIR)/project/autogen/zigbee_stack_callback_dispatcher.o

$(OUTPUT_DIR)/project/autogen/zigbee_zcl_callback_dispatcher.o: autogen/zigbee_zcl_callback_dispatcher.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/zigbee_zcl_callback_dispatcher.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/zigbee_zcl_callback_dispatcher.c
CDEPS += $(OUTPUT_DIR)/project/autogen/zigbee_zcl_callback_dispatcher.d
OBJS += $(OUTPUT_DIR)/project/autogen/zigbee_zcl_callback_dispatcher.o

$(OUTPUT_DIR)/project/main.o: main.c
	@$(POSIX_TOOL_PATH)echo 'Building main.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ main.c
CDEPS += $(OUTPUT_DIR)/project/main.d
OBJS += $(OUTPUT_DIR)/project/main.o

# Automatically-generated Simplicity Studio Metadata
# Please do not edit or delete these lines!
# SIMPLICITY_STUDIO_METADATA=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END_SIMPLICITY_STUDIO_METADATA
# END OF METADATA