# emacs-network-engineering
- This should someday become a helpful extension for the GNU Emacs text editor.
- The code is not that good because I'm just a beginner in Emacs LISP (and LISP in general).

## Current functions
### *format-mac-in-buffer*
- This functions transforms a marked valid MAC address into the Cisco format (xxxx.xxxx.xxxx)
- There's currently no key binding.
- Usage: highlight mac address in buffer, execute function with M-x

### **ddn2cidr**
- This function returns a given network mask in Decimal Dotted Notation (DDN) in CIDR notation.
- Example: "255.255.255.0" -> "/16"
- There's currently no key binding.

### **ddn2cidr-in-buffer**
- This function transforms a marked valid network mask in Decimal Dotted Notation (DDN) in CIDR notation.
- Example: "255.255.255.0" -> "/16"
- There's currently no key binding.
