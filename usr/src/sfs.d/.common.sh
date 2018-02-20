#!/bin/sh

: "${lbu:=/opt/LiveBootUtils}"
. "$lbu/scripts/common.func"

which npm >/dev/null || export PATH="$PATH:/opt/bin"

: "${ep_ver:=1.6.3}"
: "${ep_git:=https://github.com/ether/etherpad-lite.git}"

: "${ep_d:=$DESTDIR/srv/etherpad-lite}"
: "${var_d:=/var/lib/etherpad-lite}"

: "${ep_modules:=async-stacktrace express async ep_copypad ep_adminpads ep_fileupload ep_previewimages ep_authornames ep_table_of_contents ep_headings2}"
