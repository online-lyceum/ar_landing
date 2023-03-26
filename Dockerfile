FROM ubuntu:22.04 as builder
WORKDIR /build
COPY ./app/ /build/dist/


FROM nginx:stable
COPY --from=builder /build/dist /usr/share/nginx/html

