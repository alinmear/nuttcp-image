FROM debian:testing-slim
RUN apt-get update \
    && apt-get install -y --no-install-recommends nuttcp \
    && rm -rf /var/lib/apt/lists/*
EXPOSE 5000/tcp 5001/udp 5001/tcp
ENTRYPOINT ["nuttcp"]
