param ([String] $hosts_string)

# $content = @"
# # GOAD hosts

# 192.168.56.10   sevenkingdoms.local
# 192.168.56.11   north.sevenkingdoms.local
# 192.168.56.12   essos.local
# "@

$content = $hosts_string -split ";"
foreach ($line in $content) {
    Add-Content -Path C:\Windows\System32\drivers\etc\hosts -Value $line
}

cat C:\Windows\System32\drivers\etc\hosts
