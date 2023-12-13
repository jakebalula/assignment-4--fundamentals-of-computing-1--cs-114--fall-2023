char [][] board;

void setupGame(){
  board = new char[BOARD_SIZE][BOARD_SIZE];
  for (int i = 0; i < BOARD_SIZE; i++) {
    for (int j = 0; j < BOARD_SIZE; j++) {
      board [i][j] = ' ';
    }
  }
  gameInProgress = true;
}
void displayBoard() {
  for (int i = 0; i < BOARD_SIZE; i++) {
    for (int j = 0; j < BOARD_SIZE; j++) {
      if (board[i][j] == 'X') {
        drawX(i, j);
      } else if (board[i][j] == 'O') {
        drawO(i, j);
      }
    }
  }
}

boolean isSquareEmpty(int row, int col) {
  return board [row][col] == ' ';
}

boolean isBoardFull() {
  for (int i = 0; i < BOARD_SIZE; i++) {
    for(int j=0; j < BOARD_SIZE; j++) {
      if (isSquareEmpty(i, j)) {
        return false;
      }
    }
  }
  return true;
}

void playUserTurn(int row, int col) {
  if (isSquareEmpty(row,col)) {
    board[row][col] = 'O';
    if (checkWin('O')) {
      println("The User wins!");
      gameInProgress = false;
    } else if (isBoardFull()) {
      println("Board full, no one wins.");
      gameInProgress = false;
    }
    displayBoard();
  } else {
    println("Square is already occupied.");
  }
}

boolean checkWin(char player) {

  for (int i = 0; i < BOARD_SIZE; i++) {
    if (board[i][0] == player && board[i][1] == player && board[i][2] == player) {
      return true; 
    }
    if (board[0][i] == player && board[1][i] == player && board[2][i] == player) {
      return true; 
    }
  }

 
  if (board[0][0] == player && board[1][1] == player && board[2][2] == player) {
    return true;
  }
  if (board[0][2] == player && board[1][1] == player && board[2][0] == player) {
    return true; 
  }

  return false; 
}

void playComputerTurn(){
  while (true) {
    int row = int(random(BOARD_SIZE));
    int col = int(random(BOARD_SIZE));
    if (isSquareEmpty(row,col)){
      board[row][col] = 'X';
      displayBoard();
      if (checkWin('X')) {
      println("The computer has won.");
      gameInProgress = false;
    } else if (isBoardFull()) {
      println("Board full, no one wins.");
      gameInProgress = false;
    }
    return;
  }
 }
}
