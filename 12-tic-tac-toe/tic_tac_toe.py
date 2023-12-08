# Simple Tic tac toe game written in Python
# Written by M.V.Harish Kumar on 30-12-2021
import random

global board
board = [1,2,3,4,"X",6,7,8,9]

def display_board(board):
    # The function accepts one parameter containing the board's current status
    # and prints it out to the console.
    print("\t +-------+-------+-------+")
    print("\t |       |       |       |")
    print(f"\t |   {board[0]}   |   {board[1]}   |   {board[2]}   |")
    print("\t |       |       |       |")
    print("\t +-------+-------+-------+")
    print("\t |       |       |       |")
    print(f"\t |   {board[3]}   |   {board[4]}   |   {board[5]}   |")
    print("\t |       |       |       |")
    print("\t +-------+-------+-------+")
    print("\t |       |       |       |")
    print(f"\t |   {board[6]}   |   {board[7]}   |   {board[8]}   |")
    print("\t |       |       |       |")
    print("\t +-------+-------+-------+")


def enter_move(board):
    # The function accepts the board's current status, asks the user about their move, 
    # checks the input, and updates the board according to the user's decision.
    try:
        user_move = int(input("Enter your move: "))
    except:
        print("Invalid Input")
    
    if user_move in moves_remaining:
        board[user_move - 1] = "O"
    else:
        print("Invalid Input")
    


def make_list_of_free_fields(board):
    # The function browses the board and builds a list of all the free squares; 
    # the list consists of tuples, while each tuple is a pair of row and column numbers.
    moves_remaining = []
    for move in board:
        if type(move) is int:
            moves_remaining.append(move)
    return moves_remaining


def victory_for(board, sign):
    # The function analyzes the board's status in order to check if 
    # the player using 'O's or 'X's has won the game
    if (board[0] == sign) and (board[1] == sign) and (board[2] == sign):
        return True
    elif (board[3] == sign) and (board[4] == sign) and (board[5] == sign):
        return True
    elif (board[6] == sign) and (board[7] == sign) and (board[8] == sign):
        return True
    elif (board[0] == sign) and (board[3] == sign) and (board[6] == sign):
        return True
    elif (board[1] == sign) and (board[4] == sign) and (board[7] == sign):
        return True
    elif (board[2] == sign) and (board[5] == sign) and (board[8] == sign):
        return True
    elif (board[0] == sign) and (board[4] == sign) and (board[8] == sign):
        return True
    elif (board[2] == sign) and (board[4] == sign) and (board[6] == sign):
        return True
    else:
        return False


def draw_move(board):
    # The function draws the computer's move and updates the board.
    pc_move = random.choice(moves_remaining)
    board[pc_move - 1] = "X"

while True:
    moves_remaining = make_list_of_free_fields(board)
    if len(moves_remaining) == 0:
        print("Draw")
        break
    display_board(board)
    enter_move(board)
    if victory_for(board, "O"):
        display_board(board)
        print("You Win the match")
        break
    moves_remaining = make_list_of_free_fields(board)
    if len(moves_remaining) == 0:
        print("Draw")
        break
    draw_move(board)
    if victory_for(board, "X"):
        display_board(board)
        print("Computer Win the match")
        break
