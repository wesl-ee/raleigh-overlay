# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Cryptosystem extending cryptsetup to use a double half-key scheme"
HOMEPAGE="https://github.com/wesleycoakley/PARANOiA"

EGIT_REPO_URI="https://github.com/wesleycoakley/PARANOiA"
inherit git-r3

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="sys-fs/cryptsetup
	media-gfx/exif
	media-gfx/imagemagick"
RDEPEND="${DEPEND}"
BDEPEND=""

src_install() {
	dobin PARANOiA
	dodoc conf-example/paranoia.conf
}
