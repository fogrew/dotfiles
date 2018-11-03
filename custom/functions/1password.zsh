# 1password - most handy passwords keychain for mac
# https://support.1password.com/command-line-getting-started/

# Authentification
# Sessions automatically expire after 30 minutes of inactivity. To manually use 1p-signout
1p-signin() {
  eval $(op signin my)
}

# Logout
1p-signout() {
  op signout
}

# Get login of passed item
# @param (string) - UUID or name of site in 1password
# @see https://support.1password.com/command-line/#get-details
1p-get-login() {
  op get item $1 | jq -r '.details.fields[] | select(.designation=="username").value'
}

# Get password of passed item
# @param (string) - UUID or name of site in 1password
# @see https://support.1password.com/command-line/#get-details
1p-get-pass() {
  op get item $1 | jq -r '.details.fields[] | select(.designation=="password").value'
}

# Get totp of passed item
# @param (string) - UUID or name of site in 1password
# @see https://support.1password.com/command-line/#get-details
1p-get-totp() {
  op get totp $1
}

# Get login of passed item
# @param (string) - UUID or name of site in 1password
# @see https://support.1password.com/command-line/#get-details
# 1p-create-login() {
#   op get item $1 | jq -r '.details.fields[] | select(.designation=="username").value'
# }