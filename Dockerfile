ARG LUA_VERSION=5.3
FROM eliw00d/lua:${LUA_VERSION}

ENTRYPOINT ["luacheck"]
CMD ["."]

RUN luarocks install luacheck && \
    luarocks install luacov
