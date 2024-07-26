"
The `Factorial` program asks the user for a number n and prints the product of the numbers 1 to n

This problem is taken from collection [1](https://github.com/harishtpj/Project-Unikode/blob/master/README.md#%E2%84%B9-about)

To run,
```language=Pharo
Factorial new start
```
"
Class {
	#name : #Factorial,
	#superclass : #Object,
	#category : #'Project-Unikode'
}

{ #category : #helpers }
Factorial class >> computeFact: n [
	n <= 1
		ifTrue: [ ^ 1 ]
		ifFalse: [ ^ (n * (self computeFact: (n-1))) ]
]

{ #category : #accessing }
Factorial >> start [
	"Smalltalk program to compute factorial"
	"Written by M.V.Harish Kumar on 17-06-2024"
	| n ans |
	n := (UIManager default request: 'Enter value for n') asInteger.
	ans := self class computeFact: n.
	Transcript
		clear;
		show: ('{1}! = {2}' format: { n . ans });
		cr.
]
