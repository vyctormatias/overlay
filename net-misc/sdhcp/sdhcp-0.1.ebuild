# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit git-r3

EGIT_REPO_URI="git://git.2f30.org/sdhcp.git"
DOCS="sdhcp.1"
KEYWORDS="amd64 x86"

DESCRIPTION="Suckless dhcp client"
HOMEPAGE="https://core.suckless.org/sdhcp/"

LICENSE="MIT"
SLOT="0"

RDEPEND=""
DEPEND="${RDEPEND}"

src_install() {
	emake DESTDIR="${ED}" PREFIX=/usr install
}
