#############################################################
#
# python-mpdlcd
#
#############################################################

PYTHON_MPDLCD_VERSION = 0.4.0
PYTHON_MPDLCD_SOURCE  = mpdlcd-0.4.0.tar.gz
PYTHON_MPDLCD_SITE    = https://pypi.python.org/packages/source/m/mpdlcd/
PYTHON_MPDLCD_DEPENDENCIES = python python-setuptools python-lcdproc python-mpd2
PYTHON_MPDLCD_SETUP_TYPE = setuptools

$(eval $(python-package))
