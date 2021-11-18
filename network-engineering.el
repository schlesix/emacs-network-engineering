;; This buffer is for text that is not saved, and for Lisp evaluation.
;; To create a file, visit it with C-x C-f and enter text in its buffer.


;(require 'cl)
(defun format-mac (start end)
  (interactive "r")
  ;; Falls Textmarkierung vorhanden, dann markierten Text ausschneiden
  (if (use-region-p)
      (let ((regionp (buffer-substring start end)))
	(setq rawmac "")
	(setq zeichen "")
	(setq ziffern "0123456789abcdef")
	(print "1")
	
	(dotimes (i (length regionp))
	;;  (set zeichen (aref regionp i))
	  ;;  (print (zeichen))
	  (print ".")
	  (setq zeichen (substring regionp i (+ i 1) ))
	  (setq zeichen (downcase zeichen))
	  (print zeichen )
	  (if (string-match "[a-fA-F0-9]" zeichen )
	  (setq rawmac (concat rawmac zeichen) )
	  ;(message "War wohl nix!") 
             )
	  )
	(print "Länge rawmac")
	(print (length rawmac))
	(if (= (length rawmac) 12)
	  (progn
	     	 (message "MAC Address formatted")
		 ;; Cisco-Punkte einfügen
		 (setq formatted-mac (substring rawmac 0 4 ))
		 (setq formatted-mac (concat formatted-mac "."))
		 (setq formatted-mac (concat formatted-mac (substring rawmac 4 8 )))
		 (setq formatted-mac (concat formatted-mac "."))
		 (setq formatted-mac (concat formatted-mac (substring rawmac 8 12 )))
		 (delete-region start end)
		 (insert formatted-mac)
		 (message formatted-mac)
	    )

	 (message "*** Invalid MAC Address! ***")
	 )
	)))


;;

;; 4c52.3c5e.2728
;; 4c52.3c5e.2728
;; 4c52.3c5e.2728
;; 4c52.3c5e.2728
;;4c52.3c5e.2728
;; 4c52.3c5e.2728
