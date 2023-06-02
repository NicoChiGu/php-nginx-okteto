cat <<-EOF > ~/.okteto/context/config.json
{
  "contexts": {
    "https://cloud.okteto.com": {
      "name": "https://cloud.okteto.com",
      "id": "${okteto_id}",
      "username": "${okteto_username}",
      "token": "${okteto_token}",
      "namespace": "${okteto_namespace}",
      "builder": "tcp://buildkit.cloud.okteto.net:443",
      "registry": "registry.cloud.okteto.net",
      "certificate": "${okteto_certificate}",
      "personalNamespace": "${okteto_personalNamespace}",
      "isOkteto": true
    }
  },
  "current-context": "https://cloud.okteto.com"
}
EOF
