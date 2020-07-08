# Copyright 1999-2018 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Explore, test, and check regular expressions in the terminal."
HOMEPAGE="https://octobanana.com/software/crex"
SRC_URI="https://github.com/octobanana/crex/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86 ~alpha ~amd64 ~arm ~hppa ~ia64 ~ppc ~ppc64 ~s390 ~sh ~sparc ~x86"

src_prepare() {
	default
	export APP="crex"

	mkdir -p build/release
	cd build/release

	cmake ../../ -DCMAKE_BUILD_TYPE="Release" -DCMAKE_INSTALL_PREFIX="${EPREFIX}"/usr

	sed -i \
		-e 's/usr\/local\/bin/usr\/bin/' \
		cmake_install.cmake || die
}

src_install() {
	cd build/release
	emake DESTDIR="${D}" PREFIX="${EPREFIX}"/usr install
}
