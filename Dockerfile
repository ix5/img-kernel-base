FROM dev-base:latest

WORKDIR /srv/android

# For kernel script to find ANDROID_TOP
RUN touch /srv/android/.repo

# Clang suite - README determines latest version in oot script
COPY clang-r349610 /srv/android/prebuilts/clang/host/linux-x86/clang-r349610
COPY clang-README.md /srv/android/prebuilts/clang/host/linux-x86/README.md

# GCC for cross compile and vdso/32
COPY gcc-arm-linux-androideabi-4.9/ /srv/android/prebuilts/gcc/linux-x86/arm/arm-linux-androideabi-4.9/
COPY gcc-aarch64-linux-android-4.9/ /srv/android/prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9/

# mkdtimg for dtbo images
COPY mkdtimg /srv/android/out/host/linux-x86/bin/mkdtimg

# mkbootimg for boot.img
COPY libc++.so /srv/android/out/host/linux-x86/lib64/libc++.so
COPY mkbootimg /srv/android/out/host/linux-x86/bin/mkbootimg
