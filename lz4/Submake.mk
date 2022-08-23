#
# Copyright (C) 2020 Xiaomi Corporation
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

include $(APPDIR)/Make.defs

CSRCS += $(wildcard lib/*.c)
CFLAGS += ${shell $(INCDIR) $(INCDIROPT) "$(CC)" $(APPDIR)/external/lz4/lz4/lib}

ifneq ($(CONFIG_UTILS_LZ4),)
PROGNAME += $(CONFIG_UTILS_LZ4_PROGNAME)
PRIORITY += $(CONFIG_UTILS_LZ4_PRIORITY)
STACKSIZE += $(CONFIG_UTILS_LZ4_STACKSIZE)
MAINSRC += programs/lz4cli.c
endif

include $(APPDIR)/Application.mk