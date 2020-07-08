# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit git-r3
DESCRIPTION="An mpc-like control interface for mpv"
HOMEPAGE="https://github.com/wildefyr/mpvc"
EGIT_REPO_URI=( {https,git}://github.com/wildefyr/mpvc )

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
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
