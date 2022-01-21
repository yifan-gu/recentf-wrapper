;; A simple wrapper for recentf to open recent file list in
;; another window.
;;
;; By Yifan Gu, Feb. 8, 2014
;; All copyright reserved
;;
;; Have fun!
;;
;;
;; usage:
;;
;; put this file in your emacs load path.
;; add following lines in your .emacs file:
;;
;; 1, enable recentf:
;;
;; (require 'recentf)
;; (recentf-mode 1)
;; (setq recentf-max-menu-items 25)
;; (global-set-key "\C-x\ \C-r" 'recentf-open-files)
;;
;; 2, enable wrapper:
;;
;; (load "recentf-wrapper")
;; (require 'recentf_wrapper)
;; (global-set-key (kbd "C-x 4 C-r") 'open-recentf-in-new-window)
;;

(require 'recentf)
(require 'windmove)

;; open recentf in new window
(defun open-recentf-in-new-window ()
  (interactive)
  (if (= (length (window-list)) 1)
      (split-window-horizontally))
  (other-window 1)
  (recentf-open-files))

(provide 'recentf-wrapper)
