# pigeoncoin-docker
Dockerfile for pigeoncoin


# Building

```bash
docker build -t pigeoncoin .
```

# Running

Customize config file `coin.conf` first.

```bash
# block dir
mkdir -p data
docker run --rm -itd --name ipgn -p 8756:8756 -v `pwd`/data:/opt/coin/data -v `pwd`/coin.conf:/opt/coin/coin.conf pigeoncoin
```

# Using pre-built docker image

```bash
docker run --rm -itd --name ipgn -p 8756:8756 -v `pwd`/data:/opt/coin/data -v `pwd`/coin.conf:/opt/coin/coin.conf mixhq/pigeoncoin
```
