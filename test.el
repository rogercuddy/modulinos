:;exec emacs -batch -l $0 $*

;;; Shebang from John Swaby
;;; http://www.emacswiki.org/emacs/EmacsScripts

(setq load-path (cons default-directory load-path))
(load "scriptedmain.el" nil t)