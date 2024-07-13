# Tmux Useful Commands

Useful commands for working with tmux using the configuration provided in this repository.

## How to copy

- Start a selection with `ctrl+a` and then `[`
- Move up with arrow keys to area you want to copy and use `v` to select
- Press `y` to copy selected area to clipboard

## How to split panes

- split in half horizontally with `ctrl+a` and then `"`
- split in half vertically with `ctrl+a` and then `%`

## tmux useful commands

list sessions

```bash
tmux ls
```

delete session

```bash
tmux kill-session -t <session_name>
```
