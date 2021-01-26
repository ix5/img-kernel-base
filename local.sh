#cp -r ~/dev/android/workdir/prebuilts/clang/host/linux-x86/clang-r353983c .
cp -r ~/dev/android/workdir/prebuilts/clang/host/linux-x86/clang-r349610 .
cp -r ~/dev/android/workdir/prebuilts/gcc/linux-x86/arm/arm-linux-androideabi-4.9/ gcc-arm-linux-androideabi-4.9
cp -r ~/dev/android/workdir/prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9/ gcc-aarch64-linux-android-4.9

cp ~/dev/android/workdir/prebuilts/clang/host/linux-x86/README.md clang-README.md

cp ~/dev/android/workdir/out/soong/host/linux-x86/bin/mkbootimg .
cp ~/dev/android/workdir/out/soong/host/linux-x86/bin/mkdtimg .

cp ~/dev/android/workdir/out/host/linux-x86/lib64/libc++.so libc++.so

#git \
#    -c protocol.version=2 clone \
#    --branch android-10.0.0_r45 \
#    --no-checkout \
#    --single-branch \
#    --depth=1 \
#    --filter=blob:none \
#    https://android.googlesource.com/platform/prebuilts/clang/host/linux-x86/ \
#    clang
