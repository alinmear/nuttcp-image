# nuttcp-image

Minimal Docker image for [nuttcp](https://nuttcp.net/), a network performance measurement tool.
Built automatically via GitHub Actions and published to the GitHub Container Registry.

## Usage

```bash
docker pull ghcr.io/alinmear/nuttcp-image:latest

# server mode
docker run --rm -p 5000:5000/tcp -p 5001:5001/udp -p 5001:5001/tcp \
  ghcr.io/alinmear/nuttcp-image:latest -S

# client mode (example)
docker run --rm ghcr.io/alinmear/nuttcp-image:latest <server-ip>
```

## Available tags

- `latest` — most recent build from the `main` branch
- `vX.Y.Z`, `vX.Y` — released versions (pushed via git tag, e.g. `v1.0.0`)
- `<git-sha>` — build for a specific commit

## Build

The image is built and published automatically by
[`.github/workflows/docker-publish.yml`](.github/workflows/docker-publish.yml) on every push to
`main` and on version tags (`vX.Y.Z`). Pull requests only build the image to verify it still
works, without pushing.

To build locally:

```bash
docker build -t nuttcp-image .
```
