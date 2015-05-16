#############################################################
#
# python-mradio
#
#############################################################

PYTHON_MRADIO_VERSION = master
PYTHON_MRADIO_SITE    = $(call github,MoJo2600,mpdlcd,$(PYTHON_MRADIO_VERSION))
PYTHON_MRADIO_DEPENDENCIES = python python-setuptools python-lcdproc python-mpd2
PYTHON_MRADIO_SETUP_TYPE = setuptools

$(eval $(python-package))
