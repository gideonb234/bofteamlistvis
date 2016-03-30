void drawLineGraph() {
/*
  Check for Y, and then also check next column to see if it's Y, 
  if it is, draw a line between the two points otherwise ignore
  possibly add brushing to add more interaction
*/

  
}

void drawTeamList() {
  /*
    Draw team list on left hand side of the screen
  */
  fill(0,0,0);
  rect(0,0,300,960);
  int nHeight = 960/teamList.length;
  for (int i=0;i<teamList.length;i++) {
    fill(150);
    rect(5, nHeight*(i+1)-20,280,25);
    fill(255);
    text(teamList[i],10,nHeight*(i+1));
  }
}

void drawTeam(String team) {
  
}