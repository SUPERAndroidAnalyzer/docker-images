FROM centos:latest

# Install latest Rust version
RUN yum install -y curl
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

CMD ["bash"]
