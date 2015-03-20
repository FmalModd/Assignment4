;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname |2e - statsDocument|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(define(statsDocument lis)
  (cons (sumList (charactersPerSentence lis)) (cons (sumList (wordsPerSentence lis)) (cons (length lis) '()))))

(define(charactersPerSentence lis)
  (map sumList (map charactersPerWord lis)))

(define(charactersPerWord lis)
  (map charCount lis))

(define (charCount sym) (string-length (symbol->string sym)))

(define(sumList lis)
  (if(null? lis) 0
     (+ (car lis) (sumList(cdr lis)))))

(define(wordsPerSentence lis)
  (map length lis))