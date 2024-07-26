"
The `Prime Checker` program asks the user for a number and checks if that number is prime or not. If the user wishes, he/she may request for a list of prime numbers to be produced.

This problem is taken from collection [1](https://github.com/harishtpj/Project-Unikode/blob/master/README.md#%E2%84%B9-about)

To run
```language=Pharo
PrimeCheck new start
```
"
Class {
	#name : #PrimeCheck,
	#superclass : #Object,
	#category : #'Project-Unikode'
}

{ #category : #helpers }
PrimeCheck class >> checkPrime: n [
	n = 2 ifTrue: [ ^ true ].
	2 to: (n sqrtFloor) do: [ :i |
		n % i = 0 ifTrue: [ ^ false ]
	].
	^ n > 1
]

{ #category : #accessing }
PrimeCheck >> start [
	"Smalltalk program to check if a given number is prime"
	"Written by M.V.Harish Kumar on 19-06-2024"
	| num |
	num := (UIManager default request: 'Enter a number') asInteger.
	Transcript clear.
	(self class checkPrime: num)
		ifTrue: [ 
			Transcript show: ('{1} is Prime' format: { num }); cr.
		]
		ifFalse: [ 
			Transcript show: ('{1} is NOT Prime' format: { num }); cr.
		]
]
