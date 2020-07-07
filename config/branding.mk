# Set all versions
ION_BUILD_DATE := $(shell date -u +%Y%m%d-%H%M)
ION_BUILD_TYPE ?= UNOFFICIAL
ION_RELEASE_TYPE ?= Preview
IONIZER := 2.8.a

TARGET_PRODUCT_SHORT := $(subst ion_,,$(ION_BUILD))

ION_VERSION := ion-$(IONIZER)-$(ION_BUILD)-$(ION_BUILD_DATE)-$(ION_BUILD_TYPE)-$(ION_RELEASE_TYPE)
ION_FINGERPRINT := ion/$(IONIZER)/$(TARGET_PRODUCT_SHORT)/$(ION_BUILD_DATE)/$(ION_BUILD_TYPE)-$(ION_RELEASE_TYPE)

ION_PROPERTIES := \
    ro.ion.version=$(ION_VERSION) \
    ro.ion.build_date=$(ION_BUILD_DATE) \
    ro.ion.build_type=$(ION_BUILD_TYPE) \
    ro.ion.fingerprint=$(ION_FINGERPRINT) \
    ro.ion.release_type=$(ION_RELEASE_TYPE) \
    ro.ionizer=$(IONIZER)
