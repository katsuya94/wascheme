#lang racket

(require rackunit)
(require "helper.rkt")

(test-case "#t is true"
  (check-true #t))

(test-case "runs wasm in node"
  (define output (eval-js (file->string "../js/main.js")))
  (check-equal? output "hello\n"))
