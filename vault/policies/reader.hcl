path "/secret/*" {
    capabilities = ["list", "read"]
}

# Manage k/v secrets
path "kv/*" {
   capabilities = ["list"]
}

# Manage k/v secrets
path "kv-group/*" {
   capabilities = ["read", "list"]
}

path "ssh-user-ca/roles" {
  capabilities = ["list"]
}
path "ssh-user-ca/config/ca" {
  capabilities = ["read"]
}

path "ssh-user-ca/sign/ssh-user" {
  capabilities = ["update"]
  denied_parameters = {
    "key_id" = []
  }
}
