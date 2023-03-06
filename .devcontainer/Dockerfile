FROM mcr.microsoft.com/dotnet/sdk:6.0

RUN apt-get update && apt-get install -y xz-utils nodejs npm
RUN npm install -g azure-functions-core-tools@4 --unsafe-perm true
export AzureFunctionsJobHost__extensionBundle__version="[1.*, 1.2.18)"