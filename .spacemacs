;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

;; Configuration Layers
;; --------------------

(setq-default
 ;; List of additional paths where to look for configuration layers.
 ;; Paths must have a trailing slash (ie. `~/.mycontribs/')
 dotspacemacs-configuration-layer-path '()
 ;; List of configuration layers to load.
 dotspacemacs-configuration-layers '()
 ;; A list of packages and/or extensions that will not be install and loaded.
 dotspacemacs-excluded-packages '()
)

;; Settings
;; --------

(setq-default
 ;; Default theme applied at startup
 dotspacemacs-default-theme 'solarized-dark
 ;; Guide-key delay in seconds. The Guide-key is the popup buffer listing
 ;; the commands bound to the current keystrokes.
 dotspacemacs-guide-key-delay 0.4
 ;; If non nil the frame is maximized when Emacs starts up (Emacs 24.4+ only)
 dotspacemacs-fullscreen-at-startup t
 ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth scrolling
 ;; overrides the default behavior of Emacs which recenters the point when
 ;; it reaches the top or bottom of the screen
 dotspacemacs-smooth-scrolling t
 ;; If non nil pressing 'jk' in insert state, ido or helm will activate the
 ;; evil leader.
 dotspacemacs-feature-toggle-leader-on-jk nil
 ;; The default package repository used if no explicit repository has been
 ;; specified with an installed package.
 ;; Not used for now.
 dotspacemacs-default-package-repository nil
)

;; Initialization Hooks
;; --------------------

(defun dotspacemacs/init ()
  "User initialization for Spacemacs. This function is called at the very
 startup."
)

(defun dotspacemacs/config ()
  "This is were you can ultimately override default Spacemacs configuration.
This function is called at the very end of Spacemacs initialization."
  (progn
    (setq-default evil-escape-key-sequence (kbd "jk"))
    (setq ac-use-menu-map t)
    (define-key ac-menu-map "\C-n" 'ac-next)
    (define-key ac-menu-map "\C-p" 'ac-previous)
    (setq tab-width 2)
    (setq c-basic-offset 2)
    (setq indent-tabs-mode nil)
  )
)

(add-hook 'evil-after-load-hook
  (lambda ()
    (progn
      (define-key evil-normal-state-map (kbd "\C-n") 'helm-projectile-find-file)
      (define-key evil-normal-state-map (kbd "\C-p") 'helm-projectile-switch-to-buffer)
      (define-key evil-normal-state-map ";" 'evil-ex)
)))


;; Custom variables
;; ----------------

;; Do not write anything in this section. This is where Emacs will
;; auto-generate custom variable definitions.

