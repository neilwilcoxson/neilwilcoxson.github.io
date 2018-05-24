#!/bin/bash

for i in $(find . -name *.html)
do
    echo $i
    sed -nr 's@https://i[0-9].wp.com/neilwilcoxson.com/wp-content/uploads/[0-9]+/[0-9]+/([A-Za-z0-9-]+)\.(.{3})\?.{,12}resize=([0-9]+)%2C([0-9]+)@\1-\3x\4.\2@g' < $i
done
    
