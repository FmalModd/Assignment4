;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname |1d - maxofmax|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(define(maxElement lis)
  (if(null? (cdr lis)) (car lis)
     (max (car lis) (maxElement(cdr lis)))))

(define(maxofmax lis)
  (maxElement(map maxElement lis))
)  