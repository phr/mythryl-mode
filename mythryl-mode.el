;;; mythryl-mode.el --- mode for editing Mythryl code

;; Copyright (C) 2009 Phil Rand <philrand@gmail.com>

;; Mythryl-mode is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 3, or (at your option)
;; any later version.

;; mythryl-mode is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with mythryl-mode; see the file COPYING.  If not, write to the
;; Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
;; Boston, MA 02110-1301, USA.

;;; Commentary:

;; A major mode for editing the Mythryl programming language.

;;; Code:

(require 'cl)
(require 'sml-mode)

(define-derived-mode mythryl-mode sml-mode
  "Mythryl"
  "Major mode for the Mythryl programming language."
  (modify-syntax-entry ?\# "<" mythryl-mode-syntax-table)
  (modify-syntax-entry ?\n ">#" mythryl-mode-syntax-table))
