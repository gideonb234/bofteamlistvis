void drawTeamList() {
  /*
    Draw team list on left hand side of the screen
  */
  fill(97,194,252);
  rect(0,0,260,960);
  int nHeight = 960/teamList.length;
  for (int i=0;i<teamList.length;i++) {
   //int j = i-1;
   fill(252,188,8);
   teamHeight[i]=nHeight*(i+1);
   rect(5, nHeight*(i+1)-20,250,25);
   fill(52,51,48);
   text(teamList[i],10,nHeight*(i+1));
  }
}

void drawYearList(int nHeight) {
  /*
    Draw years on other side of the screen
  */
  int nWidth = (660/yearList.length);
  for (int i=1;i<yearList.length;i++){
    fill(0);
    text(yearList[i],(nWidth*i)+250,nHeight);
  }
}

void drawLineNodes(String[] parsedRow, int nHeight) {
  /*
    draw the line graph here
  */
  int nWidth = (660/yearList.length);
  for (int i = 1;i<parsedRow.length;i++) {
    fill(0);
    if (parsedRow[i].equals("Y")) {
      ellipse((nWidth*i)+265,nHeight,10,10);
      int currentNodeX = (nWidth*i)+265;
      if (i+1 >= 12) { /* do nothing */ } else {
        if(parsedRow[i+1].equals("Y")) {
          int nextNodeX = (nWidth*(i+1))+265;
          drawConnectors(currentNodeX, nextNodeX, nHeight);
        } else { /* do nothing */}
      }
    }
  }
}

// give positions of X for currentNode and nextNode
void drawConnectors(int currentNodeX, int nextNodeX, int chartHeight) {
  /*
    draw the lines connecting the line graph here
  */
  fill(122,100,95);
  line(currentNodeX, chartHeight, nextNodeX, chartHeight);
}

void teamColourSelect(int count) {
  
}