# Hiddenfiles-mac
Mac utility to show/hide hidden files

[Download](https://giuseppesalvo.github.io/hiddenfiles-mac)

![HiddenFiles Mac ScreenShot](https://raw.githubusercontent.com/giuseppesalvo/hiddenfiles-mac/master/screenshot.png)

## How it works

The application launch this commands in terminal: 

**For show**

    defaults write com.apple.finder AppleShowAllFiles YES && Killall Finder


**For hide**

    defaults write com.apple.finder AppleShowAllFiles NO && Killall Finder
