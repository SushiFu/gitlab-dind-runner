## Gitlab-multi-runner inside Docker in Docker

### Description

This image run a gitlab-multi-runner instance inside a Docker in Docker.
When a build is triggered from Gitlab, the build context is separate from real Docker host.
This prevents unwanted operations on Docker host like remove containers.

### Prerequisites

This image need to run with `privileged`.

### How to use
- Get `docker-compose.yml`:
``` bash
$ wget https://raw.githubusercontent.com/SushiFu/gitlab-dind-runner/master/docker-compose.yml
```

- Start container with docker-compose:
``` bash
$ docker-compose up -d
```

- Configure a runner with:
``` bash
$ docker exec -it <CONTAINER_NAME> gitlab-runner register
```

### LICENSE
MIT
