#############################################################
#
# python-rpigpio
#
#############################################################

PYTHON_RPIGPIO_VERSION = 0.5.8
PYTHON_RPIGPIO_SOURCE  = RPi.GPIO-0.5.8.tar.gz
PYTHON_RPIGPIO_SITE    = https://pypi.python.org/packages/source/R/RPi.GPIO/
PYTHON_RPIGPIO_SETUP_TYPE = distutils

PYTHON_RPIGPIO_DEPENDENCIES = python

$(eval $(python-package))
