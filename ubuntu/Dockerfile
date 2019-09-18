FROM ubuntu:latest

# Install latest Rust version
RUN apt-get update && apt-get full-upgrade -y
RUN apt-get install -y curl
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

CMD ["bash"]
