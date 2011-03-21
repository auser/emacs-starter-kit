;; visible bell
(setq visible-bell nil) 
 
;; allow selection deletion
(delete-selection-mode t) 
                                    
;; make sure delete key is delete key
(global-set-key [delete] 'delete-char) 
 
;; turn on the menu bar
(menu-bar-mode 1) 
 
;; have emacs scroll line-by-line
(setq scroll-step 1)               
                 
;; set color-theme
(color-theme-zenburn) 
 
(defun my-zoom (n) 
  "Increase or decrease font size based upon argument" 
  (set-face-attribute 'default (selected-frame) :height 
                      (+ (face-attribute 'default :height) (* (if (> n 0) 1 -1) 10)))) 
(global-set-key (kbd "C-+")      '(lambda nil (interactive) (my-zoom 1))) 
(global-set-key [C-kp-add]       '(lambda nil (interactive) (my-zoom 1))) 
(global-set-key (kbd "C-_")      '(lambda nil (interactive) (my-zoom -1))) 
(global-set-key [C-kp-subtract]  '(lambda nil (interactive) (my-zoom -1))) 

(setq inferior-lisp-program "sbcl") 
 
(message "All done!") 
