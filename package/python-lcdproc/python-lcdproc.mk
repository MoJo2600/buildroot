#############################################################
#
# python-lcdproc
#
#############################################################

PYTHON_LCDPROC_VERSION = 0.3
PYTHON_LCDPROC_SOURCE  = lcdproc-0.03.tar.gz
PYTHON_LCDPROC_SITE    = https://pypi.python.org/packages/source/l/lcdproc/
PYTHON_LCDPROC_DEPENDENCIES = python python-setuptools
PYTHON_LCDPROC_SETUP_TYPE = setuptools

$(eval $(python-package))
