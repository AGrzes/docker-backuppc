#!/bin/bash
/usr/sbin/service backuppc start
/usr/sbin/service apache2 start
/usr/bin/tail -f /var/log/dmesg
