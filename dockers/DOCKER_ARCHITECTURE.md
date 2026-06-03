# Docker Architecture — Easy Notes

## Overview (plain language)
Docker lets you package an application and its dependencies into portable, lightweight containers. Containers run on top of a host OS kernel using OS features (namespaces, cgroups) and are managed by Docker components.

## High-level components
- Docker Client: CLI (`docker`) or API clients you use to talk to Docker.
- Docker Daemon (`dockerd`): Service that builds, runs, and manages containers.
- Container Runtime: `containerd` + low-level runtime `runc` (or alternate OCI runtimes) that actually create containers.
- Images: Read-only templates (layers) used to create containers.
- Containers: Running instances created from images.
- Registry: Remote storage for images (Docker Hub, GitHub Container Registry, GitLab Registry, private registries).
- Storage & Networking: Volumes, bind mounts, networks (bridge, overlay, host).

## Simple lifecycle (edit → run)
1. Build image: `docker build -t myapp:1.0 .`
2. Push image: `docker push registry/myapp:1.0`
3. Pull/run image: `docker run --name myapp -d registry/myapp:1.0`
4. Inspect logs: `docker logs myapp`
5. Stop/remove: `docker stop myapp && docker rm myapp`

## Core Linux features Docker uses
- Namespaces: isolate process view (pid, net, mount, uts, ipc, user)
- cgroups: limit/measure CPU, memory, I/O for containers
- Union filesystem (overlay2): layered image storage for images and copy-on-write

---

## Mermaid diagram (flow) — paste into a Mermaid renderer or VS Code with Mermaid preview

```mermaid
flowchart LR
  subgraph LocalHost
    direction TB
    Client[Docker Client\n(e.g. `docker` CLI)] -->|API/CLI| Daemon[Docker Daemon\n(`dockerd`) ]
    Daemon --> Containerd[containerd]
    Containerd --> Runc[`runc` (OCI runtime)]
    Runc --> Container[Container\n(Namespace + cgroup)]
    Daemon --> ImageStore[Image Store (layers, overlay2)]
    Daemon --> Volume[Volumes / Bind Mounts]
    Daemon --> Network[Docker Network (bridge/overlay)]
  end

  Registry[Image Registry\n(Docker Hub / GitLab / GHCR)] -->|pull/push| Daemon
  CI[CI/CD Pipeline] -->|build/push| Registry
  User[Developer] -->|git/CI| CI

  style Daemon fill:#f9f,stroke:#333,stroke-width:1px
  style Container fill:#fffae6,stroke:#333
  style Registry fill:#e6f7ff
```

---

## How data flows when you `docker run`
1. Client sends run request to `dockerd`.
2. `dockerd` checks local image store; if missing, it pulls from registry.
3. `dockerd` asks `containerd` to create the container.
4. `containerd` uses `runc` to set up namespaces/cgroups and start the process.
5. Container process runs isolated; `dockerd` manages lifecycle (stop, restart, logs).

## Networking & storage quick notes
- Default network is `bridge` (single-host). `overlay` spans multiple hosts (Swarm/Kubernetes overlay-like).
- Volumes are the preferred persistent storage for containers; bind mounts map host paths.

## Security & best practices (short)
- Run least-privileged containers; avoid `--privileged` unless necessary.
- Use minimal base images (e.g., distroless, alpine) to reduce attack surface.
- Scan images for vulnerabilities (Trivy, Clair, GitLab/GH dependabot scans).
- Use secrets manager or platform secret stores (not plain ENV in code) for credentials.

## Advanced pieces (single-line pointers)
- Docker Engine = `dockerd` + CLI + containerd
- containerd is a daemon that handles image transfer, snapshotting, and containers; `runc` implements the OCI runtime spec
- Kubernetes typically uses container runtimes (containerd/CRI) instead of directly using `dockerd`

---

## Quick reference commands
```bash
# Check daemon and info
docker info

# List images and containers
docker images
docker ps -a

# Inspect internals
docker inspect <container>

# View container process tree (shows PID namespace mapping)
ps aux | grep <container_pid>
```

---