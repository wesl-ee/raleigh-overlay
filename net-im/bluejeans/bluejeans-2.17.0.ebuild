# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit rpm xdg-utils

DESCRIPTION="Online meetings, video conferencing, and screen sharing for teams of any size"
HOMEPAGE="https://www.bluejeans.com"
SRC_URI="https://swdl.bluejeans.com/desktop-app/linux/${PV}/BlueJeans_${PV}.11.rpm"

S="${WORKDIR}"

LICENSE="BlueJeans"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

src_install() {
	cp -R "${S}/"* "${D}/" || die "Install failed!"

	fperms +x /opt/BlueJeans/${PN}-v2
	domenu usr/share/applications/bluejeans-v2.desktop
}

pkg_postinst() {
	xdg_icon_cache_update
	xdg_desktop_database_update
}

pkg_postrm() {
	xdg_icon_cache_update
	xdg_desktop_database_update
}
