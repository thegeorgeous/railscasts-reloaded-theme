;;; railscasts-reloaded-theme.el --- Railscasts Reloaded color theme
;;
;; Copyright 2016 George Thomas
;;
;; Author: George Thomas <iamgeorgethomas@gmail.com>
;; URL: https://github.com/thegeorgeous/railscasts-reloaded-theme
;; Version: 0.1.0
;;
;;; Commentary:
;;
;; An Emacs port of the awesome Railscasts theme as used by Ryan Bates
;;
;;; Code:

(deftheme railscasts-reloaded
  "An Emacs port of the awesome Railscasts theme")

(defvar railscasts-reloaded-colors-alist
  `(("railscasts-bg"         . "#232323")
    ("railscasts-fg"         . "#E6E1DC")
    ("railscasts-bg-1"       . "#383838")
    ("railscasts-bg-2"       . "#4e4e4e")
    ("railscasts-brown"      . "#BC9357")
    ("railscasts-blue"       . "#6D9CBD")
    ("railscasts-green"      . "#A5C160")
    ("railscasts-dark-green" . "#509E50")
    ("railscasts-orange"     . "#CC7733")
    ("railscasts-yellow"     . "#FFC66D")
    ("railscasts-violet"     . "#CFCFFF")
    ("railscasts-red"        . "#DA4938")
    ("railscasts-red-1"      . "#DD5B4B")
    ("railscasts-white"      . "#FFFFFF")
    ("railscasts-black"      . "#000000")
    ("railscasts-silver"     . "#AAAAAA"))
  "List of colors used in Railscasts Reloaded.")

(defmacro railscasts-reloaded-with-color-variables (&rest body)
  "Bind the colors list around BODY."
  (declare (indent 0))
  `(let ((class '((class color) (min-colors 89)))
         ,@ (mapcar (lambda (cons)
                      (list (intern (car cons)) (cdr cons)))
                    railscasts-reloaded-colors-alist))
     ,@body))

(railscasts-reloaded-with-color-variables
 (custom-theme-set-faces
  'railscasts-reloaded

  `(default ((t (:foreground ,railscasts-fg :background ,railscasts-bg))))
  `(hl-line ((t (:background ,railscasts-bg-1))))
  `(region ((t (:background ,railscasts-bg-2))))
  ;;;; font-lock-faces
  `(font-lock-type-face ((t (:foreground ,railscasts-white))))
  `(font-lock-builtin-face ((t (:foreground ,railscasts-red))))
  `(font-lock-constant-face ((t (:foreground ,railscasts-blue))))
  `(font-lock-string-face ((t (:foreground ,railscasts-green))))
  `(font-lock-keyword-face ((t (:foreground ,railscasts-orange))))
  `(font-lock-variable-name-face ((t (:foreground ,railscasts-violet))))
  `(font-lock-function-name-face ((t (:foreground ,railscasts-yellow))))
  `(font-lock-comment-face ((t (:foreground ,railscasts-brown))))

  ;;;; modeline
  `(mode-line ((t (:background ,railscasts-black :foreground ,railscasts-silver))))
  `(mode-line-buffer-id ((t (:weight bold))))
  `(mode-line-emphasis ((t (:weight bold))))
  `(mode-line-inactive ((t (:background ,railscasts-bg-2))))

  ;;;; smartparens-mode
  `(sp-show-pair-mismatch-face ((t (:foreground ,railscasts-red-1 :background ,railscasts-brown :weight bold))))
  `(sp-show-pair-match-face ((t (:background ,railscasts-brown :weight bold))))

  ;;;; helm
  `(helm-header ((t (:foreground ,railscasts-blue
		     :background ,railscasts-bg-1
		     :underline nil
		     :box (:line-width 6 :color ,railscasts-bg)))))
  `(helm-source-header ((t (:foreground ,railscasts-orange
			    :background ,railscasts-bg
			    :underline nil
			    :weight bold
			    :box (:line-width -1 :style released-button)))))
  `(helm-selection ((t (:background ,railscasts-bg-2))))
  `(helm-candidate-number ((t (:foreground ,railscasts-green :background ,railscasts-bg))))
  `(helm-ff-directory ((t (:foreground ,railscasts-blue :background ,railscasts-bg :weight bold))))
  `(helm-ff-file ((t (:foreground ,railscasts-fg :background ,railscasts-bg :weight normal))))
  `(helm-ff-invalid-symlink ((t (:foreground ,railscasts-red-1 :background ,railscasts-bg :weight bold))))
  `(helm-ff-executable ((t (:foreground ,railscasts-green :background ,railscasts-bg :weight normal))))
  ))

(railscasts-reloaded-with-color-variables
  (custom-theme-set-variables
   'railscasts-reloaded
;;;;; fill-column-indicator
   `(fci-rule-color ,railscasts-bg-2)
   ))

(provide-theme 'railscasts-reloaded)

;;; railscasts-reloaded-theme.el ends here
