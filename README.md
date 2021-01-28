# Minimal build env for SODP kernel

Depends on `ix5/dev-base:latest` image, which provides `build-essential` and
most needed tools.

For re-creating: Clone `prebuilts/clang/host/linux-x86` from a current Android
10 tree (use `depth=1`!), set `ANDROID_WORKDIR` in `local.sh` and run it.

Then:
```
docker build -t kernel-base:dev .
docker image tag kernel-base:dev ghcr.io/ix5/kernel-base:dev
docker image push ghcr.io/ix5/kernel-base:dev
```
