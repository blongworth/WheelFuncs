# Fixing a sample changer error with vim.

Find the error. Pulling relevant data with the `cutwheel.sh` script
in this directory can help.

```
./cutwheel.sh WHEEL > outfile
```

Open both files in vim (split screen).

```
:sp outfile
```

Set up tabs and wrap to allow block selection.

```
:set nowrap
:set tabstop=21
```

Set windows to scroll together: `set scrollbind` or `:set scb!`

Once the skip is located, move to the beginning of the bad data,
block select, delete and put it a row down.

```
ctrl-v G $ d j p
```

This can be put into a macro with

```
q a ctrl-v G $ d j p q
```

Replay with `@ a`

Delete the line without data.

```
k dd
```

Repeat until all skips are fixed.

Remove bad lines from bottom of file.

