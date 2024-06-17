"
# 1. The `Hello, world!` program
The `Hello, world!` is one of the most basic, common type of program written to test a language's Text printing facility.

This problem is taken from collection [1](https://github.com/harishtpj/Project-Unikode/blob/master/README.md#%E2%84%B9-about)

To run,
```language=Pharo
HelloWorld new start
```
"
Class {
	#name : 'HelloWorld',
	#superclass : 'Object',
	#category : 'Project-Unikode',
	#package : 'Project-Unikode'
}

{ #category : 'accessing' }
HelloWorld >> start [
	"Smalltalk program to print 'Hello, world!' to stdout"
	Transcript
		clear;
		show: 'Hello, world!';
		cr.
]
