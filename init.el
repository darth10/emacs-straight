(defvar bootstrap-version)

(defvar straight-repository-user "raxod502")
(defvar straight-repository-branch "develop")
(defvar straight-base-dir (expand-file-name "var/packages/" user-emacs-directory))

(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" straight-base-dir))
      (bootstrap-version 5))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         (format "https://raw.githubusercontent.com/%s/straight.el/%s/install.el"
                 straight-repository-user
                 straight-repository-branch)
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

(straight-use-package 'helm)
(straight-use-package 'magit)
(straight-use-package 'python)
(straight-use-package 'gud)
(straight-use-package 'tramp)
(straight-use-package 'go-mode)
(straight-use-package 'org)
(straight-use-package 'highlight-sexp)
