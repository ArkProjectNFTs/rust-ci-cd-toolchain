FROM rust:1.80.1

RUN apt update
RUN rustup update
RUN apt install -y linux-perf
RUN rustup component add rustfmt
RUN rustup component add clippy
RUN cargo install cargo-deb
RUN cargo install flamegraph

RUN wget https://github.com/earthly/earthly/releases/latest/download/earthly-linux-amd64 -O /usr/local/bin/earthly && chmod +x /usr/local/bin/earthly && /usr/local/bin/earthly bootstrap --with-autocomplete