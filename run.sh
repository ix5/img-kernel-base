docker run \
    -v ~/dev/android/workdir/kernel/sony/msm-4.14/kernel:/srv/android/kernel/sony/msm-4.14/kernel \
    -v $PWD/common-kernel-4.14:/srv/android/kernel/sony/msm-4.14/common-kernel \
    -it \
    kernel-base:latest

#    -v $PWD/kernel-4.14:/srv/android/kernel/sony/msm-4.14/kernel \
