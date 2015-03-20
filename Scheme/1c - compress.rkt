;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname |1c - compress|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(define(compress lis)
  (cond ((null? lis) '()) 
        ((null? (cdr lis)) (cons (car lis) '()))
        ((equal? (car lis) (car (cdr lis))) (compress(cdr lis)))
        (else (cons (car lis) (compress(cdr lis))))))