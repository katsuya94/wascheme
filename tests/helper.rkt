#lang racket

(require "../src/compiler.rkt")

(provide eval-scheme eval-js)

(define (eval-scheme sexpr)
  (define wast (compile sexpr))
  wast)

(define (eval-js code)
  (with-input-from-string code (lambda ()
    (with-output-to-string (lambda () (system "node"))))))
