;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname |1e - split|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(define(split lis n)
  (list (prefix_help lis n) (postfix_help lis n)))

(define(prefix_help lis n)
  (cond((null? lis) '())
       ((= n 0) '())
       (else (cons (car lis) (prefix_help (cdr lis) (- n 1))))))

(define(postfix_help lis n)
  (cond((null? lis) '())
       ((= n 0) lis) 
       (else (postfix_help (cdr lis) (- n 1)))))