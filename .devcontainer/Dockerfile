ARG VARIANT=3
FROM mcr.microsoft.com/vscode/devcontainers/ruby:${VARIANT}

RUN gem install solargraph

# Environment variables required by Jekyll
ENV LANG="en_US.UTF-8" \
    LANGUAGE="en_US:en" \
    TZ="America/New_York" \
    LC_ALL="en_US.UTF-8" \
    LANG="en_US.UTF-8" \
    LANGUAGE="en_US"
