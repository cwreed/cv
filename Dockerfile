FROM rust:1.93

WORKDIR /build

RUN cargo install --git https://github.com/typst/typst --locked --tag 'v0.14.2' typst-cli
RUN cargo install --git https://github.com/astrale-sharp/typstfmt.git --tag '0.2.10'

WORKDIR /app

COPY typstfmt.toml .

ENTRYPOINT ["/bin/bash"]