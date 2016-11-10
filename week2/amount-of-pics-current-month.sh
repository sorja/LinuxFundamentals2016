#!/bin/bash
#count curr month jpgs
ls -R /cs/home/tkt_cam/public_html/2011/$(date +%m)/ | grep jpg | wc -l