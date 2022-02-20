# `bapp` [bappstudio](http://bappstudio.surge.sh)

bapp is a light-weight universal app platform. It can run these languages:

- Ruby (of course, bapp is written in Ruby)
- Node.js
- Python

## Requirements

bapp needs:

- Windows 10/11 with WinGet
- Ubuntu/Fedora/Arch
- An installation of Ruby

## Installation

You can use the `Makefile` to install it if you're on Linux, or if you're on Windows:

1. Run `build.cmd`
2. Delete everything except the `bapp` folder and the test scripts
3. Move the `bapp` folder anywhere.
4. Run any of the test scripts, to specify the location of where bapp is installed
5. Delete the test scripts

## Create a bapp file

Just do this in JSON or use bappstudio (link is at top of README):

```json
{
    "lang": "javascript or python or ruby",
    "code": "valid code for that language"
}
```