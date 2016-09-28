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
  `(("railscasts-bg"     . "#232323")
    ("railscasts-fg"     . "#E6E1DC")
    ("railscasts-brown"  . "#BC9357")
    ("railscasts-blue"   . "#6D9CBD")
    ("railscasts-green"  . "#A5C160")
    ("railscasts-orange" . "#CC7733")
    ("railscasts-yellow" . "#FFC66D")
    ("railscasts-violet" . "#CFCFFF")
    ("railscasts-red"    . "#DA4938"))
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
  `(font-lock-comment-face ((t (:foreground ,railscasts-brown))))))
(provide 'railscasts-reloaded)

;;; railscasts-reloaded.el ends here
