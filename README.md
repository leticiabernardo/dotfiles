[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]
[![LinkedIn][linkedin-shield]][linkedin-url]

<br />
<div align="center">
  <a href="https://github.com/leticiabernardo/dotfiles">
    <img src="https://user-images.githubusercontent.com/13439423/152936197-83209ddd-48ea-43c7-9361-982e70109e5c.png" width="80" /> 
  </a>

  <h3 align="center">Dotfiles</h3>

  <p align="center">
    This is my dotfiles, a shell script to recreate my personal environment quickly on any OSX machine.
    <br />
    <a href="https://github.com/leticiabernardo/dotfiles"><strong>Explore the docs »</strong></a>
    <br />
    <br />
  </p>
</div>

<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li><a href="#installation">Installation</a></li>
    <li><a href="#what-settings-are-installed">What settings are installed?</a></li>
    <li>
      <a href="#brew-installations">Brew installations</a>
      <ul>
        <li><a href="#list-of-command-lines">List of command lines</a></li>
        <li><a href="#list-of-apps">List of apps</a></li>
      </ul>
    </li>
    <li><a href="#license">License</a></li>
  </ol>
</details>

## Installation

*Nothing is needed on your machine to run the script.*<br />
Try to run the command below to install and configure your environment.

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/leticiabernardo/dotfiles/master/install)"
```

And well done! :sunglasses:

## What settings are installed?

- Brew setup and install apps
- Python
    - Install python3
    - Set python3 as default
    - Install pip
    - Install some basic pip packages
- Git
    - Install git with brew
    - Set .gitconfig with alias and colors
    - Set global user config
    - Generate ssh keys and copy public key to clipboard*
- MacOS
    - Create Screenshots folder and modify the default folder
    - Disable "natural" scrolling
    - Set minimize effect to scale
- VSCODE
    - Install code command in PATH (vscode)
    - Install settings sync extensions for vscode**
- ZSH
  - Install ZSH and configure the theme `robbyrussell` for all terminals
- Install some _beautiful_ fonts

<br/><br/>
\* [Adding a new SSH key to your GitHub account][tutorial-add-ssh-keys-url]<br/>
** If you've never settings synced with your VSCode, [follow this tutorial][tutorial-settings-sync-url]


## Brew installations
### List of command lines

- git
- gcc
- python
- go
- node
- npm
- nvm
- yarn
- docker
- docker-compose
- kubernetes-cli
- mysql
- sqlite
- postgresql
- opencv
- wget

### List of apps

- google-chrome
- visual-studio-code
- iterm2
- spotify
- discord
- mysqlworkbench
- postman
- insomnia
- slack
- whatsapp

<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE` for more information.

<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[tutorial-settings-sync-url]: https://riptutorial.com/visual-studio-code/learn/100017/settings-sync
[tutorial-add-ssh-keys-url]: https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account
[contributors-shield]: https://img.shields.io/github/contributors/leticiabernardo/dotfiles.svg?style=for-the-badge
[contributors-url]: https://github.com/leticiabernardo/dotfiles/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/leticiabernardo/dotfiles.svg?style=for-the-badge
[forks-url]: https://github.com/leticiabernardo/dotfiles/network/members
[stars-shield]: https://img.shields.io/github/stars/leticiabernardo/dotfiles.svg?style=for-the-badge
[stars-url]: https://github.com/leticiabernardo/dotfiles/stargazers
[issues-shield]: https://img.shields.io/github/issues/leticiabernardo/dotfiles.svg?style=for-the-badge
[issues-url]: https://github.com/leticiabernardo/dotfiles/issues
[license-shield]: https://img.shields.io/github/license/leticiabernardo/dotfiles.svg?style=for-the-badge
[license-url]: https://github.com/leticiabernardo/dotfiles/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/lebernardo
