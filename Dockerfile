FROM ubuntu:18.04

RUN mkdir -p /opt/coin
WORKDIR /opt/coin

EXPOSE 8756

RUN apt update && apt install -y wget
RUN wget https://github.com/Pigeoncoin/pigeoncoin/releases/download/v0.17.0.3/pigeoncoin-0.17.0-x86_64-linux-gnu.tar.gz -O - | tar --strip-components 1 -C /opt/coin -xzf -

# cleanup
RUN rm -rf /var/lib/apt/lists/*

VOLUME ["/opt/coin/data", "/opt/coin/coin.conf"]

ENTRYPOINT ["/opt/coin/bin/pigeond"]
CMD ["-conf=/opt/coin/coin.conf"]
