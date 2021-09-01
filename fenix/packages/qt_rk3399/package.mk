PKG_NAME="qt_rk3399"
PKG_VERSION="6185ba6c4190e6d07e74b28044134c2cb21d688a"
PKG_SHA256="78cb2768494035651054dc6e8c9cfbbe2b631fd767f21118fb9917062d0e2e30"
PKG_SOURCE_DIR="qt_rk3399-${PKG_VERSION}*"
PKG_SITE="$GITHUB_URL/numbqq/qt_rk3399"
PKG_URL="$PKG_SITE/archive/$PKG_VERSION.tar.gz"
[[ $DOWNLOAD_MIRROR == china ]] && \
{
PKG_SITE="$GITEE_URL/numbqq/qt_rk3399"
PKG_URL="$PKG_SITE/repository/archive/$PKG_VERSION.tar.gz"
PKG_SOURCE_DIR="$PKG_NAME"
PKG_SHA256="28943b979b1ea37504e740f38ca4be9f96c5e7f41f6927a234d346b9570e910f"
}
PKG_ARCH="arm64 armhf"
PKG_LICENSE="GPL"
PKG_SHORTDESC="Rockchip Video Player for vcodec driver deb packages for RK3399"
PKG_SOURCE_NAME="qt_rk3399-${PKG_VERSION}.tar.gz"
PKG_NEED_BUILD="NO"

make_target() {
	:
}

makeinstall_target() {
	mkdir -p $BUILD_DEBS/$VERSION/$KHADAS_BOARD/${DISTRIBUTION}-${DISTRIB_RELEASE}/qt
	# Remove old debs
	rm -rf $BUILD_DEBS/$VERSION/$KHADAS_BOARD/${DISTRIBUTION}-${DISTRIB_RELEASE}/qt/*
	cp ${DISTRIB_RELEASE}/${DISTRIB_ARCH}/*.deb $BUILD_DEBS/$VERSION/$KHADAS_BOARD/${DISTRIBUTION}-${DISTRIB_RELEASE}/qt
}
