FROM rust:1.80.1-slim

RUN apt update
RUN rustup update
RUN apt install linux-perf build-essential pkg-config openssl libssl-dev librust-openssl-sys-dev wget curl -y 
RUN rustup component add rustfmt
RUN rustup component add clippy
RUN cargo install cargo-deb
RUN cargo install flamegraph
RUN cargo install cargo-get

RUN wget https://github.com/earthly/earthly/releases/latest/download/earthly-linux-amd64 -O /usr/local/bin/earthly && chmod +x /usr/local/bin/earthly && /usr/local/bin/earthly bootstrap --with-autocomplete
