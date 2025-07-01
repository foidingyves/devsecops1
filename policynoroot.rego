package main

deny[msg] {
  input.spec.containers[_].securityContext.runAsUser == 0
  msg = "Les conteneurs ne doivent pas être lancés en tant que root (UID 0)."
}
