#!/bin/bash
# get all filename in specified path
# image_path=./kitti_test/

image_path=/media/eralien/ReservoirLakeBed1/Data/TUM/rgbd_dataset_freiburg1_room/rgb/
log_path=./prediction_info.txt
list_file=./TUM_list.txt

rm -f $log_path
echo "" > $log_path

if test -s $list_file; then
    echo "Kitti list file exist"
else
    echo "Generaing kitti list..."
    files=$(ls $image_path)
    for filename in $files
    do
        echo $filename >> $list_file
    done
    echo "Done"
    
    echo "prediction_info txt deleted"
fi


