FROM golang:1.21-alpine as build

WORKDIR /app

# Install dev dependencies
RUN apk update && apk add --no-cache wget git gcc musl-dev make sqlite

# Pull source code
RUN git clone https://github.com/oxtyped/gpodder2go.git /app

# Make
RUN cd /app && make build

FROM golang:1.21-alpine as production

WORKDIR /app

EXPOSE 3005

ENV VERIFIER_SECRET_KEY=""
ENV ADMIN_USERNAME="admin"
ENV ADMIN_EMAIL="admin@local"
ENV ADMIN_PASSWORD="password"
ENV ADMIN_NAME="Administrator"
ENV DATABASE_FILE="g2g.db"

# Install Go Migrate
COPY --from=migrate/migrate:latest /usr/local/bin/migrate /usr/local/bin/migrate

# Install dependencies
RUN apk update && apk add --no-cache sqlite

# Copy compiled gpodder2go binary
COPY --from=build /app/gpodder2go /usr/local/bin/gpodder2go

# Run
COPY entrypoint.sh /app/entrypoint.sh

# Ensure entrypoint is executable
RUN chmod +x /app/entrypoint.sh

# Run
CMD ["./entrypoint.sh"]
