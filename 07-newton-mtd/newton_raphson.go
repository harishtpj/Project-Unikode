// Go program to implement Newton-Raphson method
// Created by M.V.Harish Kumar on 28-10-2023
package main

import (
	"fmt"
	"strconv"
	"strings"
)

type dfunc func(float64) float64

func derive(fn dfunc) dfunc {
	const iota_val = 1e-10
	return func(x float64) float64 {
		return (fn(x+iota_val) - fn(x)) / iota_val
	}
}

func newton_raphson(fn dfunc, x0 float64, max_iter int) {
	var dfn dfunc = derive(fn)
	iter := 0

	if fn(x0) != 0 {
		fmt.Printf("Iteration no|\t    x0|\tx\n")
		fmt.Println(strings.Repeat("=", 30))
	}

	for fn(x0) != 0 {
		if (iter != -1) && (iter == max_iter) {
			fmt.Println("Maximum iteration reached")
			break
		}

		iter++
		fmt.Printf("%12s|\t%2.4f|\t", "Iteration "+strconv.Itoa(iter), x0)
		derivative := dfn(x0)
		if derivative == 0 {
			fmt.Println("Derivation is 0.")
			break
		}
		x := x0 - (fn(x0) / derivative)
		x0 = x
		fmt.Println(x0)
	}
	fmt.Printf("The root is %f\n", x0)
}

func main() {
	var x0 float64
	var max_iter int
	fun := func(x float64) float64 {
		return 2*x*x - 7*x + 3
	}
	fmt.Print("Enter value for x0: ")
	fmt.Scanln(&x0)
	fmt.Print("Enter maximum iteration: ")
	fmt.Scanln(&max_iter)
	newton_raphson(fun, x0, max_iter)
}
