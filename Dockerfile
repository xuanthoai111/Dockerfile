# Dùng Ubuntu base
FROM ubuntu:22.04

# Cài curl và các gói cơ bản
RUN apt-get update -y && \
    apt-get install -y curl bash && \
    rm -rf /var/lib/apt/lists/*

# Khi container start -> chạy sshx
CMD curl -sSf https://sshx.io/get | sh -s run
