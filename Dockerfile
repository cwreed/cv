FROM rust:1.93

WORKDIR /build

RUN cargo install --git https://github.com/typst/typst --locked --tag 'v0.14.2' typst-cli
RUN cargo install typstyle --locked --version '0.14.4'

WORKDIR /app

ENTRYPOINT ["/bin/bash"]