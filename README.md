# Mina Protocol Node

This repo contains a Dockerfile with a fully configured environment for generating keypairs,
developing, and running a Mina node. 

## Getting Started

First build the Docker environment:

```
docker build -t mina .
```

Then start an interactive session:

```
docker run -it --rm --name mina --entrypoint bash -p 8302:8302 mina
```

Generate a key pair and validate the pair:

```
mina-generate-keypair --privkey-path /mina/keys/my-wallet
mina-validate-keypair --privkey-path /mina/keys/my-wallet
```

Open the Mina Node environment, called `.mina-env` (included in the repo), and update the content by
adding your passphrase for the keys you generated. 

```
vim /mina/.mina-env
```

Start a `tmux` session and start the Mina node:

```
tmux new -s daemon
mina daemon
```

You can exit the tmux session while leaving the daemon running by pressing `Cntl+b d`. Return to the `tmux` session
running your daemon by running `tmux a -t daemon`.