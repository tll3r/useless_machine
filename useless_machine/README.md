# Useless Machine Ansible Role

This repository contains a tiny Ansible role that deploys and runs a truly *useless* script on remote hosts. The script prints a short message and immediately deletes itself, leaving no trace—much like the classic physical "useless machine" that exists only to switch itself off.

Learn more about the original concept here: <https://en.wikipedia.org/wiki/Useless_machine>

## Quick start

```bash
# run against your inventory
ansible-playbook -i inventory deploy_useless_machine.yml
```

By default the script is copied to `/tmp/useless_script.sh`. You can override this path:

```bash
ansible-playbook -i inventory deploy_useless_machine.yml \
  -e useless_script_remote_path=/var/tmp/self_delete.sh
```

## Structure

```
roles/
└── useless_machine/
    ├── defaults/
    │   └── main.yml          # default variables
    ├── files/
    │   └── useless_script.sh # self-deleting bash script
    └── tasks/
        └── main.yml          # copy + execute + show output
```

## License

MIT 