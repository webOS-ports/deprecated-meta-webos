# (c) Copyright 2012  Hewlett-Packard Development Company, L.P. 

SUMMARY = "Open webOS Just Type daemon"
SECTION = "webos/base"
LICENSE = "Apache-2.0"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/Apache-2.0;md5=89aea4e17d99a7cacdbeed46a0096b10"

DEPENDS = "libxml2 luna-service2 glib-2.0 cjson sqlite3 "

# corresponds to tag submissions/1.00
SRCREV = "a9a7751d97888f88b1b9a0bfa9b7997201d4f4cc"
PV = "2.0.0-1.00"
PR = "r6"

inherit webos_component
inherit webos_public_repo
inherit webos_enhanced_submissions
inherit webos_cmake
inherit webos_system_bus
inherit webos_daemon

WEBOS_GIT_TAG = "submissions/${WEBOS_SUBMISSION}"
SRC_URI = "${OPENWEBOS_GIT_REPO_COMPLETE}"
S = "${WORKDIR}/git"

# TODO: Remove once there's localization support
do_install_append() {
    install -d ${D}${webos_prefix}/universalsearchmgr/resources/en_us
    install -v -m 0644 ${S}/desktop-support/UniversalSearchList.json ${D}${webos_prefix}/universalsearchmgr/resources/en_us
}


FILES_${PN} += "${webos_prefix}"
