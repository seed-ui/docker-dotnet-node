FROM mcr.microsoft.com/dotnet/core/sdk:3.1

LABEL maintainer Narazaka

RUN apt-get -qq update \
    && apt-get -qq install -y \
    build-essential \
    nodejs \
    npm \
    zip \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN echo 'export PATH="$PATH:/root/.dotnet/tools"' >> ~/.bashrc
