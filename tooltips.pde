void showToolTip() {
 // based on Y pos of cursor and if colour under 
 // cursor is black, show a tooltip to the user based on info gathered by cursor
  int year = chooseYear();
  String teamName = chooseHeight(selectedTable);
  node_info.setText("Team Name: " + teamName);
  node_info.setIsActive(true);
  loadPixels();
  if (mouseX > 305 && mouseX < 900) {
    if (red(pixels[mouseX + mouseY * width]) == 0.0 && 
    green(pixels[mouseX + mouseY * width]) == 0.0 &&
    blue(pixels[mouseX + mouseY * width]) == 0.0) {
      node_info.draw(mouseX,mouseY);
    }
  }
}

int chooseYear() {
  int year = 2004;
  if (mouseX > 305 && mouseX < 350) {
    year = 2004;
  }
  if (mouseX > 360 && mouseX < 405) {
    year = 2005;
  }
  if (mouseX > 415 && mouseX < 460) {
    year = 2006;
  }
  if (mouseX > 470 && mouseX < 515) {
    year = 2008;
  }
  if (mouseX > 525 && mouseX < 570) {
    year = 2009;
  }
  if (mouseX > 580 && mouseX < 625) {
    year = 2010;
  }
  if (mouseX > 635 && mouseX < 680) {
    year = 2011;
  }
  if (mouseX > 690 && mouseX < 735) {
    year = 2012;
  }
  if (mouseX > 745 && mouseX < 790) {
    year = 2013;
  }
  if (mouseX > 800 && mouseX < 845) {
    year = 2014;
  }
  if (mouseX > 855 && mouseX < 900) {
    year = 2015;
  }
  return year;
}

String chooseHeight(Table selTable) {
  String teamName = "n/a";
  for (int i=0; i <selTable.getRowCount();i++) {
     int nHeight = 960/teamList.length;
     teamHeight[i]=nHeight*(i+1);
     if (mouseX > 305 && mouseX < 900) {
       if (mouseY > teamHeight[i]-5 && mouseY < teamHeight[i+1]-5) {
         teamName = teamList[i];
       }
      if (mouseY >= 948) {
           teamName = teamList[33];
       }
     }
  }
  return teamName;
}