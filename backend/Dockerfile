FROM golang:1.19.11

RUN apt update

WORKDIR /app

RUN useradd techverito && chown -R techverito:techverito /app

COPY --chown=techverito:techverito . .

RUN go get ./

EXPOSE 8080