# logrotate in a container

Logrotate will run once a day

# usage

Mount your config to /etc/logrotate/logrotate.conf

e.g.

```
/var/log/access.json {
  su traefik traefik
  rotate 5
  daily
  compress
  missingok
  notifempty
  postrotate
    /usr/bin/killall -USR1 traefik
  endscript
}
```
