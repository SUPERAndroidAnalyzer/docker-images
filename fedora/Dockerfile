FROM fedora:latest

# Install latest Rust version
RUN dnf upgrade --refresh -y
# fedora-review
RUN dnf install -y curl fedora-packager
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
# RUN source ~/.cargo/env

CMD ["bash"]
