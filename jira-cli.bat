@rem build image
docker build -t jira-cli .

@rem execute container
docker rm -f jira.cli
docker run -d --rm ^
    --name jira.cli ^
    jira-cli

@rem into container
docker exec -ti jira.cli bash
goto end
