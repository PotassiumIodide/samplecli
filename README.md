# rust-with-nix-template
My template for Rust project with Nix.

# Usage

## Install Nixpkgs

### Windows - WSL2 (Ubuntu 20.04)

Install dependencies.

```bash
sudo apt update
sudo apt upgrade
sudo apt install git curl make xdg-utils -y
```

Add the following two lines to `.bashrc`.

```bash
PATH=$(/usr/bin/printenv PATH | /usr/bin/perl -ne 'print join(":", grep { !/\/mnt\/[a-z]/ } split(/:/));')
. ~/.nix-profile/etc/profile.d/nix.sh
```

Create a folder for nix:

```bash
sudo mkdir -p /etc/nix
```

Add the following two lines to `/etc/nix/nix.conf`:

```
sandbox = false
use-sqlite-wal = false
```

Now install nix:

```bash
curl -L https://nixos.org/nix/install | sh
```

## Enter the environment

Run the following command in the working directory.

```bash
nix-shell
```
