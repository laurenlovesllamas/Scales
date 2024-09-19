void setup(){
  size(1200,1200);
  background(0);
}

void draw(){
  background(0);
  int spacing = 300; // Distance between each cat 
  
  // Loop to place cats in rows and columns 
  for (int i = 0; i < 4; i++) { // 4 rows
    for (int j = 0; j < 4; j++) { // 4 columns 
    kittyCat(j * spacing + 150, i * spacing + 150); // Position each cat 
    }
  }
}

void kittyCat(int x, int y){
  // Draw the cat centered at (x, y)
  noStroke();
  fill(255, 255, 255); 
  
  // Left ear 
  triangle(x - 110, y, x - 45, y - 140, x, y); 
  // Right ear
  triangle(x, y, x + 35, y - 140, x + 120, y);
  // Head
  ellipse(x, y, 250, 150); 
  noStroke();
  fill(0, 0, 0); 
  // Left eye 
  ellipse(x - 50, y - 25, 10, 10);
  // Right eye 
  ellipse(x + 40, y - 25, 10, 10);
  // Mouth
  textSize(60);
  text("^", x - 20, y + 20); 
}

// Triangle Points
// First coordinate: Bottom-left corner 
// Second coordinate: Apex (top point)
// Third coordinate: Bottom-right corner 
