# (c) Copyright 2012-2013 Hewlett-Packard Development Company, L.P.

DESCRIPTION = "Reference Open webOS image"
LICENSE = "Apache-2.0"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/Apache-2.0;md5=89aea4e17d99a7cacdbeed46a0096b10"

# IMAGE_FEATURES control content of the webOS reference images
#
# By default we install packagegroup-webos-boot and -extended packages - this gives
# full working Open webOS image.
#
# Available IMAGE_FEATURES:
#
# - webos-test          - QA
# - webos-temp          - temporary packages
# 
# and IMAGE_FEATURES from core-image

PACKAGE_GROUP_webos-boot = "packagegroup-webos-boot"
PACKAGE_GROUP_webos-extended = "packagegroup-webos-extended"
PACKAGE_GROUP_webos-test = "packagegroup-webos-test"
PACKAGE_GROUP_webos-temp = "packagegroup-webos-temp"

WEBOS_IMAGE_DEFAULT_FEATURES = "webos-temp ssh-server-dropbear package-management"

WEBOS_IMAGE_BASE_INSTALL = '\
    packagegroup-webos-boot \
    packagegroup-webos-extended \
    \
    ${WEBOS_IMAGE_EXTRA_INSTALL} \
    '

WEBOS_IMAGE_EXTRA_INSTALL ?= ""

IMAGE_INSTALL ?= "${WEBOS_IMAGE_BASE_INSTALL}"

inherit core-image
