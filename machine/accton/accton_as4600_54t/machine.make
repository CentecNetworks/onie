# Makefile fragment for Accton AS4600_54T

# Vendor's version number can be defined here.
# Available variables are 'VENDOR_VERSION' and 'UBOOT_IDENT_STRING'.
# e.g.,
# VENDOR_VERSION = .00.01
# UBOOT_IDENT_STRING = 1.4.0.1


ONIE_ARCH ?= powerpc-softfloat

VENDOR_REV ?= 0

# Translate hardware revision to ONIE hardware revision
ifeq ($(VENDOR_REV),0)
  MACHINE_REV = 0
else
  $(warning Unknown VENDOR_REV '$(VENDOR_REV)' for MACHINE '$(MACHINE)')
  $(error Unknown VENDOR_REV)
endif

EXT3_4_ENABLE = yes

UBOOT_MACHINE = AS4600_54T
KERNEL_DTB = as4600_54t.dtb

# Vendor ID -- IANA Private Enterprise Number:
# http://www.iana.org/assignments/enterprise-numbers
VENDOR_ID = 259

# Specify Linux kernel version
LINUX_VERSION		= 3.2
LINUX_MINOR_VERSION	= 69

# Specify uClibc version
UCLIBC_VERSION = 0.9.32.1

#-------------------------------------------------------------------------------
#
# Local Variables:
# mode: makefile-gmake
# End: