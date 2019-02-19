# vagrant_docker_postgres

Para acceder a la bd desde:

HOST>  psql -h localhost -p 7001 -U postgres
(pass: docker)

DOCKERVM> docker exec -it <id> bash
DOCKERVM> psql -h localhost -U postgres
(pass: docker)
