# Railscasts Reloaded Theme for Emacs

This is a port of Ryan Bates's Textmate/vim theme. The original themes can be
found [here](http://railscasts.com/about)

## Installation

Only manual installation is supported. The theme can be installed using the
following steps

Clone the repo to the themes folder inside `.emacs.d`:

``` shell
$ git clone https://github.com/thegeorgeous/railscasts-reloaded-theme.git
```

Then add this to your `init.el`:

``` shell
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/atom-one-dark-theme/")
```

## Configuration

Load the theme with:

<kbd>M-x</kbd> `load-theme railscasts-reloaded`

Or you can add this to your `init.el`

``` emacs-lisp
(load-theme `railscasts-reloaded t)
```

## Contributing
This is a work in progress and a lot of modes are unsupported. PRs are welcome!
