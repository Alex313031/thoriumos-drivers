# Copyrighu (c) 2018 The Fyde OS Authors. All rights reserved.
# Distributed under the terms of the BSD

EAPI="4"
inherit arc-camera
DESCRIPTION="support most of usb-cameras"
HOMEPAGE="http://fydeos.com"

LICENSE="BSD-Google"
SLOT="0"
KEYWORDS="*"
IUSE=""

RDEPEND=""

DEPEND="${RDEPEND}"
S=${WORKDIR}

src_install() {
    insinto /etc/camera
    doins ${FILESDIR}/camera_characteristics.conf
    arc-camera_gen_and_install_rules
}
