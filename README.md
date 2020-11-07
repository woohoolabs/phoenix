# Woohoo Labs. Phoenix

[![Software License][ico-license]](LICENSE.md)
[![Gitter][ico-gitter]][link-gitter]

**Woohoo Labs. Phoenix is a simple configuration management tool for your development environment.**

## Table of Contents

* [Introduction](#introduction)
* [Install](#install)
* [Usage](#usage)
* [Versioning](#versioning)
* [Change Log](#change-log)
* [Contributing](#contributing)
* [Support](#support)
* [Credits](#credits)
* [License](#license)

## Introduction

Woohoo Labs. Phoenix helps you set up and installing your development environment whatever platform you use.

## Install

You have to clone the project first in order to install it:

```bash
git clone git@github.com:woohoolabs/phoenix.git
```

Then you have to create the configuration files by running the following commands:

```bash
# Create the main configuration file
cp config/config.sh.dist config/config.sh

# Create Bash configuration
cp config/bash/.bash_profile.dist config/bash/.bash_profile

# Create Git configuration
cp config/git/.gitconfig.dist config/git/.gitconfig

# Create GPG configuration
cp config/gpg/gpg.conf.dist config/gpg/gpg.conf

# Create SSH configuration
cp config/ssh/config.dist config/ssh/config

# Create ZSH configuration
cp config/zsh/.zshrc.dist config/zsh/.zshrc

# Create Warp configuration
cp config/zsh/.warprc.dist config/zsh/.warprc
```

## Usage

First, you should customize `config/config.sh`. Then you can install the necessary dependencies:

```bash
./woohoo install
```

Afterwards, you should manually:
- run Docker Desktop
- set the iTerm2 color preset according to your preference (e.g. "Solarized Dark")
- set the console font in iTerm2 and JetBrains IDE-s to "SourceCodeProPowerlineAwesomeRegular"

Now, you should deploy the necessary configuration. In order to do so, first customize
`config/zsh/.zshrc`, `config/git/.gitconfig`, and `config/zsh/.warprc`. Then run the following command:

```bash
./woohoo config
```

Afterwards, you can import your SSH and GPG configuration (if you don't have one yet, then you should rather
generate new keys).

```bash
cp config/ssh/id_rsa.sh.dist config/ssh/id_rsa.sh
# Fill in the $SSH_PUBLIC_KEY and $SSH_PRIVATE_KEY variables
./woohoo ssh import id_rsa
```

Then

```bash
# Create a file with FILE_NAME containing your GPG key
./woohoo gpg import {FILE_NAME}
```

## Features

The `woohoo` command provides several subcommands:

### install

### verify

### config

### ssh

### gpg

You can refer to the `woohoo help` command for the current list of supported operations.

## Versioning

This library follows [SemVer v2.0.0](http://semver.org/).

## Change Log

Please see [CHANGELOG](CHANGELOG.md) for more information what has changed recently.

## Contributing

Please see [CONTRIBUTING](CONTRIBUTING.md) for details.

## Support

Please see [SUPPORT](SUPPORT.md) for details.

## Credits

- [Máté Kocsis][link-author]
- [All Contributors][link-contributors]

## License

The MIT License (MIT). Please see the [License File](LICENSE.md) for more information.

[ico-license]: https://img.shields.io/badge/license-MIT-brightgreen.svg
[ico-gitter]: https://badges.gitter.im/woohoolabs/phoenix.svg

[link-author]: https://github.com/kocsismate
[link-contributors]: ../../contributors
[link-gitter]: https://gitter.im/woohoolabs/phoenix?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge
