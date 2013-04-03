# (c) Copyright 2013  LG Electronics.

PRINC := "${@int(PRINC) + 1}"

RDEPENDS_${PN} += "\
    ltrace \
    "
