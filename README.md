# dotfiles

1. 加入免密
```
echo "$(whoami) ALL=(ALL:ALL) NOPASSWD: ALL" | sudo tee /etc/sudoers.d/$(whoami)
```
2. clone
```
git clone https://github.com/tsic404/dotfiles .dotfiles
```
3. 安装dotbot
```
pip install dotbot 或者  yay dotbot
```
4. 运行dotbot
```
dotbot -vv -c ~/.dotfiles.conf.yaml
```
