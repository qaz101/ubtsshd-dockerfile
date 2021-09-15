#!/bin/bash
if [[ $SSHKEY ]]; then
	echo -n "$SSHKEY" >>/root/.ssh/authorized_keys 
fi

exec "/usr/sbin/sshd" "-D" 
