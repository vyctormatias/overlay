# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

inherit git-r3

DESCRIPTION="This is a fork of lemonbar that supports fontconfig and offset"
HOMEPAGE="https://github.com/krypt-n/bar"
EGIT_REPO_URI="https://github.com/krypt-n/bar.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"

CDEPEND="
	x11-libs/libxcb
"
DEPEND="
	dev-lang/perl
	${CDEPEND}
"
RDEPEND="
	${CDEPEND}
"

#S="${WORKDIR}/${MY_P}"

src_prepare() {
    default
}
