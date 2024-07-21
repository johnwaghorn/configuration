# Zsh and Oh My Zsh! on windows without WSL

This guide will show you how to install Zsh and Oh My Zsh! on Windows without using WSL. This will allow you to use Zsh as your default shell in Git Bash.

## Git

You will need to install Git for Windows. This will give you a bash terminal that you can use to run zsh.

- Download and install the latest version of Git for Windows from the [official website](https://git-scm.com/download/win).

## Zsh

Zsh can be installed and merged with Git Bash on Windows. This will allow you to use Zsh as your default shell in Git Bash.

- Download the latest MSYS2 Zsh [package](https://packages.msys2.org/package/zsh?repo=msys&variant=x86_64) from the MSYS2 package repository.

> The file will be named something along the lines of `zsh-#.#-#-x86_64.pkg.tar.zst`.

- Extract the contents of the archive into your Git Bash installation directory. This is likely to be under `C:\Program Files\Git`. Merge the contents of the folder if asked (no files should be getting overridden).
  - Merge the contents of the folder if asked.
- To verify the installation, open a Git Bash terminal and run `zsh --version`. You should see the version of Zsh you installed.

> [!NOTE]
> You can extract the zst files with [PeaZip](https://www.peazip.org/).

### Update your bashrc

Next you will need to modify your `.bashrc` file to start Zsh when you open Git Bash.

- Windows can mangle some UTF-8 encoded text, causing unexpected characters to be displayed in your terminal. To fix this, add the following to your `~/.bashrc` file, ideally, before the code that sets your shell as Zsh:

```sh
/c/Windows/System32/chcp.com 65001 > /dev/null 2>&1
```

- Add the following lines to the end of the your `.bashrc` file located in your home directory (usually `C:\Users\username`).

```sh
if [ -t 1 ]; then
    exec zsh
fi
```

- Restart your Git Bash terminal. You will be greeted with a Zsh message choose `Quit and do nothing.  The function will be run again next time.`

## Oh My Zsh!

Oh My Zsh! allows you to customize your Zsh terminal with themes, plugins, and other features.

- Install Oh My Zsh! by running the following command in your Zsh terminal:

```sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### Install Powerlevel10k

Powerlevel10k is a theme for Zsh that can be customized to your liking.

- Install Powerlevel10k by running the following command in your Zsh terminal:

```sh
git clone https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k
```

> [!NOTE]
> You can use the [windows_example.zshrc](./windows_example.zshrc) file as a reference when updating your `~/.zshrc` file throughout this guide.

- Update your `~/.zshrc` file with the following:

```sh
ZSH_THEME="powerlevel10k/powerlevel10k"
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(history)
POWERLEVEL9K_SHORTEN_DIR_LENGTH=1

# User configuration

export LS_COLORS="rs=0:no=00:mi=00:mh=00:ln=01;36:or=01;31:di=01;34:ow=04;01;34:st=34:tw=04;34:pi=01;33:so=01;33:do=01;33:bd=01;33:cd=01;33:su=01;35:sg=01;35:ca=01;35:ex=01;32:"
```

> [!CAUTION]
> Ensure you don't set two separate themes in your `~/.zshrc` file. This can cause issues with your terminal.

- restart the terminal and follow the on-screen instructions to configure the theme to your liking.

### Gitstatus (Optional)

- If `gitstatus` fails you can try to reinstall it:

```sh
git -C ~/.oh-my-zsh/custom/themes/powerlevel10k pull
~/.oh-my-zsh/custom/themes/powerlevel10k/gitstatus/install -f
```

### Install Oh My Zsh! Plugins

You can install plugins for Oh My Zsh! by cloning the repositories into the `~/.oh-my-zsh/custom/plugins` directory.

- Install the following plugins:

```sh
git clone https://github.com/zsh-users/zsh-autosuggestions.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/Pilaton/OhMyZsh-full-autoupdate.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/ohmyzsh-full-autoupdate
```

- Add the plugins to your `~/.zshrc` file:

```sh
plugins=(
    adb
    command-not-found
    extract
    deno
    docker
    git
    github
    gitignore
    history-substring-search
    node
    npm
    nvm
    yarn
    volta
    vscode
    sudo
    web-search
    z
    zsh-autosuggestions
    zsh-syntax-highlighting
    ohmyzsh-full-autoupdate
)
```

- Under the `# User configuration` section in your `~/.zshrc` file, add the following lines:

```sh
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor root line)
ZSH_HIGHLIGHT_PATTERNS=('rm -rf *' 'fg=white,bold,bg=red')
```

## Install Font

A Nerd Font is required to display the icons in the terminal. You can use the FiraCode Nerd Font for this purpose.

- Download and install the [Fira Code Nerd Font](https://github.com/johnwaghorn/configuration/blob/main/fonts/FiraCodeNerdFont-Regular.ttf).

- Add the following to your `~/.minttyrc` file:

```sh
font=FiraCode Nerd Font
FontHeight=14
```
