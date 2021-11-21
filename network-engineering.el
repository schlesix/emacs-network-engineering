;;;; This code is not ready for use, I'm a LISP rookie, tinkering around at the moment


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

(defun ddn2cidr (ddn)
  (interactive "DDN: ")
  (setq cidr "/0")
  (cond ((string= ddn "128.0.0.0")
	 (setq cidr "/1"))
	((string= ddn "192.0.0.0")
	 (setq cidr "/2"))
	((string= ddn "224.0.0.0")
	 (setq cidr "/3"))
	((string= ddn " 240.0.0.0")
	 (setq cidr "/4"))
	 ((string= ddn "255.255.255.255")
	 (setq cidr "/32"))
	 ((string= ddn "255.255.255.255")
	 (setq cidr "/32"))
	 ((string= ddn "255.255.255.255")
	 (setq cidr "/32"))
	 ((string= ddn "255.255.255.255")
	 (setq cidr "/32"))
	 ((string= ddn "255.255.255.255")
	 (setq cidr "/32"))
	 ((string= ddn "255.255.255.255")
	 (setq cidr "/32"))
	 ((string= ddn "255.255.255.255")
	 (setq cidr "/32"))
	 ((string= ddn "255.255.255.255")
	 (setq cidr "/32"))
	 ((string= ddn "255.255.255.255")
	 (setq cidr "/32"))
	 ((string= ddn "255.255.255.255")
	 (setq cidr "/32"))
	 ((string= ddn "255.255.255.255")
	 (setq cidr "/32"))
	 ((string= ddn "255.255.255.255")
	 (setq cidr "/32"))
	 ((string= ddn "255.255.255.255")
	 (setq cidr "/32"))
	 ((string= ddn "255.255.255.255")
	 (setq cidr "/32"))
	 ((string= ddn "255.255.255.255")
	 (setq cidr "/32"))
	 ((string= ddn "255.255.255.255")
	 (setq cidr "/32"))
	 ((string= ddn "255.255.255.255")
	 (setq cidr "/32"))
	 ((string= ddn "255.255.255.255")
	 (setq cidr "/32"))
	 ((string= ddn "255.255.255.255")
	 (setq cidr "/32"))
	 ((string= ddn "255.255.255.255")
	 (setq cidr "/32"))
	 ((string= ddn "255.255.255.255")
	 (setq cidr "/32"))
	 ((string= ddn "255.255.255.255")
	 (setq cidr "/32"))
	 ((string= ddn "255.255.255.255")
	 (setq cidr "/32"))
	 ((string= ddn "255.255.255.255")
	 (setq cidr "/32"))
	 ((string= ddn "255.255.255.255")
	 (setq cidr "/32"))
	 ((string= ddn "255.255.255.255")
	 (setq cidr "/32"))
	 ((string= ddn "255.255.255.255")
	 (setq cidr "/32"))
	 ((string= ddn "255.255.255.255")
	 (setq cidr "/32"))
		

	((string= ddn "255.255.255.255")
	 (setq cidr "/32"))
;        
;       192.0.0.0 
;      224.0.0.0 
;       240.0.0.0 
;       248.0.0.0 
;       252.0.0.0 
;       254.0.0.0 
;       255.0.0.0 
;     255.128.0.0 
;     255.224.0.0 
;     255.240.0.0 
;     255.248.0.0 
;     255.252.0.0 
;     255.254.0.0 
;     255.255.0.0 
;   255.255.128.0 
;   255.255.192.0 
;   255.255.224.0 
;   255.255.240.0 
;   255.255.248.0 
;   255.255.252.0 
;   255.255.254.0 
;   255.255.255.0 
; 255.255.255.128 
; 255.255.255.192 
; 255.255.255.224 
; 255.255.255.240 
; 255.255.255.248 
; 255.255.255.252 
; 255.255.255.254 
; 255.255.255.255 
	)
  (message cidr))
;  (message ddn)

;;

;; 4c52.3c5e.2728
;; 4c52.3c5e.2728
;; 4c52.3c5e.2728
;; 4c52.3c5e.2728
;;4c52.3c5e.2728
;; 4c52.3c5e.2728
