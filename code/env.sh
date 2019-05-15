export SECRET_KEY_BASE=$(mix phx.gen.secret)
export DATABASE_URL=ecto://USER:PASS@HOST/database
export DOCKER_HOST=tcp://192.168.64.6:2376
export DOCKER_CERT_PATH=/path/to/certs
export DOCKER_TLS_VERIFY=1