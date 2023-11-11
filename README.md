# choreonoid-docker

choreonoid を docker で動かすために Dockerfile を記述しました

DockerHub: https://hub.docker.com/r/nopsan/choreonoid

# Run on Linux or Win11 WSL

```bash
docker run --name choreonoid -e DISPLAY --net=host -v /tmp/.X11-unix:/tmp/.X11-unix -it nopsan/choreonoid bin/bash
```

# Run on Mac

```bash
docker run --name choreonoid -e DISPLAY=$(hostname):0 -v ~/.Xauthority:/root/.Xauthority -it nopsan/choreonoid bin/bash
```

# Build

```
docker build -t nopsan/choreonoid .
```

