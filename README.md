# choreonoid-docker

choreonoid を docker で動かすために Dockerfile を記述しました

DockerHub: https://hub.docker.com/r/nopsan/choreonoid

# Run on Linux or Win11 WSL

```bash
docker run --name choreonoid -e DISPLAY --net=host -v /tmp/.X11-unix:/tmp/.X11-unix -it nopsan/choreonoid
```

# Run on Mac

```bash
docker run --name choreonoid -e DISPLAY=host.docker.internal:0 -it nopsan/choreonoid
```

# Build

```
git clone https://github.com/NOPLAB/choreonoid-docker --recursive

docker build -t nopsan/choreonoid .
```

