// Exercise 13-10: Develop the beginnings of a Tic-Tac-Toe game. Create a Cell object that 
// can exist in one of two states: "O" or nothing. When you click on the cell, its state changes from 
// nothing to "O". Here is a framework to get you started.


Cell[][] board;  

int cols = 3;  
int rows = 3;  
int sum =0 ;
void setup() {   
  size(300, 300);

  int w = width / cols;
  int h = height / rows;

  board = new Cell[cols][rows];
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      board[i][j] = new Cell(i * w, j * h, w, h);
    }
  }
}   

void draw() {   
  background(255); 
  sum = 0;
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      board[i][j].display();
    }
  }
    for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      //if(board[i][j].state == 0)
      sum+=board[i][j].state;
    }
  }
    if(sum == 0)
      {
        background(0);
        text("You Win!",120,150);
      }
}   

void mousePressed() {   
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      board[i][j].click(mouseX, mouseY);
    }
  }
} 