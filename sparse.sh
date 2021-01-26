mkdir -p clang
cd clang
git init
git config core.sparsecheckout true
mkdir -p .git/info/
echo "clang-r353983c/" > .git/info/sparse-checkout
git remote add -f origin https://android.googlesource.com/platform/prebuilts/clang/host/linux-x86/
git pull --depth=1 origin master
