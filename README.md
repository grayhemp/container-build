# container-build

[![Build Status](https://travis-ci.org/grayhemp/container-build.svg?branch=master)](https://travis-ci.org/grayhemp/container-build)

An image helping to build images.

Under the hood it uses [img] wrapped with the [imgh] script
simplifying and improving buld and login/push operations.

## Usage

Use your favorite container runtime to run `grayhemp/build` (which is
essentially this image) in a privileged mode (so far) with environment
variables `REGISTRY_USER=<user>` and `export
REGISTRY_PASSWORD=/run/password` mounting your build context as
`/mnt/workspace`, registry password as `/run/password`, and running

```bash
make
make push
```

assuming you have a Makefile in the root of your build context as
[the one][Makefile] in this repo.

To persist the build cache mount a persistent storage as
`/root/.local/share/img`.

Please consult with the [Makefile] and [imgh] for more details.

[img]: https://github.com/genuinetools/img
[imgh]: scripts/imgh
[Makefile]: Makefile
