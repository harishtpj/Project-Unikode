"
Programs in various code - Unified

**Project unikode** is a collection of programs written in various programming languages existing **since 
1950's**. After discovering various programming languages which 
existed previously, i've got an idea to unify them. This repository consist of various folders with 
different programing problems, whose solution is expressed in 
programming languages given below(see [here](https://github.com/harishtpj/Project-Unikode#-programming-languages-used)). This project can help others to discover programming 
styles of various languages, which can also act as an guide to learn them, too.

The problems specified in this repository uses the following collections:
1. [Simple Programming Problems](https://adriann.github.io/programming_problems.html) by Adrian Neumann
2. [99 Functional Programming Problems](https://www.ic.unicamp.br/~meidanis/courses/mc336/problemas-lisp/L-99_Ninety-Nine_Lisp_Problems.html) - The given problems are for lisp, but it is the base for any functional programming language
3. [Rosetta Code Tasks](https://rosettacode.org/wiki/Category:Programming_Tasks)
4. [Project Euler](https://projecteuler.net/archives)


This pharo package is created to store smalltalk programs of the Project-Unikode.

# Things to note
- Since Pharo smalltalk programs are run within a GUI-Based VM, command line arguments are passed as messages to programs.
- Every class corresponds to a task in the project
- The `start` method has to be implemented in all methods, this will be the entry point for the program
- In general, to run any program, open playground and type `<ProgClassName> new start`. If there are commandline arguments, the signature of the method will be altered accordingly.
"
Class {
	#name : 'ManifestProjectUnikode',
	#superclass : 'PackageManifest',
	#category : 'Project-Unikode-Manifest',
	#package : 'Project-Unikode',
	#tag : 'Manifest'
}

{ #category : 'code-critics' }
ManifestProjectUnikode class >> ruleCodeCruftLeftInMethodsRuleV1FalsePositive [

	<ignoreForCoverage>
	^ #(#(#(#RGMethodDefinition #(#MultTables #genTablesFor:till: #false)) #'2024-06-17T12:34:47.647+05:30') )
]
