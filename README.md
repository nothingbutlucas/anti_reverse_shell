# anti_reverse_shell
Script to detect or close possibles reverse shell's running on your system

## Installation

### Clone the raw file of the script

```bash
wget https://raw.githubusercontent.com/nothingbutlucas/anti_reverse_shell/main/anti_reverse_shell.sh -P ~/.local/bin/
```

And then add a cron to your system

```bash
crontab -e
* * * * * ~/.local/bin/anti_reverse_shell.sh
```

If the script is on your path, you can directly execute it:

```bash
anti_reverse_shell.sh
```
