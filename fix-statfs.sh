#!/bin/bash
 
for db in /var/lib/ceph/osd/ceph-*/
do
  dev=`readlink -f $db`
  ceph-bluestore-tool repair --path ${dev}
done
