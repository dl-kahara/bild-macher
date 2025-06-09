# A minimal example

```console
$ docker build -t mkosi .
$ docker run --rm -it --privileged -v $PWD:/workdir mkosi \
  mkosi -d ubuntu -p systemd -p udev -t disk -o ubuntu
```
