AUFS_MODULES_SITE_METHOD = git
AUFS_MODULES_VERSION = aufs3.12.x
AUFS_MODULES_SITE = http://git.code.sf.net/p/aufs/aufs3-standalone

AUFS_MODULES_DEPENDENCIES = linux

define AUFS_MODULES_BUILD_CMDS
	$(MAKE) -C $(@D) $(LINUX_MAKE_FLAGS) KERNELDIR=$(LINUX_DIR)
endef

define AUFS_MODULES_INSTALL_TARGET_CMDS
	$(MAKE) -C $(@D) $(LINUX_MAKE_FLAGS) KERNELDIR=$(LINUX_DIR) modules_install
endef

$(eval $(generic-package))
