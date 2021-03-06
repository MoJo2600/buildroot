################################################################################
#
# libffi
#
################################################################################

LIBFFI_VERSION = 3.3
LIBFFI_SITE = $(call github,libffi,libffi,v$(LIBFFI_VERSION))
LIBFFI_CPE_ID_VERSION = 3.3
LIBFFI_CPE_ID_VERSION_MINOR = rc0
LIBFFI_LICENSE = MIT
LIBFFI_LICENSE_FILES = LICENSE
LIBFFI_INSTALL_STAGING = YES
LIBFFI_AUTORECONF = YES

$(eval $(autotools-package))
$(eval $(host-autotools-package))
