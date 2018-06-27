<<<<<<< HEAD
# Amodal Detection of 3D Objects: Inferring 3D Bounding Boxes from 2D Ones in RGB-Depth Images

By [Zhuo Deng](http://www.dnnseye.com), [Longin Jan Latecki](https://cis.temple.edu/~latecki/) (Temple University).
This paper was published in CVPR 2017.

## License 

Code is released under the GNU GENERAL PUBLIC LICENSE (refer to the LICENSE file for details).

## Cite The Paper
If you use this project for your research, please consider citing:

    @inproceedings{zhuo17amodal3det,
        author = {Zhuo Deng and Longin Jan Latecki},
        booktitle = {Conference on Computer Vision and Pattern Recognition (CVPR)},
        title = {Amodal Detection of 3D Objects: Inferring 3D Bounding Boxes from 2D Ones in RGB-Depth Images},
        year = {2017}
    }


## Contents
1. [System requirements](#system)
2. [Basic Installation](#install)
3. [Usage](#usage)

## System requirements
The code is tested on the following system:
1. OS: Ubuntu 14.04
2. Hardware: Nvidia Titan X (GPU usage: ~9GB)
3. Software: Caffe, CUDA-7.5, cuDNN v4, Matlab 2015a, Anaconda2

## Basic Installation
1. clone the Amodal3Det repository: 
    ```Shell
    git clone https://github.com/phoenixnn/Amodal3Det.git

    ```
2. build Caffe:
    ```Shell
    # assume you clone the repo into the local your_root_dir
    cd your_root_dir
    make all -j8 && make pycaffe
    ```
3. install cuDNN:
    ```Shell
    sudo cp cudnn_folder/include/cudnn.h /usr/local/cuda-7.5/include/
    sudo cp cudnn_folder/lib64/*.so* /usr/local/cuda-7.5/lib64/
    ```

## Usage
1. Download NYUV2 dataset with 3D annotations and unzip:
    ```Shell
    wget 'https://cis.temple.edu/~latecki/TestData/DengCVPR2017/NYUV2_3D_dataset.zip' -P your_root_dir/dataset/NYUV2/
    ```
2. Download precomputed 2D segment proposals based on MCG3D and unzip:
    ```Shell
    wget 'https://cis.temple.edu/~latecki/TestData/DengCVPR2017/Segs.zip' -P your_root_dir/matlab/NYUV2/
    ```
3. Download pretrained models and unzip:
    ```Shell
    wget 'https://cis.temple.edu/~latecki/TestData/DengCVPR2017/pretrained.zip' -P your_root_dir/rgbd_3det/
    ```
    VGG16 comes from the [Caffe Model Zoo](https://github.com/BVLC/caffe/wiki/Model-Zoo), 
    but is provided here for your convenience.

4. Run "your_root_dir/matlab/NYUV2/pipeline.m" in Matlab to extact required data.
5. Set up training/test data:

   run "setup_training_data.py" and "setup_testing_data.py" under your_root_dir/rgbd_3det/data respectively
6. Train model:
    ```Shell
    cd your_root_dir
    ./trainNet.sh
    ```
7. Test model: run "test_cnn.py"


=======
# Caffe

[![Build Status](https://travis-ci.org/BVLC/caffe.svg?branch=master)](https://travis-ci.org/BVLC/caffe)
[![License](https://img.shields.io/badge/license-BSD-blue.svg)](LICENSE)

Caffe is a deep learning framework made with expression, speed, and modularity in mind.
It is developed by Berkeley AI Research ([BAIR](http://bair.berkeley.edu))/The Berkeley Vision and Learning Center (BVLC) and community contributors.

Check out the [project site](http://caffe.berkeleyvision.org) for all the details like

- [DIY Deep Learning for Vision with Caffe](https://docs.google.com/presentation/d/1UeKXVgRvvxg9OUdh_UiC5G71UMscNPlvArsWER41PsU/edit#slide=id.p)
- [Tutorial Documentation](http://caffe.berkeleyvision.org/tutorial/)
- [BAIR reference models](http://caffe.berkeleyvision.org/model_zoo.html) and the [community model zoo](https://github.com/BVLC/caffe/wiki/Model-Zoo)
- [Installation instructions](http://caffe.berkeleyvision.org/installation.html)

and step-by-step examples.

## Custom distributions

 - [Intel Caffe](https://github.com/BVLC/caffe/tree/intel) (Optimized for CPU and support for multi-node), in particular Xeon processors (HSW, BDW, SKX, Xeon Phi).
- [OpenCL Caffe](https://github.com/BVLC/caffe/tree/opencl) e.g. for AMD or Intel devices.
- [Windows Caffe](https://github.com/BVLC/caffe/tree/windows)

## Community

[![Join the chat at https://gitter.im/BVLC/caffe](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/BVLC/caffe?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

Please join the [caffe-users group](https://groups.google.com/forum/#!forum/caffe-users) or [gitter chat](https://gitter.im/BVLC/caffe) to ask questions and talk about methods and models.
Framework development discussions and thorough bug reports are collected on [Issues](https://github.com/BVLC/caffe/issues).

Happy brewing!

## License and Citation

Caffe is released under the [BSD 2-Clause license](https://github.com/BVLC/caffe/blob/master/LICENSE).
The BAIR/BVLC reference models are released for unrestricted use.

Please cite Caffe in your publications if it helps your research:

    @article{jia2014caffe,
      Author = {Jia, Yangqing and Shelhamer, Evan and Donahue, Jeff and Karayev, Sergey and Long, Jonathan and Girshick, Ross and Guadarrama, Sergio and Darrell, Trevor},
      Journal = {arXiv preprint arXiv:1408.5093},
      Title = {Caffe: Convolutional Architecture for Fast Feature Embedding},
      Year = {2014}
    }
>>>>>>> caffe/master
