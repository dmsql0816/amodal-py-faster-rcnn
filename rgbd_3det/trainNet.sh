#! /bin/bash

# save log file to 'rgbd_train.log'

python ./train_net_cmd.py --solver /home/cho/Amodal3Det/rgbd_3det/models/solver-19-bn.prototxt --setType trainval \
--weights /home/cho/Amodal3Det/rgbd_3det/models/rgbd_det_init_3d_allvgg.caffemodel 2>&1 | tee ./output/rgbd_train.log

