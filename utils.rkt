#lang at-exp racket
;;-*- Scheme -*-

(require
  scribble/base
  scribble/bnf
  scribble/core
  scribble/decode
  scribble/manual
  scriblib/autobib
  scriblib/footnote
  (for-syntax syntax/parse))

(provide (all-defined-out))

(define variant (make-parameter '#:short))
(define (long?) (eq? (variant) '#:long))
(define-syntax-rule (longonly x ...)
  (when (long?) (decode-content (list x ...))))


(define (note-url url)
  (note (hyperlink url url)))

(define-syntax-rule (XXX . rest) '())

(define (sf . str) (make-element 'sf (decode-content str)))

(define (moneyquote . x) (bold x))
(define (q . x) (list "\"" x "\""))

(define-syntax (clblock stx)
  (syntax-parse stx
    [(_ #:line-numbers ln str ...)
     #'@codeblock[;;#:keep-lang-line? #f
                   #:line-numbers ln
                   #:line-number-sep 3
                   str ...]]
    [(_ str ...)
     #'(clblock #:line-numbers 0 str ...)]))

(define-syntax (clcode stx)
  (syntax-parse stx
    [(_ str ...) #'(clblock #:line-numbers #f str ...)]))

(define (cl . str)
  (apply tt str))

(define (latin x) (emph x))
(define (ad_hoc) @latin{ad hoc})
(define (de_facto) @latin{de facto})
(define (bydef . x) (emph x))

(define (FRR) "François-René Rideau")

(define-cite ~cite cite-noun generate-bib #:style number-style)

(define-syntax-rule (define-bib name stuff ...)
  (define name (make-bib stuff ...)))

(define (story . x) (emph x))
