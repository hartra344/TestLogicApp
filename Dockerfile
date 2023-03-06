FROM mcr.microsoft.com/devcontainers/base:ubuntu
# Install the xz-utils package
RUN wget https://packages.microsoft.com/config/ubuntu/21.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb

#install the package
RUN sudo dpkg -i packages-microsoft-prod.deb

#delete the download
RUN rm packages-microsoft-prod.deb
RUN apt-get update && apt-get install -y xz-utils sudo apt-get nodejs npm apt-transport-https dotnet-sdk-6.0
RUN npm install -g azure-functions-core-tools@4 --unsafe-perm true
