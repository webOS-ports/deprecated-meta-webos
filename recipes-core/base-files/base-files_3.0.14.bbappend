# (c) Copyright 2013 LG Electronics

PR_append = "webos1"

# Create /run needed for systemd to mount tmpfs there
# Replace volatiles (symlinks to volatile subdirectory) with real dirs
volatiles = ""
dirs755 += "${localstatedir}/cache \
    ${localstatedir}/run \
    ${localstatedir}/log \
    ${localstatedir}/lock \
    ${localstatedir}/lock/subsys \
    ${localstatedir}/tmp \
    /run \
"
