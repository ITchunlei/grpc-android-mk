#this file copy from http://github.com/android
LOCAL_PATH := $(call my-dir)


IGNORED_WARNINGS := -Wno-sign-compare -Wno-unused-parameter -Wno-sign-promo -Wno-error=return-type


SRC_ROOT := .

CC_LITE_SRC_FILES := \
  $(SRC_ROOT)/src/google/protobuf/stubs/atomicops_internals_x86_gcc.cc         \
  $(SRC_ROOT)/src/google/protobuf/stubs/atomicops_internals_x86_msvc.cc        \
  $(SRC_ROOT)/src/google/protobuf/stubs/bytestream.cc                          \
  $(SRC_ROOT)/src/google/protobuf/stubs/common.cc                              \
  $(SRC_ROOT)/src/google/protobuf/stubs/int128.cc                              \
  $(SRC_ROOT)/src/google/protobuf/stubs/once.cc                                \
  $(SRC_ROOT)/src/google/protobuf/stubs/status.cc                              \
  $(SRC_ROOT)/src/google/protobuf/stubs/statusor.cc                            \
  $(SRC_ROOT)/src/google/protobuf/stubs/stringpiece.cc                         \
  $(SRC_ROOT)/src/google/protobuf/stubs/stringprintf.cc                        \
  $(SRC_ROOT)/src/google/protobuf/stubs/structurally_valid.cc                  \
  $(SRC_ROOT)/src/google/protobuf/stubs/strutil.cc                             \
  $(SRC_ROOT)/src/google/protobuf/stubs/time.cc                                \
  $(SRC_ROOT)/src/google/protobuf/arena.cc                                     \
  $(SRC_ROOT)/src/google/protobuf/arenastring.cc                               \
  $(SRC_ROOT)/src/google/protobuf/extension_set.cc                             \
  $(SRC_ROOT)/src/google/protobuf/generated_message_util.cc                    \
  $(SRC_ROOT)/src/google/protobuf/message_lite.cc                              \
  $(SRC_ROOT)/src/google/protobuf/repeated_field.cc                            \
  $(SRC_ROOT)/src/google/protobuf/wire_format_lite.cc                          \
  $(SRC_ROOT)/src/google/protobuf/io/coded_stream.cc                           \
  $(SRC_ROOT)/src/google/protobuf/io/zero_copy_stream.cc                       \
  $(SRC_ROOT)/src/google/protobuf/io/zero_copy_stream_impl_lite.cc

# C++ lite library + rtti (libc++ flavored for the platform)
# =======================================================
#include $(CLEAR_VARS)

#LOCAL_MODULE := protobuf-lite
#LOCAL_MODULE_TAGS := optional
#LOCAL_CPP_EXTENSION := .cc
#LOCAL_SRC_FILES := $(CC_LITE_SRC_FILES)

#LOCAL_C_INCLUDES := \
#    $(LOCAL_PATH)/ \
#    $(LOCAL_PATH)/$(SRC_ROOT)/src \
#LOCAL_CFLAGS := $(IGNORED_WARNINGS)
#include $(BUILD_STATIC_LIBRARY) 

# C++ full library
# =======================================================
protobuf_cc_full_src_files := \
    $(CC_LITE_SRC_FILES)                                             \
  $(SRC_ROOT)/src/google/protobuf/any.pb.cc                                    \
  $(SRC_ROOT)/src/google/protobuf/api.pb.cc                                    \
  $(SRC_ROOT)/src/google/protobuf/stubs/mathlimits.cc                          \
  $(SRC_ROOT)/src/google/protobuf/any.cc                                       \
  $(SRC_ROOT)/src/google/protobuf/descriptor.cc                                \
  $(SRC_ROOT)/src/google/protobuf/descriptor_database.cc                       \
  $(SRC_ROOT)/src/google/protobuf/descriptor.pb.cc                             \
  $(SRC_ROOT)/src/google/protobuf/duration.pb.cc                               \
  $(SRC_ROOT)/src/google/protobuf/dynamic_message.cc                           \
  $(SRC_ROOT)/src/google/protobuf/empty.pb.cc                                  \
  $(SRC_ROOT)/src/google/protobuf/extension_set_heavy.cc                       \
  $(SRC_ROOT)/src/google/protobuf/field_mask.pb.cc                             \
  $(SRC_ROOT)/src/google/protobuf/generated_message_reflection.cc              \
  $(SRC_ROOT)/src/google/protobuf/map_field.cc                                 \
  $(SRC_ROOT)/src/google/protobuf/message.cc                                   \
  $(SRC_ROOT)/src/google/protobuf/reflection_ops.cc                            \
  $(SRC_ROOT)/src/google/protobuf/service.cc                                   \
  $(SRC_ROOT)/src/google/protobuf/source_context.pb.cc                         \
  $(SRC_ROOT)/src/google/protobuf/struct.pb.cc                                 \
  $(SRC_ROOT)/src/google/protobuf/stubs/substitute.cc                          \
  $(SRC_ROOT)/src/google/protobuf/text_format.cc                               \
  $(SRC_ROOT)/src/google/protobuf/timestamp.pb.cc                              \
  $(SRC_ROOT)/src/google/protobuf/type.pb.cc                                   \
  $(SRC_ROOT)/src/google/protobuf/unknown_field_set.cc                         \
  $(SRC_ROOT)/src/google/protobuf/wire_format.cc                               \
  $(SRC_ROOT)/src/google/protobuf/wrappers.pb.cc                               \
  $(SRC_ROOT)/src/google/protobuf/io/gzip_stream.cc                            \
  $(SRC_ROOT)/src/google/protobuf/io/printer.cc                                \
  $(SRC_ROOT)/src/google/protobuf/io/strtod.cc                                 \
  $(SRC_ROOT)/src/google/protobuf/io/tokenizer.cc                              \
  $(SRC_ROOT)/src/google/protobuf/io/zero_copy_stream_impl.cc                  \
  $(SRC_ROOT)/src/google/protobuf/compiler/importer.cc                         \
  $(SRC_ROOT)/src/google/protobuf/compiler/parser.cc                           \
  $(SRC_ROOT)/src/google/protobuf/util/field_comparator.cc                     \
  $(SRC_ROOT)/src/google/protobuf/util/field_mask_util.cc                      \
  $(SRC_ROOT)/src/google/protobuf/util/internal/datapiece.cc                   \
  $(SRC_ROOT)/src/google/protobuf/util/internal/default_value_objectwriter.cc  \
  $(SRC_ROOT)/src/google/protobuf/util/internal/error_listener.cc              \
  $(SRC_ROOT)/src/google/protobuf/util/internal/field_mask_utility.cc          \
  $(SRC_ROOT)/src/google/protobuf/util/internal/json_escaping.cc               \
  $(SRC_ROOT)/src/google/protobuf/util/internal/json_objectwriter.cc           \
  $(SRC_ROOT)/src/google/protobuf/util/internal/json_stream_parser.cc          \
  $(SRC_ROOT)/src/google/protobuf/util/internal/object_writer.cc               \
  $(SRC_ROOT)/src/google/protobuf/util/internal/protostream_objectsource.cc    \
  $(SRC_ROOT)/src/google/protobuf/util/internal/protostream_objectwriter.cc    \
  $(SRC_ROOT)/src/google/protobuf/util/internal/type_info.cc                   \
  $(SRC_ROOT)/src/google/protobuf/util/internal/type_info_test_helper.cc       \
  $(SRC_ROOT)/src/google/protobuf/util/internal/utility.cc                     \
  $(SRC_ROOT)/src/google/protobuf/util/json_util.cc                            \
  $(SRC_ROOT)/src/google/protobuf/util/message_differencer.cc                  \
  $(SRC_ROOT)/src/google/protobuf/util/time_util.cc                            \
  $(SRC_ROOT)/src/google/protobuf/util/type_resolver_util.cc

# C++ full library for the platform.
# =======================================================
include $(CLEAR_VARS)

LOCAL_MODULE := protobuf
LOCAL_MODULE_TAGS := optional
LOCAL_CPP_EXTENSION := .cc
LOCAL_SRC_FILES := $(protobuf_cc_full_src_files)
LOCAL_C_INCLUDES := \
    $(LOCAL_PATH)/ \
    $(LOCAL_PATH)/$(SRC_ROOT)/src

#LOCAL_LDLIBS := -L$(SYSROOT)/usr/lib -lz
LOCAL_CFLAGS := $(IGNORED_WARNINGS)
include $(BUILD_STATIC_LIBRARY)
