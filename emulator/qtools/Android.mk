# 
# Copyright 2006 The Android Open Source Project
#
# Java method trace dump tool
#

LOCAL_PATH:= $(call my-dir)

common_includes := external/qemu
common_cflags := -O0 -g

include $(CLEAR_VARS)
LOCAL_SRC_FILES := post_trace.cpp trace_reader.cpp decoder.cpp
LOCAL_C_INCLUDES += $(common_includes)
LOCAL_CFLAGS += $(common_cflags)
LOCAL_MODULE := post_trace
LOCAL_MODULE_TAGS := optional
include $(BUILD_HOST_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := read_trace.cpp trace_reader.cpp decoder.cpp armdis.cpp \
	thumbdis.cpp opcode.cpp read_elf.cpp parse_options.cpp
LOCAL_C_INCLUDES += $(common_includes)
LOCAL_CFLAGS += $(common_cflags)
LOCAL_MODULE := read_trace
LOCAL_MODULE_TAGS := optional
include $(BUILD_HOST_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := check_trace.cpp trace_reader.cpp decoder.cpp \
	opcode.cpp read_elf.cpp parse_options.cpp
LOCAL_C_INCLUDES += $(common_includes)
LOCAL_CFLAGS += $(common_cflags)
LOCAL_MODULE := check_trace
LOCAL_MODULE_TAGS := optional
include $(BUILD_HOST_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := bb_dump.cpp trace_reader.cpp decoder.cpp \
	read_elf.cpp parse_options.cpp
LOCAL_C_INCLUDES += $(common_includes)
LOCAL_CFLAGS += $(common_cflags)
LOCAL_MODULE := bb_dump
LOCAL_MODULE_TAGS := optional
include $(BUILD_HOST_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := bb2sym.cpp trace_reader.cpp decoder.cpp \
	read_elf.cpp parse_options.cpp
LOCAL_C_INCLUDES += $(common_includes)
LOCAL_CFLAGS += $(common_cflags)
LOCAL_MODULE := bb2sym
LOCAL_MODULE_TAGS := optional
include $(BUILD_HOST_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := profile_trace.cpp trace_reader.cpp decoder.cpp \
	opcode.cpp read_elf.cpp parse_options.cpp
LOCAL_C_INCLUDES += $(common_includes)
LOCAL_CFLAGS += $(common_cflags)
LOCAL_MODULE := profile_trace
LOCAL_MODULE_TAGS := optional
include $(BUILD_HOST_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := bbprof.cpp trace_reader.cpp decoder.cpp armdis.cpp \
	thumbdis.cpp opcode.cpp
LOCAL_C_INCLUDES += $(common_includes)
LOCAL_CFLAGS += $(common_cflags)
LOCAL_MODULE := bbprof
LOCAL_MODULE_TAGS := optional
include $(BUILD_HOST_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := q2g.cpp trace_reader.cpp decoder.cpp \
	opcode.cpp read_elf.cpp parse_options.cpp gtrace.cpp
LOCAL_C_INCLUDES += $(common_includes)
LOCAL_CFLAGS += $(common_cflags)
LOCAL_MODULE := q2g
LOCAL_MODULE_TAGS := optional
include $(BUILD_HOST_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := q2dm.cpp trace_reader.cpp decoder.cpp armdis.cpp \
	thumbdis.cpp opcode.cpp read_elf.cpp parse_options.cpp dmtrace.cpp
LOCAL_C_INCLUDES += $(common_includes)
LOCAL_CFLAGS += $(common_cflags)
LOCAL_MODULE := q2dm
LOCAL_MODULE_TAGS := optional
include $(BUILD_HOST_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := coverage.cpp trace_reader.cpp decoder.cpp armdis.cpp \
	thumbdis.cpp opcode.cpp read_elf.cpp parse_options.cpp
LOCAL_C_INCLUDES += $(common_includes)
LOCAL_CFLAGS += $(common_cflags)
LOCAL_MODULE := coverage
LOCAL_MODULE_TAGS := optional
include $(BUILD_HOST_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := stack_dump.cpp trace_reader.cpp decoder.cpp armdis.cpp \
	thumbdis.cpp opcode.cpp read_elf.cpp parse_options.cpp
LOCAL_C_INCLUDES += $(common_includes)
LOCAL_CFLAGS += $(common_cflags)
LOCAL_MODULE := stack_dump
LOCAL_MODULE_TAGS := optional
include $(BUILD_HOST_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := check_stack.cpp trace_reader.cpp decoder.cpp armdis.cpp \
	thumbdis.cpp opcode.cpp read_elf.cpp parse_options.cpp
LOCAL_C_INCLUDES += $(common_includes)
LOCAL_CFLAGS += $(common_cflags)
LOCAL_MODULE := check_stack
LOCAL_MODULE_TAGS := optional
include $(BUILD_HOST_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := hist_trace.cpp trace_reader.cpp decoder.cpp
LOCAL_C_INCLUDES += $(common_includes)
LOCAL_CFLAGS += $(common_cflags)
LOCAL_MODULE := hist_trace
LOCAL_MODULE_TAGS := optional
include $(BUILD_HOST_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := read_addr.cpp trace_reader.cpp decoder.cpp
LOCAL_C_INCLUDES += $(common_includes)
LOCAL_CFLAGS += $(common_cflags)
LOCAL_MODULE := read_addr
LOCAL_MODULE_TAGS := optional
include $(BUILD_HOST_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := read_pid.cpp trace_reader.cpp decoder.cpp
LOCAL_C_INCLUDES += $(common_includes)
LOCAL_CFLAGS += $(common_cflags)
LOCAL_MODULE := read_pid
LOCAL_MODULE_TAGS := optional
include $(BUILD_HOST_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := exc_dump.cpp trace_reader.cpp decoder.cpp
LOCAL_C_INCLUDES += $(common_includes)
LOCAL_CFLAGS += $(common_cflags)
LOCAL_MODULE := exc_dump
LOCAL_MODULE_TAGS := optional
include $(BUILD_HOST_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := read_method.cpp trace_reader.cpp decoder.cpp \
	read_elf.cpp parse_options.cpp
LOCAL_C_INCLUDES += $(common_includes)
LOCAL_CFLAGS += $(common_cflags)
LOCAL_MODULE := read_method
LOCAL_MODULE_TAGS := optional
include $(BUILD_HOST_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := profile_pid.cpp trace_reader.cpp decoder.cpp \
	read_elf.cpp parse_options.cpp
LOCAL_C_INCLUDES += $(common_includes)
LOCAL_CFLAGS += $(common_cflags)
LOCAL_MODULE := profile_pid
LOCAL_MODULE_TAGS := optional
include $(BUILD_HOST_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := dump_regions.cpp trace_reader.cpp decoder.cpp \
	read_elf.cpp parse_options.cpp
LOCAL_C_INCLUDES += $(common_includes)
LOCAL_CFLAGS += $(common_cflags)
LOCAL_MODULE := dump_regions
LOCAL_MODULE_TAGS := optional
include $(BUILD_HOST_EXECUTABLE)
