param(
  [string]$ISOPath="",
  [string]$ISOSHA1="",
  [string]$ConfigPath=""
)

packer.exe build `
  -var "iso_url=$($ISOPath)" `
  -var "iso_checksum=$($ISOSHA1)" `
$($ConfigPath)
