# Legorel's Neovim config

(Almost) entirely written in lua. Uses git submodules and Neovim's builtin package system (see [Neovim Packages](https://neovim.io/doc/user/repeat.html#packages)).

## Prerequisite

This configuration depends on some external programs.

- `fzf` for fuzzy finding
- A C compiler for `nvim-treesitter`
- A patched font, for `lualine` icons 

## Install

Clone the repo

```bash
git clone https://github.com/Legorel/neovim-config.git
```

Initialize git submodules

```bash
git submodule init
```

Update submodule when you need to:

```bash
git submodule update
```

### Using GNU Stow

See my [dotfiles repo](https://github.com/Legorel/dotfiles) on how to use stow for config files.

### Manually

Copy the files into `~/.config/nvim`, or use an external tool of your choice.
