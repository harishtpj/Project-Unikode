"
The `Sum to n`/ `Sum natural numbers` program asks the user for a number n and prints the sum of the numbers 1 to n

This problem is taken from collection [1](https://github.com/harishtpj/Project-Unikode/blob/master/README.md#%E2%84%B9-about)

To run,
```language=Pharo
SumToN new start
```
"
Class {
	#name : #SumToN,
	#superclass : #Object,
	#category : #'Project-Unikode'
}

{ #category : #helpers }
SumToN class >> sumTillN: n [
	| sum |
	sum := 0.
	1 to: n do: [ :i | sum := sum + i ].
	^ sum
]

{ #category : #accessing }
SumToN >> start [
	"Smalltalk program to find sum of natural numbers"
	"Written by M.V.Harish Kumar on 17-06-2024"
	| n ans |
	n := (UIManager default request: 'Enter value for n') asInteger.
	ans := self class sumTillN: n.
	Transcript
		clear;
		show: ('The sum from 1 to {1} is {2}' format: { n . ans });
		cr.
]
