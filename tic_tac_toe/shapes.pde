void createBoard (){
  line(COLUMN_WIDTH, 0, COLUMN_WIDTH, CANVAS_SIZE);
  line(COLUMN_WIDTH_DOUBLED, 0, COLUMN_WIDTH_DOUBLED, CANVAS_SIZE);
  line(0, COLUMN_WIDTH, CANVAS_SIZE, COLUMN_WIDTH);
  line(0, COLUMN_WIDTH_DOUBLED, CANVAS_SIZE,COLUMN_WIDTH_DOUBLED);
}
void drawX(int row, int col) {
  float x = col * SQUARE_SIZE;
  float y = row * SQUARE_SIZE;
  line(x, y, x + SQUARE_SIZE, y + SQUARE_SIZE);
  line(x + SQUARE_SIZE, y, x, y + SQUARE_SIZE);
}
void drawO(int row, int col) {
  float x = col * SQUARE_SIZE + SQUARE_SIZE / 2;
  float y = row * SQUARE_SIZE + SQUARE_SIZE / 2;
  float diameter = SQUARE_SIZE * 0.8;
  ellipse(x, y, diameter, diameter);
}
