# 1password - most handy passwords keychain for mac
# https://support.1password.com/command-line-getting-started/

# First authorize with key!
# 
# op signin <signinaddress> <emailaddress> <secretkey>
# 
# Example account details:
# <signinaddress>   example.1password.com
# <emailaddress>    user@example.com
# <secretkey>       A3-XXXXXX-XXXXXX-XXXXX-XXXXX-XXXXX-XXXXX

export OPSUBDOMAIN="my"

# Login snippet (session vs raw - see help: `op signin --help`)
local _op-signin() {
  op signin $OPSUBDOMAIN --output=raw
}

# Logout: op signout

# Get login of passed item
# @param (string) - UUID or name of site in 1password
# @see https://support.1password.com/command-line/#get-details
op-get-login() {
  _op-signin | op get item $1 | jq -r '.details.fields[] | select(.designation=="username").value'
}

# Get password of passed item
# @param (string) - UUID or name of site in 1password
# @see https://support.1password.com/command-line/#get-details
op-get-pass() {
  _op-signin | op get item $1 | jq -r '.details.fields[] | select(.designation=="password").value'
}

# Get totp of passed item
# @param (string) - UUID or name of site in 1password
# @see https://support.1password.com/command-line/#get-details
op-get-totp() {
  _op-signin | op get totp $1
}

# Get login of passed item
# @param (string) - UUID or name of site in 1password
# @see https://support.1password.com/command-line/#get-details
# 1p-create-login() {
#   op get item $1 | jq -r '.details.fields[] | select(.designation=="username").value'
# }