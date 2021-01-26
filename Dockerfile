FROM android-base:latest

WORKDIR /srv/android

# For kernel script to find ANDROID_TOP
RUN touch /srv/android/.repo

COPY clang-r353983c/ /srv/android/prebuilts/clang/host/linux-x86/clang-r353983c/
COPY clang-r349610 /srv/android/prebuilts/clang/host/linux-x86/clang-r349610/
COPY gcc-arm-linux-androideabi-4.9/ /srv/android/prebuilts/gcc/linux-x86/arm/arm-linux-androideabi-4.9/
COPY gcc-aarch64-linux-android-4.9/ /srv/android/prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9/
COPY clang-README.md /srv/android/prebuilts/clang/host/linux-x86/README.md

COPY libc++.so /srv/android/out/host/linux-x86/lib64/libc++.so

COPY mkdtimg /srv/android/out/host/linux-x86/bin/mkdtimg
COPY mkbootimg /srv/android/out/host/linux-x86/bin/mkbootimg

#VOLUME /srv/android/out
