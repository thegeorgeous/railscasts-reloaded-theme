# Railscasts Reloaded Theme for Emacs

[![Melpa Status](https://melpa.org/packages/railscasts-reloaded-theme-badge.svg)](https://melpa.org/#/railscasts-reloaded-theme)
[![MELPA](https://stable.melpa.org/packages/railscasts-reloaded-theme-badge.svg)](https://stable.melpa.org/#/railscasts-reloaded-theme)

This is a port of Ryan Bates's Textmate/vim theme. The original themes can be
found [here](http://railscasts.com/about)

## Installation

### MELPA
Railscasts Reloaded is available in both [MELPA Stable](http://stable.melpa.org)
and [MELPA](http://melpa.org).

Use `package-install` to install the theme

<kbd>M-x</kbd> `package-install railscasts-reloaded-theme`

You can also use [use-package](https://github.com/jwiegley/use-package)

``` emacs-lisp
(use-package railscasts-reloaded-theme
	:ensure t
	:init
	(load-theme 'railscasts-reloaded t))
```

### Manual
The theme can be installed using the following steps

Clone the repo to the themes folder inside `.emacs.d`:

``` shell
$ git clone https://github.com/thegeorgeous/railscasts-reloaded-theme.git
```

Then add this to your `init.el`:

``` emacs-lisp
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/railscasts-reloaded-theme/")
(load-theme 'railscasts-reloaded t)
```

## Configuration

Load the theme with:

<kbd>M-x</kbd> `load-theme railscasts-reloaded`

Or you can add this to your `init.el`

``` emacs-lisp
(load-theme 'railscasts-reloaded t)
```

## Screenshots
![Ruby code](https://cloud.githubusercontent.com/assets/1572403/19941425/0bb6ff72-a156-11e6-969f-ae0ee02884b5.png)
![Helm](https://cloud.githubusercontent.com/assets/1572403/19941509/5f115bf4-a156-11e6-8906-06eb190b25cf.png)

## Contributing
This is a work in progress and a lot of modes are unsupported. If you want a
mode added, open an issue. Better still open a PR.
