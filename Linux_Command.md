## File Management
* `ls` - list files in a directory
* `cd <diracory>` - change directory
* `mkdir <directory>` - Create a new directory.
* `rm <file> or rm -r <directory>` - Remove files or directories.
* `cp <source> <destination>` - Copy files or directories.
* `mv <source> <destination>` - Move or rename files.
* `touch <filename>` - Create an empty file.
* `locate "*.txt"` - to locate the files.
* `find <path> -name <pattern>` - Search for files.

## Text Manipulation
* `cat <file>` - View file contents.
* `less <file>` - Paginated file viewing.
* `nano <file>, vim <file>` - Edit files directly from the terminal.
* `grep '<pattern>' <file>` - Search text within files.
* `head <file>` - shows the first 10 lines.
* `tail <file>` - shows the last 10 lines.
* `diff <file1> <file2>` - compares the difference b/w files.
* `awk '{command}' <file>` - Process and analyze structured text.
* `sed 's/<search>/<replace>/g' <file>` - Find and replace within a file.

## System Monitoring
* `top or htop` - Monitor system processes.
* `df -h` - Check disk space usage.
* `du -sh <directory>` - Check directory size.
* `ps aux` - List all processes.
* `kill <pid> or kill -9 <pid>` - Terminate processes.

## Networking
* `ping <hostname>` - Test network connectivity.
* `curl <url> or wget <url>` - Fetch data from URLs.
* `ifconfig or ip addr` - Network interface details.
* `scp <source> <destination>` - Securely copy files between systems.

## File Permissions
* `chmod <permissions> <file>` - Modify file permissions.
* `chown <owner>:<group> <file>` - Change file owner and group.

## Compression
* `tar -czvf archive.tar.gz <files>` - Compress files into **tar.gz** format
* `unzip <archive.zip> or tar -xvf <archive.tar.gz>` - Extract archives.

## Utilities
* `alias ll='ls -la'` - Customize shortcuts.
* `man <command>` - View detailed documentation for commands.
* `history` - Show command history.
* `cron` - Schedule tasks (add jobs via crontab -e).
* `env` - View environment variables.



