#!/bin/bash
if [[ $SSHKEY ]]; then
	echo -n "$SSHKEY" >>/root/.ssh/authorized_keys 
fi

ssserver -p 7111 -k "$SSPASS" -m chacha20 --user nobody -d start
exec "/usr/sbin/sshd" "-D" 
