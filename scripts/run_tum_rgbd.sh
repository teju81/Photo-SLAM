tum_dataset=$1

if ["${tum_dataset}" == "tum_freiburg1_desk"]; then
  ../bin/tum_rgbd \
  ../ORB-SLAM3/Vocabulary/ORBvoc.txt \
  ../cfg/ORB_SLAM3/RGB-D/TUM/tum_freiburg1_desk.yaml \
  ../cfg/gaussian_mapper/RGB-D/TUM/tum_freiburg1_desk.yaml \
  /root/code/datasets/tum/rgbd_dataset_freiburg1_desk \
  /root/code/datasets/tum/rgbd_dataset_freiburg1_desk/association.txt \
  /root/code/output/
else
  echo "Usage: run_tum_rgbd.sh $tum_dataset" 
fi
