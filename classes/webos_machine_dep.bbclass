# (c) Copyright 2012  Hewlett-Packard Development Company, L.P. 
#
# webos_machine_dep
#
# This class is to be inherited by the recipe for every component that depends
# on MACHINE at build time.
# 

PACKAGE_ARCH = "${MACHINE_ARCH}"

# Uncomment to allow all PACKAGE_ARCH-s variants to be built in the same tree.
# (Note that the OE 2011.03 bitbake.conf defines WORKDIR to effectively prepend 
# "${PACKAGE_ARCH}-${TARGET_VENDOR}-${TARGET_OS}/" for all PACKAGE_ARCH-s, i.e. 
# there are separate subdirectories instead of suffixes.)
# WORKDIR_append = "-${PACKAGE_ARCH}"

# Append this to EXTRA_OEMAKE to allow your makefile be MACHINE-dependent:
WEBOS_EXTRA_OEMAKE_MACHINE_DEP = "MACHINE=${MACHINE}"
