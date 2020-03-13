# multi-env-docker
multi-env-docker

http://127.0.0.1:8001/ - QA
http://127.0.0.1:8003/ - Prod

docker stop $(docker ps -q)


Reference: https://staxmanade.com/2016/07/run-multiple-docker-environments--qa--beta--prod--from-the-same-docker-compose-file-/
