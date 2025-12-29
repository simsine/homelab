# Aperture Science Home Laboratories

## Technical diagram

Can be edited with [drawio](https://app.diagrams.net/)

![Homelab diagram](./homelab.drawio.png)

## Ansible

First create a sudo password file and enter the sudo password

```bash
nano ./ansible/.sudo_password
```

To run ansible configurations

```bash
./run_config.sh
```

To run ansible host updates

```bash
./run_update.sh
```
