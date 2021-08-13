# my-vim-config

This Repository is where I backup my vim configuration files( .vimrc, .vim/)

## How to use

1. Clone this repository.
2. Move everything to home directory.
3. Confirm that everything is working properly.


#### 1. Clone my repository

clone with SSH

```bash
git clone git@github.com:ChiaYu-Chiang/my-vim-config.git
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

#####  Check the status of vim-plug

Reload .vimrc and `:PlugUpdate` to install/update plugins.

Then `:PlugStatus` to check whether the plugins status shows `OK`.

##### Compile YCM

Install cmake, vim and python

```bash
apt install build-essential cmake vim-nox python3-dev
```

The following additional language support options are available:

- C# support: `mono-complete`.
- Go support: `golang`.
- JavaScript and TypeScript support: `nodejs` and `npm`.
- Java support: `default-jdk`.

```bash
apt install mono-complete golang nodejs default-jdk npm
```

Compile YCM

```bash
cd ~/.vim/plugged/YouCompleteMe/
python3 install.py --all
```

#### That's it! See you next time.
