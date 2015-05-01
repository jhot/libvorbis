LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE     := x_v_3f6eac67
LOCAL_C_INCLUDES := $(LOCAL_PATH) $(LOCAL_PATH)/include $(LOCAL_PATH)/libogg/include $(LOCAL_PATH)/lib

LIBOGG_SOURCE_FILES := libogg/src/bitwise.c libogg/src/framing.c

LIBVORBIS_SOURCE_FILES := lib/mdct.c lib/smallft.c lib/block.c lib/envelope.c lib/window.c \
        lib/lsp.c lib/lpc.c lib/analysis.c lib/synthesis.c lib/psy.c lib/info.c \
        lib/floor1.c lib/floor0.c lib/res0.c lib/mapping0.c lib/registry.c lib/codebook.c \
        lib/sharedbook.c lib/lookup.c lib/bitrate.c lib/envelope.h lib/lpc.h lib/lsp.h \
        lib/codebook.h lib/misc.h lib/psy.h lib/masking.h lib/os.h lib/mdct.h \
        lib/smallft.h lib/highlevel.h lib/registry.h lib/scales.h lib/window.h \
        lib/lookup.h lib/lookup_data.h lib/codec_internal.h lib/backends.h \
        lib/bitrate.h lib/vorbisfile.c lib/vorbisenc.c

LOCAL_SRC_FILES := $(LIBOGG_SOURCE_FILES) $(LIBVORBIS_SOURCE_FILES)

include $(BUILD_SHARED_LIBRARY)