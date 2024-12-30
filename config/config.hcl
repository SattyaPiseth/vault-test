storage "consul" {
  address = "consul_test:8500" # Consul service name and port
  path    = "vault/"
}

listener "tcp" {
  address        = "0.0.0.0:8200"
  tls_cert_file  = "/vault/certs/vault.crt"
  tls_key_file   = "/vault/certs/vault.key"
  tls_min_version = "tls12"
}

ui = true
api_addr = "https://host.docker.internal:8200"
