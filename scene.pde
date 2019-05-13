float scene = 0;
void scene() {
  font = loadFont("Gabriola-48.vlw");

  if (scene == 0) {
    score = 0;
    background(#8EEDFF);
    loadFont("Gabriola-48.vlw");
    textSize(48);
    sceneButton("Play", 200, 175, 200, 80, 1);
    textSize(48);
    sceneButton ("How to Play" ,200, 275 , 200, 80, 0.5);
  }
  if (scene == 0.5) {
    background(0);
    fill(255);
    textSize(45);
    text("Press any key or mouse to jump \n  avoid any obsticals or the ground \n and space.", 300, 300);
    sceneButton( "Back",10, 10, 100, 50, 0);
  }
  if (scene == 1) {
    background (#8EEDFF);
    fill(#2EF0EE);
    ellipse(birb.x, birb.y, birb.diameter, birb.diameter);
    birb.step();
    pipe1.movement();
    pipe1.render();
    pipe1.collision();
    pipe2.movement();
    pipe2.render();
    pipe2.collision();
   
    textAlign(CORNER, CORNER);
    fill(255);
    textSize(48);
    text(score, 10, 20);
  }
  if(scene == 2) {
    pipe1.reset();
    pipe2.reset();
    birb.reset();
    background(255, 50, 50);
    textAlign(CENTER, CENTER);
    fill(255);
    textSize(48);
    text("YOU DIED!", 300, 200);
    fill(255);
    textSize(48);
    sceneButton("Retry",250, 300, 100, 50, 0);
    textSize(48);
    fill(255);
    text(score, width/2, 250);
  }

  }
