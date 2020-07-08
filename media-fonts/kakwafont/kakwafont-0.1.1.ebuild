# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit font

DESCRIPTION="Kakwafont, a 12px monospace bitmap font based on Terminus"
HOMEPAGE="https://github.com/kakwa/kakwafont"
SRC_URI="https://github.com/kakwa/kakwafont/archive/${PV}.tar.gz"

LICENSE="OFL"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

FONT_SUFFIX="bdf"
