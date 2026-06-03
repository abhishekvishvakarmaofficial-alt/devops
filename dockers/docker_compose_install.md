# Install Docker Compose (Plugin Method)

This guide explains how to install Docker Compose v5.1.2 as a Docker CLI plugin on Linux.

---

## 1️⃣ Update apt package list
Updates apt’s package list so your system knows the latest available packages before installing or upgrading.

```bash
sudo apt-get update
```

## 2️⃣ Set DOCKER_CONFIG
Sets `DOCKER_CONFIG` to its current value if already set, otherwise to `$HOME/.docker`.

```bash
DOCKER_CONFIG=${DOCKER_CONFIG:-$HOME/.docker}
```

## 3️⃣ Create CLI plugins directory
Creates the `"$DOCKER_CONFIG/cli-plugins"` directory (and any parent dirs) if missing.

```bash
mkdir -p $DOCKER_CONFIG/cli-plugins
```

## 4️⃣ Download Docker Compose binary
Downloads the Docker Compose v5.1.2 x86_64 binary and saves it to `$DOCKER_CONFIG/cli-plugins/docker-compose`.

```bash
curl -SL https://github.com/docker/compose/releases/download/v5.1.2/docker-compose-linux-x86_64 \
  -o $DOCKER_CONFIG/cli-plugins/docker-compose
```

## 5️⃣ Make binary executable
Adds execute permission so Docker can run it as a CLI plugin.

```bash
chmod +x $DOCKER_CONFIG/cli-plugins/docker-compose
```

## 6️⃣ Install apt-managed plugin (optional)
Installs the distribution package `docker-compose-plugin` (optional alternative to manual install).

```bash
sudo apt-get install docker-compose-plugin
```

## 7️⃣ Verify installation
Prints the Docker Compose CLI plugin version and confirms Docker recognizes it.

```bash
docker compose version
```

✅ Docker Compose is now installed as a CLI plugin.
