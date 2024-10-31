# RUST CI/CD TOOLCHAIN FOR RUST PROJECTS 
## INTRODUCTION
In order to solve slowness inside the current rust toolchain from github and in order to speed up process here is a toolchain with packages that permit flamegraph debian package etc ... to be build without any additional installation
## Usage 
You can pick 
### ON AMD64
```shell
DOCKER_BUILDKIT=0 sudo docker buildx build --ulimit nofile=1024000:1024000 --platform linux/amd64 --tag screenshotlabs/rust-ci-cd-toolchain:latest . --push
```
### ON ARM64
```shell
DOCKER_BUILDKIT=0 sudo docker buildx build --ulimit nofile=1024000:1024000 --platform linux/arm64 --tag screenshotlabs/rust-ci-cd-toolchain:latest . --push
```
### ON BOTH
```shell
DOCKER_BUILDKIT=0 sudo docker buildx build --ulimit nofile=1024000:1024000 --platform linux/amd64 --platform linux/arm64 --tag screenshotlabs/rust-ci-cd-toolchain:latest . --push
```