# dotfiles

1. make user no passwd
```
echo "$(whoami) ALL=(ALL:ALL) NOPASSWD: ALL" | sudo tee /etc/sudoers.d/$(whoami)
```
2. clone and rename
```
git clone https://github.com/tsic404/dotfiles .dotfiles
```
3. install dotbot
```
pip install dotbot 或者  yay dotbot
```
4. run dotbot
```
dotbot -vv -c ~/.dotfiles.conf.yaml
```
