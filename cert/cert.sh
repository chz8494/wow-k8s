openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout tls.key -out tls.crt -subj "/CN=yeah.k8s.tdlab.ca/O=tdlab/C=CA/ST=Ontario/L=Toronto/OU=tdlab"
kubectl -n wow create secret tls wow-register \
  --cert=tls.crt \
  --key=tls.key
