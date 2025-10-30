# dotfiles

## Первый запуск

```bash
git init --bare $HOME/.cfg
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
config config --local status.showUntrackedFiles no
echo "alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'" >> $HOME/.zshrc
```

## Добавление конфигурации

```bash
config status
config add .vimrc
config commit -m "Add vimrc"
config push
```

## Восстановление на новой системе

```bash
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
echo ".cfg" >> .gitignore
git clone --bare https://github.com/rpozdeev/dotfiles.git $HOME/.cfg
config checkout
config config --local status.showUntrackedFiles no
```
