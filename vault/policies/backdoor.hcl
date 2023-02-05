# Allow managing leases
path "sys/leases/*"
{
  capabilities = ["create", "read", "update", "delete", "list", "sudo"]
}

# Manage auth methods broadly across Vault
path "auth/*"
{
  capabilities = ["create", "read", "update", "delete", "list", "sudo"]
}

# Create, update, and delete auth methods
path "sys/auth/*"
{
  capabilities = ["create", "update", "delete", "sudo"]
}

# List auth methods
path "sys/auth"
{
  capabilities = ["read"]
}

# List existing policies
path "sys/policies/acl"
{
  capabilities = ["read","list"]
}

# Create and manage ACL policies
path "sys/policies/acl/*"
{
  capabilities = ["create", "read", "update", "delete", "list", "sudo"]
}

# List, create, update, and delete key/value secrets
path "secret/*"
{
  capabilities = ["create", "read", "update", "delete", "list", "sudo"]
}

path "database*" {
	capabilities = ["create", "read", "update", "delete", "list", "sudo"]
}

# Manage secret engines
path "sys/mounts/*"
{
  capabilities = ["create", "read", "update", "delete", "list", "sudo"]
}

# List existing secret engines.
path "sys/mounts"
{
  capabilities = ["read"]
}

# Read health checks
path "sys/health"
{
  capabilities = ["read", "sudo"]
}

path "pki*" {
	capabilities = ["create", "read", "update", "delete", "list", "sudo"]
}

path "pki-root-ca*" {
  capabilities = ["create", "read", "update", "delete", "list", "sudo"]
}

path "ssh-user-ca/roles" {
  capabilities = ["create", "read", "update", "delete", "list", "sudo"]
}

path "ssh-user-ca/config/ca" {
  capabilities = ["create", "read", "update", "delete", "list", "sudo"]
}

path "ssh-user-ca/sign/ssh-user" {
  capabilities = ["create", "read", "update", "delete", "list", "sudo"]
}
