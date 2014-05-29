# Joe Szod dot file

These files are the very early beginings of my system config.

## Installation

Clone this repo, navigate to the local directory and run `rake install`

```
$ git clone https://github.com/jszod/.dotfiles.git
$ cd ~/.dotfiles
$ rake install
```

## Usage

Config files are stored in the ~/.dotfile directory. They are symlinked to the ~/ directory by the `rake install`
command.

Make any customizations to the configuration files in the ~/.dotfiles directory. Files in this folder
are named without the leading '.' character to allow simple file navigation. The '.' prefix is added to
synlink when they are installed from the rake task.
