;;; mythryl-mode.el --- Major mode for editing Mythryl code

;; Copyright (C) 2009 Phil Rand <philrand@gmail.com>
;;
;; Largly cribbed from Stefan Monnier's sml-mode. See:
;;    http://www.iro.umontreal.ca/~monnier/elisp/
;;

;; Mythryl-mode is not part of emacs.

;; Mythryl-mode is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 3, or (at your option)
;; any later version.

;; Mythryl-mode is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with mythryl-mode; see the file COPYING.  If not, write to the
;; Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
;; Boston, MA 02110-1301, USA.

;;; Commentary:

;; A major mode for editing the Mythryl programming language.
;;
;; This release is still not very useful, but it does now do crude
;; keyword highlighting, and parenthetical matching for (), {}, and
;; [].
;;
;; This version of mythryl mode is derived from Stefan Monnier's 
;; sml-mode.  See http://www.iro.umontreal.ca/~monnier/elisp/, but
;; as of August 2009, the instructions on that page for accessing
;; the svn repository were incorrect.
;;
;; To use this mode, install the elisp files from the sml-mode
;; suite from the above URL somewhere in your elisp load path,
;; along with this file.  Insert the expression:
;;    (load "mythryl-mode")
;; Somewhere in your .emacs file.
;;
;; I've been invoking it with "M-x mythryl-mode" when editing a 
;; mythryl source file, but when it becomes actually useful for
;; more than debuging itself I'll need to remind myself how to
;; make emacs recognise mythryl source and enter the mode 
;; automatically.

;;; Code:

(require 'sml-mode) ; for defsyntax, fontlock stuff

(defsyntax mythryl-mode-syntax-table
  `((?\# . "<")
    (?\n . ">#)")
    (?\( . "()")
    (?\{ . "(}")
    (?\[ . "(]")
    (":=#&@\\!#^-.%+?/*~>~:?|" . "."))
  "The syntax table used in `mythryl-mode'.")

(defvar mythryl-mode-hook nil
  "*Run upon entering `mythryl-mode'.
This is a good place to put your preferred key bindings.")

; For now, we'l derive from sml-mode and live with some inconsistencies.
(define-derived-mode mythryl-mode sml-mode
  "Mythryl"
  "Major mode for the Mythryl programming language."
  (make-local-variable 'font-lock-defaults)
  (setq font-lock-defaults
	(list (list (regexp-opt
		     (list "abstype" "also" "and" "api" "as" "case" "class" "elif"
			   "else" "end" "eqtype" "esac" "except" "exception" "fi"
			   "field" "fn" "for" "fprintf" "fun" "generic" "generic_api"
			   "herein" "if" "include" "infix" "infixr" "lazy" "method"
			   "my" "nonfix" "op" "or" "overload" "package" "printf"
			   "raise" "rec" "sharing" "sprintf" "stipulate" "then"
			   "type" "val" "where" "with" "withtype"))
		    1 font-lock-keyword-face)
	      nil t)))


(defvar mythryl-mode-hook nil
  "*Run upon entering `mythryl-mode'.
This is a good place to put your preferred key bindings.")

(defconst mythryl-font-lock-keywords
  (purecopy

; For now, we'l derive from sml-mode and live with some inconsistencies.
(define-derived-mode mythryl-mode sml-mode
  "Mythryl"
  "Major mode for the Mythryl programming language."
  (make-local-variable 'font-lock-defaults)
  (setq font-lock-defaults
	(list (list (regexp-opt
		     (list "abstype" "also" "and" "api" "as" "case" "class" "elif"
			   "else" "end" "eqtype" "esac" "except" "exception" "fi"
			   "field" "fn" "for" "fprintf" "fun" "generic" "generic_api"
			   "herein" "if" "include" "infix" "infixr" "lazy" "method"
			   "my" "nonfix" "op" "or" "overload" "package" "printf"
			   "raise" "rec" "sharing" "sprintf" "stipulate" "then"
			   "type" "val" "where" "with" "withtype"))
		    1 font-lock-keyword-face)
	      nil t)))
