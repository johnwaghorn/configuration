# Tmux Useful Commands

Useful commands for working with tmux generally.

## Create a session

```shell
tmux new-session -d -s <session_name>
tmux attach
```

## List sessions

```shell
tmux ls
```

## Attach to a session

Attach to a specific session by name:

```shell
tmux attach -t <session_name>
```

## Rename a session

```shell
tmux rename-session -t <old_name> <new_name>
```

## Delete a session

```shell
tmux kill-session -t <session_name>
```

## Reload the config

Apply changes to `~/.tmux.conf` without restarting tmux:

```shell
tmux source-file ~/.tmux.conf
```

## Kill the tmux server

Stop the server and every session it is running (use with care):

```shell
tmux kill-server
```
