# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit git-r3

DESCRIPTION="fucking fast file-manager"
HOMEPAGE="https://github.com/dylanaraps/fff"

EGIT_REPO_URI="https://github.com/dylanaraps/fff.git"
EGIT_BRANCH="master"

SLOT="0"
KEYWORDS=""
LICENSE="MIT"

DEPEND="x11-misc/xdg-utils"
RDEPEND="${DEPEND}"
