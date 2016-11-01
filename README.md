# Railscasts Reloaded Theme for Emacs

[![Melpa Status](http://melpa.milkbox.net/packages/railscasts-reloaded-theme-badge.svg)](http://melpa.milkbox.net/#/railscasts-reloaded-theme)

This is a port of Ryan Bates's Textmate/vim theme. The original themes can be
found [here](http://railscasts.com/about)

## Installation

### MELPA
Use install package to install the theme
<kbd>M-x</kbd> `package-install railscasts-reloaded-theme`

You can also use [use-package](https://github.com/jwiegley/use-package)

``` emacs-lisp
(use-package railscasts-reloaded-theme
	:ensure t
	:config
	(load-theme 'railscasts-reloaded'))
```

### Manual
The theme can be installed using the following steps

Clone the repo to the themes folder inside `.emacs.d`:

``` shell
$ git clone https://github.com/thegeorgeous/railscasts-reloaded-theme.git
```

Then add this to your `init.el`:

``` shell
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/railscasts-reloaded-theme/")
```

## Configuration

Load the theme with:

<kbd>M-x</kbd> `load-theme railscasts-reloaded`

Or you can add this to your `init.el`

``` emacs-lisp
(load-theme `railscasts-reloaded t)
```

## Screenshots
![Ruby code](https://cloud.githubusercontent.com/assets/1572403/19900204/b4de482c-a088-11e6-90d3-7a69a6d33ff0.png)
![Helm](https://cloud.githubusercontent.com/assets/1572403/19900402/609f6d58-a089-11e6-912a-86f992e139fe.png)

## Contributing
This is a work in progress and a lot of modes are unsupported. If you want a
mode added, open an issue. Better still open a PR.
