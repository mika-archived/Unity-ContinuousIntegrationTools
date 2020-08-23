# Unity Continuous Integration Tools

CI Tools for Unity

## Requirements

- Docker

## How to use

1. configure environment variables to below
   - `UNITY_VERSION`
   - `CIPHER_KEY`
2. Run `./docker/start-activation-container.sh`
3. Upload generated license file to Unity3D.
4. Download signed license file to `docker` directory.
5. Run `./encode.sh`
6. Copy output and Paste to environment variable in GitHub Actions, CircleCI and other services.
