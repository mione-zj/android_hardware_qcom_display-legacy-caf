#Enables the listed display HAL modules
#libs to be built for QCOM targets only

ifeq ($(call my-dir),$(call project-path-for,qcom-display))

ifneq (,$(filter $(QCOM_BOARD_PLATFORMS),$(TARGET_BOARD_PLATFORM)))
display-hals := libgralloc libgenlock libcopybit liblight
display-hals += libhwcomposer liboverlay libqdutils
endif

display-hals += libmemtrack
display-hals += libtilerenderer

include $(call all-named-subdir-makefiles,$(display-hals))

endif
