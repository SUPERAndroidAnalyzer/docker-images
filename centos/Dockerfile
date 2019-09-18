FROM centos:latest

# Install latest Rust version
RUN yum update -y
RUN yum install -y curl rpm-build rpmdevtools
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
# RUN source ~/.cargo/env
RUN rpmdev-setuptree

CMD ["bash"]
