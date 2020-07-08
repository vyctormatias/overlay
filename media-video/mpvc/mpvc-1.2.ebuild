# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="An mpc-like control interface for mpv"
HOMEPAGE="https://github.com/wildefyr/mpvc"
SRC_URI="https://github.com/wildefyr/mpvc/archive/${PV}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 ~x86"
IUSE=""

RDEPEND="
	media-video/mpv
	|| ( sys-apps/coreutils app-misc/jot )
	|| ( net-misc/socat net-analyzer/netcat )
"
src_compile () {
	:;
}

src_install () {
	dobin mpvc
}
