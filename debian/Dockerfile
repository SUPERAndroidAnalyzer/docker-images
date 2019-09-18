FROM debian:latest

# Install latest Rust version
RUN apt-get install -y curl
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

CMD ["bash"]
