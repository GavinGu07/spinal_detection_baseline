# Guide to run distributed training with BF16 data type
## Verified on

| Item | Value |
| -: | :- |
| OS | Ubuntu 20.04 LTS |
| Compiler | gcc 9.3.0 |
| GNU C Library | GLIBC 2.31

## Prepare your running environment
We recommend you to use Anaconda to prepare the enviroments

1. Build and install PyTorch
```
  conda install numpy ninja pyyaml mkl mkl-include setuptools cmake cffi typing_extensions future six requests
  # Add LAPACK support for the GPU if needed
  conda install -c pytorch magma-cuda102  # or [ magma-cuda101 | magma-cuda100 | magma-cuda92 ] depending on your cuda version
  git clone https://github.com/GavinGu07/pytorch.git
  cd pytorch
  git checkout tianchi-bf16
  export CMAKE_PREFIX_PATH=${CONDA_PREFIX:-"$(dirname $(which conda))/../"}
  python setup.py install
```
2. Build and install Torchvision
```
  git clone https://github.com/GavinGu07/vision.git
  cd vision
  git checkout tianchi-bf16
  python setup.py install
```

## Training with BF16
```
  bash run.sh
```
