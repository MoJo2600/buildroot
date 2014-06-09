#############################################################
#
# python-rpigpio
#
#############################################################

PYTHON_RPIGPIO_VERSION = 0.5.4
PYTHON_RPIGPIO_SOURCE  = RPi.GPIO-0.5.4.tar.gz
PYTHON_RPIGPIO_SITE    = https://pypi.python.org/packages/source/R/RPi.GPIO/

PYTHON_RPIGPIO_DEPENDENCIES = python

define PYTHON_RPIGPIO_BUILD_CMDS
	(cd $(@D); $(HOST_DIR)/usr/bin/python setup.py build)
endef

define PYTHON_RPIGPIO_INSTALL_TARGET_CMDS
	(cd $(@D); $(HOST_DIR)/usr/bin/python setup.py install --prefix=$(TARGET_DIR)/usr)
endef

$(eval $(generic-package))
