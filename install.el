(require 'package)

(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))

(package-refresh-contents)
(package-initialize)

(mapcar (lambda (package)
          (unless (package-installed-p package)
            (package-install package)))
        '(php-mode
          yaml-mode
          coffee-mode
          yasnippet
          color-theme
          dropdown-list
          paredit
          multiple-cursors
          google-c-style
          auto-complete
          projectile
          magit
          grizzl))
