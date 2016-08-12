#Enables the listed display HAL modules
#libs to be built for QCOM targets only

ifeq ($(call my-dir),$(call project-path-for,qcom-display))

ifeq ($(call is-vendor-board-platform,QCOM),true)
display-hals := libgralloc libgenlock libcopybit liblight
display-hals += libhwcomposer liboverlay libqdutils
endif

display-hals += libmemtrack
display-hals += libtilerenderer

include $(call all-named-subdir-makefiles,$(display-hals))

endif
