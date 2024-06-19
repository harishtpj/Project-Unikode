"
The `Math Tables Generator` / `Multiplication table generator` program asks the user for numbers n and t and prints the multiplication tables for n upto t.

This problem is taken from collection [1](https://github.com/harishtpj/Project-Unikode/blob/master/README.md#%E2%84%B9-about)

To run,
```language=Pharo
MultTables new start
```
"
Class {
	#name : #MultTables,
	#superclass : #Object,
	#category : #'Project-Unikode'
}

{ #category : #helpers }
MultTables class >> genTablesFor: number till: times [
	Transcript clear; show: ('{1} Tables' format: { number }); cr; cr.
	1 to: times do: [ :t |
		Transcript show: ('{1} x {2} = {3}' format: { number . t . number * t }); cr.
	].
]

{ #category : #accessing }
MultTables >> start [
	"Smalltalk program to generate multiplication tables"
	"Written by M.V.Harish Kumar on 17-06-2024"
	| n t |
	n := (UIManager default request: 'Enter the no. to generate tables') asInteger.
	t := (UIManager default request: 'Enter the no. till which to generate') asInteger.
	self class genTablesFor: n till: t.
]
