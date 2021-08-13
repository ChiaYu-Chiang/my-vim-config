# my-vim-config

This Repository is where I backup my vim configuration files( .vimrc, .vim/)

## How to use

1. Clone this repository.
2. Move everything to home directory.
3. Confirm that everything is working properly.


#### 1. Clone my repository

clone with SSH

```bash
git clone git@github.com/ChiaYu-Chiang/my-vim-config.git
```

clone with HTTPS

```bash
git clone https://github.com/ChiaYu-Chiang/my-vim-config.git
```


#### 2. Move everything to home directory

```bash
cd my-vim-config/
mv .vimrc ~/
mv .vim/ ~/
```


#### 3. Confirm that everything is working properly

#####  Check the status of plugins

Reload .vimrc and `:PlugUpdate` to install/update plugins.

Then `:PlugStatus` to check the status of plugins.

##### If all shows `Ok` , congratulations, the setup process ends here.
