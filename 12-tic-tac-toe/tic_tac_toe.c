// Simple Tic Tac Toe game in C
// Written by M.V.Harish Kumar on 16-12-2025
#include <stdio.h>
#include <stdbool.h>
#define PLAYER2COIN(p) ((p) == 'X' ? 1 : 2)

char coin2Player(int coin)
{
	return coin == 1 ? 'X' : (coin == 2 ? 'O' : ' ');
}

void displayBoard(int *board)
{
	printf("\t+-------+-------+-------+\n");
	printf("\t|       |       |       |\n");
	printf("\t|   %c   |   %c   |   %c   |\n", coin2Player(board[0]), coin2Player(board[1]), coin2Player(board[2]));
	printf("\t|       |       |       |\n");
	printf("\t+-------+-------+-------+\n");
	printf("\t|       |       |       |\n");
	printf("\t|   %c   |   %c   |   %c   |\n", coin2Player(board[3]), coin2Player(board[4]), coin2Player(board[5]));
	printf("\t|       |       |       |\n");
	printf("\t+-------+-------+-------+\n");
	printf("\t|       |       |       |\n");
	printf("\t|   %c   |   %c   |   %c   |\n", coin2Player(board[6]), coin2Player(board[7]), coin2Player(board[8]));
	printf("\t|       |       |       |\n");
	printf("\t|       |       |       |\n");
	printf("\t+-------+-------+-------+\n");
}

bool isWinner(int *board, char player)
{
	int coin = PLAYER2COIN(player);
	return (board[0] == coin && board[1] == coin && board[2] == coin) ||
		(board[3] == coin && board[4] == coin && board[5] == coin) ||
		(board[6] == coin && board[7] == coin && board[8] == coin) ||
		(board[0] == coin && board[3] == coin && board[6] == coin) ||
		(board[1] == coin && board[4] == coin && board[7] == coin) ||
		(board[2] == coin && board[5] == coin && board[8] == coin) ||
		(board[0] == coin && board[4] == coin && board[8] == coin) ||
		(board[2] == coin && board[4] == coin && board[6] == coin);
}

char getState(int *board)
{
	if (isWinner(board, 'X')) return 'X';
	else if (isWinner(board, 'O')) return 'O';

	for (int i = 0; i < 9; i++)
		if (board[i] == -1)
			return 'I';
	return 'D';
}

bool validateMove(int *board, int move)
{
	return move > 0 && move < 10 && board[move-1] == -1;
}

int main()
{
	int board[9] = { [0 ... 8] = -1 };
	char turn = 'X';
	int move;

	for (;;) {
		displayBoard(board);
		switch (getState(board)) {
			case 'X':
				puts("Congratulations, 'X' wins!");
				goto end;
			case 'O':
				puts("Congratulations, 'O' wins!");
				goto end;
			case 'D':
				puts("Match drawn!");
				goto end;
			case 'I':
				printf("%c's turn. Enter move: ", turn);
				scanf("%d", &move);
				if (!validateMove(board, move)) {
					puts("Invalid move. Please try again!");
				} else {
					board[move-1] = PLAYER2COIN(turn);
					turn = turn == 'X' ? 'O' : 'X';
				}
		}
	}

end:
	return 0;
}
