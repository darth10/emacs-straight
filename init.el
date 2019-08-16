(defvar bootstrap-version)

(defvar straight-repository-user "darth10") ; TODO remove this soon
(defvar straight-repository-branch "feature/configurable-base-path")
(defvar straight-base-dir (expand-file-name "var/" user-emacs-directory))

(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" straight-base-dir))
      (bootstrap-version 5))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
	 (format
          "https://raw.githubusercontent.com/darth10/straight.el/%s/install.el"
	  straight-repository-branch)
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

(straight-use-package 'helm)
(straight-use-package 'magit)
