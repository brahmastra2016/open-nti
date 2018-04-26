#!/bin/sh
mkdir -p /opt/telegraf/config
opennti=$(cat /etc/hosts | grep "opennti " | cut -f1)
sed s/opennti/$opennti/g /source/telegraf.tmpl > /opt/telegraf/config/telegraf.conf
sed s/INFLUXDB_ADDR/$INFLUXDB_ADDR/g /source/telegraf.tmpl > /opt/telegraf/config/telegraf.conf
/go/src/github.com/influxdata/telegraf/telegraf --config /opt/telegraf/config/telegraf.conf
#/go/bin/telegraf --config /opt/telegraf/config/telegraf.conf 

