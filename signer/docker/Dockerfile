FROM rust:alpine as build

ARG STACKS_NODE_VERSION='2.4.0.0.0'
ARG GIT_URI='https://github.com/stacks-network/stacks-blockchain.git'
ARG GIT_BRANCH='2.4.0.0.0'

ENV STACKS_NETWORK=mainnet

WORKDIR /src

RUN apk add --no-cache musl-dev git clang-dev

RUN rustup component add rustfmt

RUN git clone ${GIT_URI} -b ${GIT_BRANCH} .

RUN mkdir /out

RUN RUSTFLAGS="-C target-feature=-crt-static" cargo build --release

RUN cp target/release/stacks-signer /bin

#RUN cp target/release/stacks-signer /out

#FROM alpine

#COPY --from=build /out/ /bin/

ENTRYPOINT ["stacks-signer"]
