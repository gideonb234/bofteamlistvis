//void drawTeamList() {
//  /*
//    Draw team list on left hand side of the screen
//  */
//  fill(97,194,252);
//  rect(0,0,260,960);
//  int nHeight = 960/teamList.length;
//  for (int i=0;i<teamList.length;i++) {
//   //int j = i-1;
//   fill(252,188,8);
//   teamHeight[i]=nHeight*(i+1);
//   rect(5, nHeight*(i+1)-20,250,25);
//   fill(52,51,48);
//   text(teamList[i],10,nHeight*(i+1));
//  }
//}

// draw 4 buttons here which will lead to different onlcicks 
void drawButtons() { 
  textFont(serif);
  textSize(15);
  fill(97,194,252);
  rect(0,0,260,960);
  // buttons
  fill(252,188,8);
  rect(5, 250,250,25);
  fill(52,51,48);
  text("Sort by Years (First - Last)",10,270);
  fill(252,188,8);
  rect(5, 300,250,25);
  fill(52,51,48);
  text("Sort by Most Concurrent Participation",10,320);
  fill(252,188,8);
  rect(5, 350,250,25);
  fill(52,51,48);
  text("Sort by Most Years Participated",10,370);
  fill(252,188,8);
  rect(5, 400,250,25);
  fill(52,51,48);
  text("Sort Alphabetically",10,420);
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
      ellipse((nWidth*i)+265,nHeight,13,13);
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

void drawGraph(Table table) {
  for (int i = 0; i<teamList.length;i++) {  
   String[] teamData = yearLoader(table, i);
   int nHeight = 960/teamList.length;
   teamHeight[i]=nHeight*(i+1);
   drawLineNodes(teamData,teamHeight[i]);
  };
  teamList = listTeams(table);
}

// give positions of X for currentNode and nextNode
void drawConnectors(int currentNodeX, int nextNodeX, int chartHeight) {
  /*
    draw the lines connecting the line graph here
  */
  fill(122,100,95);
  line(currentNodeX, chartHeight, nextNodeX, chartHeight);
}

void drawTitle() {
  fill(52,51,48);
  textFont(monospace);
  textSize(20);
  text("BMS of Fighters Team",10,150);
  text("Visualisation",10,175);
}

void drawInstructions() {
  fill(52,51,48);
  textFont(serif);
  textSize(20);
  text("Click on the buttons", 25, 500);
  text("to sort the teams", 25, 525);
  text("Mouse over the nodes", 25, 575);
  text("to see the team names", 25, 600);
}

void drawKey() {
  fill(52,51,48);
  textFont(serif);
  textSize(15);
  text("Nodes show what years the", 25, 650);
  text("teams participated in and lines", 25, 670);
  text("show when they participated in", 25, 690);
  text("consecutive years.", 25, 710);
  ellipse(25, 730, 13, 13); 
  text("Singular node", 80, 735);
  ellipse(25, 760, 13, 13);
  line(25, 760, 70, 760);
  ellipse(70, 760, 13, 13);
  text("Conseuctive year", 80, 765);
}