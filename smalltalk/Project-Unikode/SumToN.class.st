"
The `Sum to n`/ `Sum natural numbers` program asks the user for a number n and prints the sum of the numbers 1 to n

This problem is taken from collection [1](https://github.com/harishtpj/Project-Unikode/blob/master/README.md#%E2%84%B9-about)

To run,
```language=Pharo
SumToN new start
```
"
Class {
	#name : 'SumToN',
	#superclass : 'Object',
	#category : 'Project-Unikode',
	#package : 'Project-Unikode'
}

{ #category : 'helpers' }
SumToN >> sumTillN: n [
	| sum |
	sum := 0.
	1 to: n do: [ :i | sum := sum + i ].
	^ sum
]
