# Install Zsh

On Debian/Ubuntu, run:

```bash
sudo apt install zsh
```

On macOS, you probably already have it installed, but just in case:

```bash
brew install zsh
```

> [!NOTE]
> If you want to install Oh My Zsh! on Windows, you can follow the [Windows Zsh Terminal](./on_windows/windows_zsh_terminal.md) guide. Good luck!

## Set Zsh as the default shell

```bash
chsh -s $(which zsh)
```

Reboot for the changes to take effect.

## Check installation

Ensure you have zsh setup properly and not bash.

```shell
echo $0
```
