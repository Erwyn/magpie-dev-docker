#!/bin/bash

supervisord -c /etc/supervisord.conf
tail -f /root/magpie.log
