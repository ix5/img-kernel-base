ANDROID_WORKDIR=~/dev/android/workdir

cp -r $ANDROID_WORKDIR/prebuilts/clang/host/linux-x86/clang-r353983b .

# Remove cruft
find clang-r349610 -type f -name "*.8svn" -exec rm {} \;
rm -r clang-r349610/runtimes_ndk_cxx/
# For finding latest clang version in out-of-tree script
cp $ANDROID_WORKDIR/prebuilts/clang/host/linux-x86/README.md clang-README.md

cp -r $ANDROID_WORKDIR/prebuilts/gcc/linux-x86/arm/arm-linux-androideabi-4.9/ gcc-arm-linux-androideabi-4.9
cp -r $ANDROID_WORKDIR/prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9/ gcc-aarch64-linux-android-4.9

cp $ANDROID_WORKDIR/out/soong/host/linux-x86/bin/mkbootimg .
cp $ANDROID_WORKDIR/out/soong/host/linux-x86/bin/mkdtimg .

# Needed for mkbootimg
cp $ANDROID_WORKDIR/out/host/linux-x86/lib64/libc++.so libc++.so
