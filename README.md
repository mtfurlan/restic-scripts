# restic backup scripts

## cache dirs
ignoring them, use this for first pass excludes
see [https://bford.info/cachedir/](https://bford.info/cachedir/)
basically, just create a file named `CACHEDIR.TAG`:
```
Signature: 8a477f597d28d172789f06886806bc55
# This file is a cache directory manually marked as such
# For information about cache directory tags, see:
#	http://www.brynosaurus.com/cachedir/
```

## crontab
```
0 0 * * * chronic $HOME/src/restic-scripts/cron.sh
```
