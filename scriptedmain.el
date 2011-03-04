:;exec emacs -batch -l $0 -f scripted-main $*

;;; Shebang from John Swaby
;;; http://www.emacswiki.org/emacs/EmacsScripts

(defun scripted-main ()
 (message "Directory: %s" default-directory)

 (message "Program: %s" (nth 2 command-line-args))

 (message "Number of Args: %d" (length command-line-args))
 (mapcar (lambda (x) (message "Arg: %s" x)) command-line-args))