FROM mcr.microsoft.com/devcontainers/base:ubuntu
# Install the xz-utils package
RUN apt-get update && apt-get install -y xz-utils sudo apt-get dotnet-sdk-6.0 nodejs npm
RUN npm install -g azure-functions-core-tools@4 --unsafe-perm true
