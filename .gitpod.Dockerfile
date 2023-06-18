FROM gitpod/workspace-full

RUN sudo apt-get -q update

# Install Lua
RUN sudo apt-get install -yq lua5.4 luarocks
