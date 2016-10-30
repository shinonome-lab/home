(require 'package)

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme 'dracula t)
(setq frame-title-format "日常")
;(setq frame-title-format "Cast in the Name of God, Ye Not Guilty")

;(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(linum-mode)
(set-default 'cursor-type 'hbar)
;; load org-mode file with indent
(setq org-startup-indented t)

;;scratch buffer configration
(setq initial-major-mode 'org-mode)
(setq initial-scratch-message "\
# すべてが正義のためにあります
#   (\"`-''-/\").___..--''\"`-._
#    `6_ 6  )   `-.  (     ).`-.__.`)
#    (_Y_.)'  ._   )  `._ `. ``-..-'
#  _..`--'_..-_/  /--'_.' ,'
# (il),-''  (li),'  ((!.-' ")

(ido-mode)
(column-number-mode)
(show-paren-mode)
(global-hl-line-mode)
(winner-mode t)
(windmove-default-keybindings)
;; no startup msg  
(setq inhibit-startup-message t)        ; Disable startup message 


;; org-mode define
(setq org-todo-keywords
    '((sequence "TODO(t!)" "NEXT(n)" "WAITTING(w)" "SOMEDAY(s)" "|" "DONE(d@/!)" "ABORT(a@/!)")
     ))



;; initial window
(setq initial-frame-alist
      '(
        (width . 118) ; character
        (height . 38) ; lines
        ))

;; default/sebsequent window
(setq default-frame-alist
      '(
        (width . 118) ; character
        (height . 40) ; lines
        ))


;(set-default-font "Menlo 17") ;;font and size
;(set-default-font "TeX Gyre Adventor 17") ;;font and size
;(set-default-font "DejaVu Sans Mono 17") ;;font and size
;(set-fontset-font "fontset-default" 'unicode '("Menlo" . "unicode-ttf"))
;; Setting English Font
(set-face-attribute
  'default nil :font "Courier New 17")
;;'default nil :font "TeX Gyre Adventor 17")
 
;; Chinese Font
(dolist (charset '(kana han symbol cjk-misc bopomofo))
    (set-fontset-font (frame-parameter nil 'font)
                      charset
                      (font-spec :family "PingFang SC Thin" :size 16)))

;;(add-to-list 'package-archives
;;			 '("melpa" . "http://melpa.milkbox.net/packages/")
;;			 t)

(add-to-list 'package-archives
			 '("marmalade" . "http://marmalade-repo.org/packages/")
			 t)

;; all backups goto ~/.backups instead in the current directory
(setq backup-directory-alist (quote (("." . "~/.emacsbkups"))))

(package-initialize)

;(require 'smex)
;(global-set-key (kbd ":") 'semx)

;(global-set-key (kbd "C-c C-c M-x") 'execute-extend-command)

;(ac-config-default)


;;(add-to-list 'load-path "/Users/nichijou/.emacs.d")    ; This may not be appeared if you have already added.
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "/Users/nichijou/.emacs.d/auto-complete-1.4/dict")
(ac-config-default)




(global-undo-tree-mode)

(global-set-key (kbd "M-/") 'undo-tree-visualize)

(require 'switch-window)
(global-set-key (kbd "C-M-z") 'switch-window) 

(global-set-key (kbd "C-;") 'ace-jump-mode)

(require 'alpha)
(global-set-key (kbd "C-M-)") 'transparency-increase)
(global-set-key (kbd "C-M-(") 'transparency-decrease)

;;(powerline-center-theme)
;;(setq power-default-separator 'wave)

(require 'evil)
(evil-mode 1)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#212526" "#ff4b4b" "#b4fa70" "#fce94f" "#729fcf" "#e090d7" "#8cc4ff" "#eeeeec"])
 '(blink-cursor-mode nil)
 '(compilation-message-face (quote default))
 '(custom-enabled-themes (quote (dracula)))
 '(custom-safe-themes
   (quote
	("17e785989b20d21bb5564f86242133ab876fa9c57cf9a1b7934f082b3e66d7f5" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "19553e40ff93a241cdfce090fd60e1420e0b371eec1d134a0da21f6f6488a74a" "b84c377b535f71f00e76bfc7ea8c1dcf75c459348292b01ed79e2916fb6451f8" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "44cf16febf9b67cb7eace7b9dce644c32e3b8a7cde2030ba8421bbd230ea8269" "949cfd4a96205b2d5e6a2ac0d2c2d0534843a55d51387cc6b6ee03a0e61fba57" "03ea866815fe82c4736611acafef3c90519d15cd3d465d8f146ebfa3a293b663" default)))
 '(fci-rule-color "#49483E")
 '(global-nlinum-mode t)
 '(highlight-changes-colors (quote ("#FD5FF0" "#AE81FF")))
 '(highlight-tail-colors
   (quote
	(("#49483E" . 0)
	 ("#679A01" . 20)
	 ("#4BBEAE" . 30)
	 ("#1DB4D0" . 50)
	 ("#9A8F21" . 60)
	 ("#A75B00" . 70)
	 ("#F309DF" . 85)
	 ("#49483E" . 100))))
 '(hl-sexp-background-color "#efebe9")
 '(line-number-display-limit-width 250)
 '(magit-diff-use-overlays nil)
 '(package-selected-packages
   (quote
	(company gist switch-window smex nlinum jekyll-modes evil auto-complete alpha ace-jump-mode)))
 '(pos-tip-background-color "#A6E22E")
 '(pos-tip-foreground-color "#272822")
 '(powerline-default-separator nil)
 '(tab-width 4)
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   (quote
	((20 . "#F92672")
	 (40 . "#CF4F1F")
	 (60 . "#C26C0F")
	 (80 . "#E6DB74")
	 (100 . "#AB8C00")
	 (120 . "#A18F00")
	 (140 . "#989200")
	 (160 . "#8E9500")
	 (180 . "#A6E22E")
	 (200 . "#729A1E")
	 (220 . "#609C3C")
	 (240 . "#4E9D5B")
	 (260 . "#3C9F79")
	 (280 . "#A1EFE4")
	 (300 . "#299BA6")
	 (320 . "#2896B5")
	 (340 . "#2790C3")
	 (360 . "#66D9EF"))))
 '(vc-annotate-very-old-color nil)
 '(weechat-color-list
   (unspecified "#272822" "#49483E" "#F70057" "#F92672" "#86C30D" "#A6E22E" "#BEB244" "#E6DB74" "#40CAE4" "#66D9EF" "#FB35EA" "#FD5FF0" "#74DBCD" "#A1EFE4" "#F8F8F2" "#F8F8F0")))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(whitespace-hspace ((t (:foreground "darkgray"))))
 '(whitespace-tab ((t (:foreground "darkgray")))))
