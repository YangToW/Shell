#!/bin/bash
# A Simple Shell Script To Get Linux Date & Hostname & Network Information
# Yang - 2021-2-3
echo "Current date : $(date) @ $(hostname)"
echo "Network configuration"
/sbin/ifconfig -a
echo ""
echo "Say something"
# HERE DOCUMENT 特性
<<COMMENT
	comment line 1
	comment line 2
	comment line n
COMMENT
echo "Do something else"
