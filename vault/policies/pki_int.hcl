path "pki_int*" { capabilities = ["read", "list"] }
path "pki_int/sign/teraptra-dot-local" { capabilities = ["create", "update"] }
path "pki_int/issue/teraptra-dot-local" { capabilities = ["create"] }

    path "pki/cert/ca" {
      capabilities = ["read"]
    }

    path "auth/token/renew" {
      capabilities = ["update"]
    }

    path "auth/token/renew-self" {
      capabilities = ["update"]
    }
