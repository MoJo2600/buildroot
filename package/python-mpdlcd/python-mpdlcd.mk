#############################################################
#
# python-mpdlcd
#
#############################################################

PYTHON_MPDLCD_VERSION = 0.4.0
PYTHON_MPDLCD_SOURCE  = mpdlcd-0.4.0.tar.gz
PYTHON_MPDLCD_SITE    = https://pypi.python.org/packages/source/m/mpdlcd/
PYTHON_MPDLCD_DEPENDENCIES = python python-setuptools python-lcdproc
PYTHON_MPDLCD_SETUP_TYPE = setuptools

#define PYTHON_MPDLCD_BUILD_CMDS
#	(cd $(@D); $(HOST_DIR)/usr/bin/python setup.py build)
#endef

#define PYTHON_MPDLCD_INSTALL_TARGET_CMDS
#	(cd $(@D); $(HOST_DIR)/usr/bin/python setup.py install --prefix=$(TARGET_DIR)/usr)
#endef

$(eval $(python-package))
