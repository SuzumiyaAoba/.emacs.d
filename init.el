(add-hook 'after-init-hook
          (lambda ()
            (message "init time: %d msec"
                     (+ (* (- (nth 1 after-init-time) (nth 1 before-init-time)) 1000)
                        (/ (- (nth 2 after-init-time) (nth 2 before-init-time)) 1000)))))

(setq gc-cons-threshold (* 128 1024 1024))
(setq garbage-collection-messages t)


;; <leaf-install-code>
(eval-and-compile
  (customize-set-variable
   'package-archives '(("org" . "https://orgmode.org/elpa/")
                       ("melpa" . "https://melpa.org/packages/")
                       ("gnu" . "https://elpa.gnu.org/packages/")))
  (package-initialize)
  (unless (package-installed-p 'leaf)
    (package-refresh-contents)
    (package-install 'leaf))

  (leaf leaf-keywords
    :ensure t
    :init
    ;; optional packages if you want to use :hydra, :el-get, :blackout,,,
    (leaf hydra :ensure t)
    (leaf el-get :ensure t)
    (leaf blackout :ensure t)
    (leaf diminish :ensure t)

    :config
    ;; initialize leaf-keywords.el
    (leaf-keywords-init)))
;; </leaf-install-code>

(leaf leaf-tree :ensure t)

(leaf cus-start
  :doc "define customization properties of builtins"
  :tag "builtin" "internal"
  :custom ((menu-bar-mode . nil)
           (tool-bar-mode . nil)
           (scroll-bar-mode . nil)
           (use-dialog-box . nil)
           (inhibit-startup-message . t)
           (ring-bell-function . 'ignore)
           (blink-cursor-mode . nil)
           (indent-tabs-mode . nil)
           (truncate-lines . t)
           (show-paren-mode . t)
           (global-display-line-numbers-mode . t)
           (indicate-empty-lines . t)
           (indicate-buffer-boundaries . 'right)

           ;; scroll
           (scroll-margin . 0)
           (scroll-conservatively . 100000)
           (scroll-preserve-screen-position . t)

           (auto-save-file-name-trasforms `((".*", (expand-file-name "~/.emacs.d/backups/") t)))
           (delete-by-moving-to-trash . t))
  :config
  (defalias 'yes-or-no-p 'y-or-n-p)
  (setq backup-directory-alist (cons (cons ".*" (expand-file-name "~/.emacs.d/backups")) backup-directory-alist))
  (setq custom-file (locate-user-emacs-file "custom.el"))

  (leaf language
    :config
    (set-language-environment 'Japanese)
    (prefer-coding-system 'utf-8-unix)))

(leaf mac
  :when (eq system-type 'darwin)
  :config
  (leaf key-config
    :custom ((mac-command-modifier . 'alt)
             (mac-option-modifier . 'meta)
             (default-directory . "~/")
             (command-line-default-directory . "~/")))
  (leaf font
    :config
    (set-face-attribute 'default nil :family "Cica" :height 140)))

(leaf autorevert
  :tag "builtin"
  :custom ((auto-revert-internal . 0.1))
  :global-minor-mode global-auto-revert-mode)

(leaf hl-line-mode
  :global-minor-mode global-hl-line-mode)

(leaf dired
  :custom ((dired-recursive-copies . 'always)
           (dired-recursive-deletes . 'always)
           (dired-isearch-filenames . t)))

(leaf exec-path-from-shell
  :ensure t
  :init (exec-path-from-shell-initialize))

(leaf highlight
  :config
  (leaf highlight-indent-guides
    :disabled t
    :ensure t
    :custom ((highlight-indent-guides-auto-enabled . nil)
             (highlight-indent-guides-responsive . t)
             (highlight-indent-guides-method . 'character)
             (highlight-indent-guides-auto-character-face-perc . 100))
    :hook (prog-mode-hook . highlight-indent-guides-mode)
    :config
    (set-face-foreground 'highlight-indent-guides-character-face "gainsboro"))
  
  (leaf highlight-symbol
    :diminish ""
    :ensure t
    :custom ((highlight-symbol-idle-delay . 0.5))
    :hook ((prog-mode-hook . highlight-symbol-mode)
           (prog-mode-hook . highlight-symbol-nav-mode)))

  (leaf volatile-highlights
    :diminish ""
    :ensure t
    :hook (after-init-hook . volatile-highlights-mode)
    :config
    (custom-set-faces
     '(vhl/default-face ((nil (:foreground "#FF3333" :background "#FFCDCD")))))))

(leaf undohist
  :el-get emacsorphanage/undohist
  :require t
  :config
  (undohist-initialize))

(leaf undo-tree
  :diminish ""
  :ensure t
  :config
  (global-undo-tree-mode t))

(leaf smartparens
  :ensure t
  :custom ((sp-escape-quotes-after-insert . 'nil))
  :global-minor-mode smartparens-global-mode
  :config
  (sp-local-pair '(emacs-lisp-mode) "'" "'" :actions nil))

(leaf company
  :diminish ""
  :ensure t
  :bind
  (:company-mode-map
   ("TAB" . indent-for-tab-command))
  (:company-active-map
   ("C-n" . company-select-next)
   ("C-p" . company-select-previous))
  (:company-search-map
   ("C-n" . company-select-next)
   ("C-p" . company-select-previous))
  :custom ((company-idle-delay . 0)
           (company-selection-wrap-around . t)
           (company-ignore-case . t)
           (company-dabbrev-downcase . nil))
  :global-minor-mode global-company-mode)

(leaf ddskk
  :ensure t
  :bind ("C-x j" . skk-mode)
  :custom ((skk-isearch-start-mode . 'latin)
           (skk-henkaku-strict-okuri-precedence . t))
  :hook ((isearch-mode-hook . skk-isearch-mode-setup)
         (isearch-mode-hook . skk-isearch-mode-cleanup)))

(leaf anzu
  :ensure t
  :bind
  ([remap query-replace] . anzu-query-replace)
  ([remap query-replace-regexp] . anzu-query-replace-regexp)
  :custom ((anzu-replace-threshold . 1000)
           (anzu-search-threshold . 1000))
  :global-minor-mode anzu-mode
  :config
  (copy-face 'mode-line 'anzu-mode-line))

(leaf ivy
  :diminish ""
  :ensure t
  :bind (("C-c r" . ivy-resume))
  :custom ((ivy-count-format . "(%d/%d) ")
           (ivy-on-del-error-function . #'ignore)
           (ivy-use-selectable-prompt . t)
           (ivy-use-virtual-buffers . t)
           (enable-recursive-minibuffers . t)
           (ivy-format-functions-alist . '((t . ivy-format-function-arrow)))
           )
  :global-minor-mode ivy-mode
  :config
  
  (leaf all-the-icons-ivy
    :ensure t
    :config
    (all-the-icons-ivy-setup))

  (leaf ivy-rich
    :ensure t
    :global-minor-mode ivy-rich-mode
    :config

    (defun ivy-rich-switch-buffer-icon (candidate)
      (with-current-buffer (get-buffer candidate)
        (let ((icon (all-the-icons-icon-for-mode major-mode)))
          (if (symbolp icon)
              (all-the-icons-icon-for-mode 'fundamental-mode)
            icon))))

    (setq ivy-rich-display-transformers-list
          '(ivy-switch-buffer
            (:columns
             ((ivy-rich-switch-buffer-icon (:width 2))
              (ivy-rich-candidate (:width 30))
              (ivy-rich-switch-buffer-size (:width 7))
              (ivy-rich-switch-buffer-indicators (:width 4 :face error :align right))
              (ivy-rich-switch-buffer-major-mode (:width 12 :face warning))
              (ivy-rich-switch-buffer-project (:width 15 :face success))
              (ivy-rich-switch-buffer-path (:width (lambda (x) (ivy-rich-switch-buffer-shorten-path x (ivy-rich-minibuffer-width 0.3))))))
             :predicate
             (lambda (cand) (get-buffer cand)))))))

(leaf counsel
  :diminish ""
  :ensure t
  :bind (("C-c g" . counsel-git)
         ("C-c j" . counsel-git-grep)
         ("C-c k" . counsel-rg)
         ("C-x l" . counsel-locate))
  :custom ((counsel-yank-pop-separator . "\n------\n"))
  :global-minor-mode counsel-mode)

(leaf counsel-ghq
  :el-get SuzumiyaAoba/counsel-ghq
  :bind (("C-c C-g" . counsel-ghq)))

(leaf swiper
    :ensure t
    :bind (("C-s" . swiper)
           ("M-i" . swiper-all)
           ("C-c @" . swiper-thing-at-point)))

(leaf all-the-icons
  :ensure t
  :config
  (leaf all-the-icons-dired
    :ensure t
    :hook (dired-mode-hook . all-the-icons-dired-mode)))

(leaf git
  :config
  (leaf magit
    :ensure t
    :bind ("C-x g" . magit-status)
    :custom ((magit-diff-refine-hunk . 'all)
             (magit-display-buffer-function . #'magit-display-buffer-fullframe-status-v1)))

  (leaf diff-hl
    :ensure t
    :hook (magit-post-refresh-hook . diff-hl-magit-post-refresh)
    :global-minor-mode global-diff-hl-mode
    :config
    (custom-set-faces
     '(diff-hl-change ((t (:foreground nil :background "#ffcb72"))))
     '(diff-hl-insert  ((t (:foreground nil :background "#50fa7b"))))
     '(diff-hl-delete  ((t (:foreground nil :background "#ff79c6")))))))

(leaf projectile
  :diminish ""
  :ensure t
  :bind ((:projectile-mode-map
          ("C-c p" . projectile-command-map)))
  :global-minor-mode projectile-mode
  :config

  (leaf counsel-projectile
    :ensure t
    :global-minor-mode counsel-projectile-mode))

(leaf markdown-mode
  :ensure t
  :mode (("\\.md\\'" . markdown-mode)))

(defun open-init-el ()
  "Toggle current buffer between init.el."
  (interactive)
  (let ((path (buffer-file-name)))
    (if (equal path (expand-file-name "~/.emacs.d/init.el"))
        (switch-to-buffer (other-buffer))
      (find-file "~/.emacs.d/init.el"))))

(leaf custom-key-bindings
  :bind
  (("M-SPC" . open-init-el)))
