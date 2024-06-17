"
The `Greeter` program takes the name of the user as input and displays a greeting for them.

This problem is taken from collection [1](https://github.com/harishtpj/Project-Unikode/blob/master/README.md#%E2%84%B9-about)

To run, 
```language=Pharo
Greeter new start
```
"
Class {
	#name : 'Greeter',
	#superclass : 'Object',
	#category : 'Project-Unikode',
	#package : 'Project-Unikode'
}

{ #category : 'accessing' }
Greeter >> start [
	"Smalltalk program to greet user"
	"Written by M.V.Harish Kumar on 17-06-2024"
	| name |
	name := UIManager default request: 'Please Enter your name'.
	Transcript
		clear;
		show: ('Hello, {1}! Hope you''re fine!' format: { name });
		cr.
]
