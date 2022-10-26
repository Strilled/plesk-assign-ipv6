# Assign IPv6 addresses to Plesk Websites automatically
This script is to automatically assign IPv6 addresses to all subscriptions with a given IPv4 address (hosting and mailservice).

## General usage
Download the script and simply replace `1.1.1.1` with your IPv4 and `2606:4700:4700::1111` with your IPv6 address.

### Usage

```
./assign_ipv6.sh <path to logfile> 2>&1
```

Example:
```
./assign_ipv6.sh >> assign_ipv6_cron.log 2>&1
```

## Install as cronjob
Install it as cronjob to run periodically.

- run `sudo crontab -e -u root`
- add the following line
```
* * * * * /path/to/script/assign_ipv6.sh >> /path/to/logfile/assign_ipv6_cron.log 2>&1
```
