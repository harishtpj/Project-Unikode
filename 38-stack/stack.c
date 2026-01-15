// Basic Stack Implementation in C
// Written by M.V.Harish Kumar on 15-01-2026
#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <string.h>

typedef struct {
	int *arr;
	int top;
	int cap;
} Stack;

Stack *newStack() {
	Stack *s = malloc(sizeof(Stack));
	s->arr = malloc(8 * sizeof(int));
	s->top = -1;
	s->cap = 8;
	return s;
}

bool isEmpty(Stack *s) {
	return s->top == -1;
}

void push(Stack *s, int elem) {
	if (s->top == s->cap - 1) {
		s->cap *= 2;
		s->arr = realloc(s->arr, s->cap * sizeof(int));
	}
	s->arr[++s->top] = elem;
}

int pop(Stack *s) {
	if (isEmpty(s))
		perror("Stack Underflow!");
	return s->arr[s->top--];
}

int peek(Stack *s) {
	if (isEmpty(s)) {
		perror("Stack Underflow!");
		exit(1);
	}
	return s->arr[s->top];
}

void display(Stack *s) {
	if (isEmpty(s))
		puts("Stack is Empty!");
	else {
		printf("[");
		for (int i = 0; i <= s->top; i++)
			printf("%d ", s->arr[i]);
		printf("<-(top)\n");
	}
}

void freeStack(Stack *s) {
	free(s->arr);
	free(s);
}

int main() {
	char input[64], cmd[8];
	int elem;
	Stack *s = newStack();
	puts("Stack implementation");
	puts("====================");
	puts("Commands:");
	puts("- push <elem>: Push Element to Stack");
	puts("- pop: Pop Element from Stack");
	puts("- peek: Get last element from Stack");
	puts("- display: Display the Stack");
	puts("- exit: Exit the program");
	putchar('\n');

	printf("S>>> ");
	while (fgets(input, sizeof(input), stdin)) {
		int matched = sscanf(input, "%s %d", cmd, &elem);

		if (matched == 2 && strcmp(cmd, "push") == 0) {
			push(s, elem);
			printf("Pushed %d onto Stack\n", elem);
		} else if (matched == 1) {
			if (strcmp(cmd, "pop") == 0)
				printf("Popped Element: %d\n", pop(s));
			else if (strcmp(cmd, "peek") == 0)
				printf("Top Element: %d\n", peek(s));
			else if (strcmp(cmd, "display") == 0)
				display(s);
			else if (strcmp(cmd, "exit") == 0)
				break;
			else
				printf("Invalid command: %s\n", cmd);
		} else {
			puts("Invalid input format.");
		}
		printf("S>>> ");
	}
	freeStack(s);
	return 0;
}
