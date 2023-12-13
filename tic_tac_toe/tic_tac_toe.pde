void setup() {
  size(500, 500);
  background (255);
  createBoard();
  setupGame();
  playComputerTurn();
}

void draw() {
}
void keyPressed() {
  if (gameInProgress) {
    if (key >= '0' && key <= '8') {
      int position = key - '0'; // Convert ASCII to numeric value
      int row = position / BOARD_SIZE;
      int col = position % BOARD_SIZE;

      if (row >= 0 && row < BOARD_SIZE && col >= 0 && col < BOARD_SIZE) {
        if (isSquareEmpty(row,col)) {
        playUserTurn(row, col);
        if (gameInProgress) {
          playComputerTurn();
        }
       } else {
         println("Square is occupied, choose a new one");
       }
      } else {
        println("Invalid key. Press a numeric key between 0-8.");
      }
    } else {
      println("Invalid key. Press a numeric key between 0-8.");
    }
  } else {
    println("The game has ended.");
  }
}
