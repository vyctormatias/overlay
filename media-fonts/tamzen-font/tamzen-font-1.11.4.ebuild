# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit font

DESCRIPTION="Bitmapped programming font, based on Tamsyn"
HOMEPAGE="https://github.com/sunaku/tamzen-font"
SRC_URI="https://github.com/sunaku/tamzen-font/archive/Tamzen-${PV}.tar.gz"

LICENSE="OFL"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

S="${WORKDIR}/${PN}-Tamzen-${PV}"

FONT_S="pcf"
FONT_SUFFIX="pcf"
