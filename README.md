# choreonoid-docker

choreonoid を docker で動かすために Dockerfile を記述しました

# Build and run

## Build

```
$ docker build -t nopsan/choreonoid .
```

## Run on Windows

```bash

```

## Run on Linux

```bash

```

## Run on Mac

```bash
$ docker run --name choreonoid -e DISPLAY=$(hostname):0 -v ~/.Xauthority:/root/.Xauthority -it nopsan/choreonoid bin/bash
```
