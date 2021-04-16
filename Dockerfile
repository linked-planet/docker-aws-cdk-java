FROM openjdk:14-slim

# ---------------------------------------------
# INSTALL AWS CDK
# ---------------------------------------------
RUN apt update && apt install -y \
  nodejs \
  npm \
  && rm -rf /var/lib/apt/lists/*
RUN node --version
RUN npm --version
RUN npm install -g aws-cdk
RUN cdk --version

