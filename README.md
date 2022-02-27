# alias-v4l
This library wraps Video4Linux commands that allow you to change settings on your camera while you are using it, hopefully resulting in simpler and more user-friendly commands than what `v4l2` offers out of the box.

### Index
1. [Aliases](README.md#aliases)
    1. [cameras](README.md#cameras)
    1. [exposure](README.md#exposure)
    1. [wb](README.md#wb)
1. [Usage](README.md#usage)

## Aliases
This library contains the following aliases for changing your camera settings.

### cameras
List the available video input devices.

### exposure
Change the exposure. Requires an argument of either the absolute exposure, or `auto`.

### wb
Change the white balance. Requires an argument of either the desired color temperature in Kelvin, or `auto`.

## Usage
Make a folder for these types of scripts and aliases to exist, if you don't have one already.
```bash
mkdir -p ~/.bash
cd ~/.bash
```
Follow the instructions at the top-right of this repo to use your preferred method to clone this repo into that folder.
```bash
git clone --recursive git@github.com:kj4ezj/alias-v4l.git
```
Then, source `v4l.sh` in your `~/bashrc`, `~/bash_aliases`, `~/bash_profile`, or similar.
```bash
source ~/.bash/alias-v4l/git.sh
```
Finally, restart your shell to use these aliases.
