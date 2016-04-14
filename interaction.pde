void mouseClicked() {
  /*
    when a team is clicked, I want them to draw line graph ye
    maybe do it as a map??
  */
  if (mouseX > 5 && mouseX < 256) {
    /*
      I wish there was a less stupid way to do this
    */
    if (mouseY > 25 && mouseY < 50) {
         println("0");
         teamButtons(0);
         if (isClicked[0]) {
            isClicked[0] = false;
         } else {
            isClicked[0] = true;
         }
    }
    if (mouseY > 67 && mouseY < 89) {
         println("1");
         teamButtons(1);
         if (isClicked[1]) {
            isClicked[1] = false;
         } else {
            isClicked[1] = true;
         }
    }
    if (mouseY > 108 && mouseY < 130) {
         println("2");
         teamButtons(2);
         if (isClicked[2]) {
            isClicked[2] = false;
         } else {
            isClicked[2] = true;
         }
    }
    if (mouseY > 149 && mouseY < 171) {
         println("3");
         teamButtons(3);
         if (isClicked[3]) {
            isClicked[3] = false;
         } else {
            isClicked[3] = true;
         }
    }
    if (mouseY > 190 && mouseY < 212) {
         println("4");
         teamButtons(4);
         if (isClicked[4]) {
            isClicked[4] = false;
         } else {
            isClicked[4] = true;
         }
    }
    if (mouseY > 231 && mouseY < 253) {
         println("5");
         teamButtons(5);
         if (isClicked[5]) {
            isClicked[5] = false;
         } else {
            isClicked[5] = true;
         }
    }
    if (mouseY > 272 && mouseY < 294) {
         println("6");
         teamButtons(6);
         if (isClicked[6]) {
            isClicked[6] = false;
         } else {
            isClicked[6] = true;
         }
    }
    if (mouseY > 313 && mouseY < 335) {
         println("7");
         teamButtons(7);
         if (isClicked[7]) {
            isClicked[7] = false;
         } else {
            isClicked[7] = true;
         }
    }
    if (mouseY > 354 && mouseY < 376) {
         println("8");
         teamButtons(8);
         if (isClicked[8]) {
            isClicked[8] = false;
         } else {
            isClicked[8] = true;
         }
    }
    if (mouseY > 395 && mouseY < 417) {
         println("9");
         teamButtons(9);
         if (isClicked[9]) {
            isClicked[9] = false;
         } else {
            isClicked[9] = true;
         }
    }
    if (mouseY > 436 && mouseY < 458) {
         println("10");
         teamButtons(10);
         if (isClicked[10]) {
            isClicked[10] = false;
         } else {
            isClicked[10] = true;
         }
    }
    if (mouseY > 477 && mouseY < 499) {
         println("11");
         teamButtons(11);
         if (isClicked[11]) {
            isClicked[11] = false;
         } else {
            isClicked[11] = true;
         }
    }
    if (mouseY > 518 && mouseY < 540) {
         println("12");
         teamButtons(12);
         if (isClicked[12]) {
            isClicked[12] = false;
         } else {
            isClicked[12] = true;
         }
    }
    if (mouseY > 559 && mouseY < 581) {
         println("13");
         teamButtons(13);
         if (isClicked[13]) {
            isClicked[13] = false;
         } else {
            isClicked[13] = true;
         }
    }
    if (mouseY > 600 && mouseY < 622) {
         println("14");
         teamButtons(14);
         if (isClicked[14]) {
            isClicked[14] = false;
         } else {
            isClicked[14] = true;
         }
    }
    if (mouseY > 641 && mouseY < 663) {
         println("15");
         teamButtons(15);
         if (isClicked[15]) {
            isClicked[15] = false;
         } else {
            isClicked[15] = true;
         }
    }
    if (mouseY > 682 && mouseY < 704) {
         println("16");
         teamButtons(16);
         if (isClicked[16]) {
            isClicked[16] = false;
         } else {
            isClicked[16] = true;
         }
    }
    if (mouseY > 723 && mouseY < 745) {
         println("17");
         teamButtons(17);
         if (isClicked[17]) {
            isClicked[17] = false;
         } else {
            isClicked[17] = true;
         }
    }
    if (mouseY > 764 && mouseY < 786) {
         println("18");
         teamButtons(18);
         if (isClicked[18]) {
            isClicked[18] = false;
         } else {
            isClicked[18] = true;
         }
    }
    if (mouseY > 805 && mouseY < 827) {
         println("19");
         teamButtons(19);
         if (isClicked[19]) {
            isClicked[19] = false;
         } else {
            isClicked[19] = true;
         }
    }
    if (mouseY > 846 && mouseY < 868) {
         println("20");
         teamButtons(20);
         if (isClicked[20]) {
            isClicked[20] = false;
         } else {
            isClicked[20] = true;
         }
    }
    if (mouseY > 887 && mouseY < 909) {
         println("21");
         teamButtons(21);
         if (isClicked[21]) {
            isClicked[21] = false;
         } else {
            isClicked[21] = true;
         }
    }
    if (mouseY > 928 && mouseY < 950) {
         println("22");
         teamButtons(22);
         if (isClicked[22]) {
            isClicked[22] = false;
         } else {
            isClicked[22] = true;
         }
    }
  }
}

void teamButtons(int teamNum) {
  /*
    Get a button for each team and prep a graph based on it (also increment a global count var for each click on/off)
  */
  isDrawn(teamNum);
}

void isDrawn(int teamNum) {
  if (isClicked[teamNum]) {
    String[] teamData = yearLoader(teamNum);
    drawLineNodes(teamData,teamHeight[teamNum]);
  }
}