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