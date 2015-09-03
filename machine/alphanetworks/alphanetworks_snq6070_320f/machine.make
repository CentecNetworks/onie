# Makefile fragment for Alpha Networks SNQ6070-320F

ONIE_ARCH ?= powerpc-softfloat

VENDOR_REV ?= 0

# Translate hardware revision to ONIE hardware revision
ifeq ($(VENDOR_REV),0)
  MACHINE_REV = 0
else
  $(warning Unknown VENDOR_REV '$(VENDOR_REV)' for MACHINE '$(MACHINE)')
  $(error Unknown VENDOR_REV)
endif

UBOOT_MACHINE = SNQ6070_320F
KERNEL_DTB = snq6070_320f.dtb

# Vendor ID -- IANA Private Enterprise Number:
# http://www.iana.org/assignments/enterprise-numbers
VENDOR_ID = 31874

# Set Linux kernel version
LINUX_VERSION		= 3.2
LINUX_MINOR_VERSION	= 69

# Specify uClibc version
UCLIBC_VERSION = 0.9.32.1

#-------------------------------------------------------------------------------
#
# Local Variables:
# mode: makefile-gmake
# End: