FROM fedora:latest

# Install latest Rust version
RUN dnf upgrade --refresh -y
RUN dnf install -y curl fedora-packager gcc
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

CMD ["bash"]
