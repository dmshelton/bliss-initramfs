# Copyright (C) 2012, 2013 Jonathan Vasquez <jvasquez1011@gmail.com>
#
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

# Application Info
NAME="Bliss Initramfs Creator"
AUTHOR="Jonathan Vasquez"
EMAIL="jvasquez1011@gmail.com"
CONTACT="${AUTHOR} <${EMAIL}>"
VERSION="1.8.8"
LICENSE="MPLv2"

# Used only for documentation purposes
EXAMPLE_KERNEL="3.8.13-ALL"

# Parameters and Locations
HOME="$(pwd)"
DEPMOD="${HOME}/plugins/depmod"
TMP_CORE="${HOME}/temp_core"
TMP_KMOD="${HOME}/temp_kmod"

BIN="/bin"
SBIN="/sbin"
LIB="/lib"
LIB64="/lib64"
MAN="/usr/share/man"
UDEV="${LIB64}/udev"
ETC="/etc"

USR_BIN="/usr/bin"
USR_SBIN="/usr/sbin"
USR_LIB="/usr/lib"
USR_SHARE="/usr/share"
USR_EXEC="/usr/libexec"

LOCAL_BIN="${TMP_CORE}/${BIN}"
LOCAL_SBIN="${TMP_CORE}/${SBIN}"
LOCAL_LIB="${TMP_CORE}/${LIB}"
LOCAL_LIB64="${TMP_CORE}/${LIB64}"
LOCAL_MAN="${TMP_CORE}/${MAN}"
LOCAL_UDEV="${TMP_CORE}/${UDEV}"
LOCAL_ETC="${TMP_CORE}/${ETC}"
LOCAL_USR_SHARE="${TMP_CORE}/${USR_SHARE}"

MODULES=""        # will be set by the `setTargetKernel` function
LOCAL_MODULES=""  # will be set by the `setTargetKernel` function

# Plugins Directory
PLUGINS="${HOME}/plugins"

# Get CPU Architecture
ARCH="$(uname -m)"

# Preliminary binaries needed for the success of creating the initrd
# but that are not needed to be placed inside the initrd
PREL_BIN="/bin/cpio"

# Directories to create when generating the initramfs structure
CDIRS="
	${TMP_CORE}/bin \
	${TMP_CORE}/sbin \
	${TMP_CORE}/usr/bin \
        ${TMP_CORE}/proc \
	${TMP_CORE}/sys \
	${TMP_CORE}/dev \
	${TMP_CORE}/etc \
	${TMP_CORE}/mnt/root \
	${TMP_CORE}/libraries \
	${TMP_CORE}/lib"

# zpool.cache
ZCACHE="/etc/zfs/zpool.cache"

# Busybox
BB="${PLUGINS}/busybox/busybox"