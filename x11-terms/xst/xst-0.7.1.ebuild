# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit savedconfig

DESCRIPTION="st fork that uses Xresources and some pretty good patches"
HOMEPAGE="https://github.com/gnotclub/xst"

if [[ ${PV} == "9999" ]]; then
	EGIT_REPO_URI="https://github.com/gnotclub/xst"
	inherit git-r3
else
	SRC_URI="https://github.com/gnotclub/xst/archive/v${PV}.tar.gz"
	KEYWORDS="amd64 ~arm ~arm64 hppa x86"
fi

LICENSE="MIT"
SLOT="0"
IUSE="savedconfig"

RDEPEND="
	>=sys-libs/ncurses-6.0:0=
	media-libs/fontconfig
	x11-libs/libX11
	x11-libs/libXft
"
RDEPEND="${DEPEND}"

src_prepare() {
	[[ ${PV} == "0.7.1" ]] && eapply "${FILESDIR}/${PV}-filename.patch"
	eapply_user
}

src_configure() {
	default

	if use savedconfig; then
		restore_config src/config.h
	fi
}

src_install() {
	emake DESTDIR="${D}" PREFIX="${EPREFIX}"/usr install

	if use savedconfig; then
		save_config src/config.h
	fi
}
