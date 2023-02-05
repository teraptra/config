# Manage k/v secrets
path "kv/*" {
   capabilities = ["list"]
}

# Manage k/v secrets
path "kv-group/*" {
   capabilities = ["create", "read", "update", "delete", "list"]
}

path "secrets/*" {
   capabilities = ["create", "read", "update", "delete", "list"]
}

path "pki*" {
	capabilities = ["create", "read", "update", "delete", "list"]
}

path "pki-root-ca*" {
  capabilities = ["list", "read"]
}

path "ssh-user-ca/sign/ssh-emerg" {
  capabilities = ["update"]
  denied_parameters = {
    "key_id" = []
  }
}
