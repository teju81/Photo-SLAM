tum_dataset=$1

if [ -z "$tum_dataset" ]; then
  echo "Usage: $0 <tum_dataset>"
  exit 1
fi

if [ "${tum_dataset}" == "fr1_desk" ]; then
  ../bin/tum_rgbd \
  ../ORB-SLAM3/Vocabulary/ORBvoc.txt \
  ../cfg/ORB_SLAM3/RGB-D/TUM/tum_freiburg1_desk.yaml \
  ../cfg/gaussian_mapper/RGB-D/TUM/tum_freiburg1_desk.yaml \
  /root/code/datasets/tum/rgbd_dataset_freiburg1_desk \
  /root/code/datasets/tum/rgbd_dataset_freiburg1_desk/association.txt \
  /root/code/output/
elif [ "${tum_dataset}" == "fr1_room" ]; then
  echo "Other datasets to be done..."
else
  echo "Usage: $0 <tum_dataset>"
  exit 1
fi
