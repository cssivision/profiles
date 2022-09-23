# my dotfiles

my vim configuration

- install [onedark][onedark] theme.

- using vim8 with python3 supported.
```sh
git clone https://github.com/vim/vim.git

./configure --enable-python3interp=yes

make

make install
```

-  install ycm with go and rust completer
```sh
cd ~/.vim/plugged/YouCompleteMe && ./install.py --go-completer --rust-completer

# install rust-anaylzer
rustup component add rust-analyzer
```

### Dependencies

- [fzf][fzf-main] 0.23.0 or above
- For syntax-highlighted preview, install [bat](https://github.com/sharkdp/bat)
- `Rg` requires [ripgrep (rg)][rg]
- [`delta`][delta] for git diff 

[delta]: https://github.com/dandavison/delta
[fzf-main]: https://github.com/junegunn/fzf
[rg]:    https://github.com/BurntSushi/ripgrep
[onedark]: https://github.com/joshdick/onedark.vim
