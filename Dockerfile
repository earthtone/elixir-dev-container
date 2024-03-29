FROM elixir:latest
ENV DEBIAN_FRONTEND=noninteractive

# Install hex
RUN mix local.hex --force

# Install rebar
RUN mix local.rebar --force

# Install the Phoenix framework itself
# RUN mix archive.install https://github.com/phoenixframework/archives/raw/master/phoenix_new.ez --force
RUN mix archive.install hex phx_new 1.4.16

# Install NodeJS and the NPM
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -
RUN apt-get install -y -q nodejs

# Suggested https://hexdocs.pm/phoenix/installation.html
RUN apt-get update && apt-get install -y \
    inotify-tools \
 && rm -rf /var/lib/apt/lists/*

# When this image is run, make /app the current working directory
WORKDIR /app
