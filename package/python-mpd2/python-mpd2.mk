#############################################################
#
# python-mpd2
#
#############################################################

PYTHON_MPD2_VERSION = 0.5.3
PYTHON_MPD2_SOURCE  = python-mpd2-0.5.3.tar.gz
PYTHON_MPD2_SITE    = https://pypi.python.org/packages/source/p/python-mpd2/
PYTHON_MPD2_DEPENDENCIES = python python-setuptools
PYTHON_MPD2_SETUP_TYPE = distutils

$(eval $(python-package))
