FROM rust:1.76

WORKDIR /build

RUN cargo install --git https://github.com/typst/typst --locked --tag 'v0.11.1' typst-cli
RUN cargo install --git https://github.com/astrale-sharp/typstfmt.git --tag '0.2.7'

WORKDIR /app

COPY typstfmt.toml .

ENTRYPOINT ["/bin/bash"]