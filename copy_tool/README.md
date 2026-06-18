# Copy Tool

Tmux pipes your selection to a system 'copy tool' so it lands on the clipboard
(see the `copy-pipe-and-cancel` bindings in [.tmux.conf](../tmux/.tmux.conf)).
You need one installed for [copying in tmux](../tmux/tmux_how_to.md) to work.

Which tool you use depends on your OS.

## macOS

`pbcopy` ships with macOS, so there is nothing to install. The config uses it
by default:

```shell
bind-key -T copy-mode-vi y send-keys -X copy-pipe-and-cancel "pbcopy"
```

## Linux

Install `xclip`:

```bash
sudo apt install xclip
```

Then switch the copy bindings in `~/.tmux.conf` to pipe to `xclip` instead of
`pbcopy` (the Linux line is already present, just commented out):

```shell
bind -T copy-mode-vi y send-keys -X copy-pipe-and-cancel 'xclip -in -selection clipboard'
```

## Check installation

```shell
echo "hello" | pbcopy                        # mac
echo "hello" | xclip -selection clipboard    # linux
```
