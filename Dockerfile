# Start from the official Vault image
FROM hashicorp/vault:latest

# Install curl
RUN apk add --no-cache curl

# Use Vault as the entrypoint
ENTRYPOINT ["vault"]