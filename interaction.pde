void mouseClicked() {
  /*
    when a team is clicked, I want them to draw line graph ye
    maybe do it as a map??
  */
  if (mouseX > 5 && mouseX < 256) {
   /*
     I wish there was a less stupid way to do this
   */
   if (mouseY > 250 && mouseY < 275) {
     sortButtons(1);
     println("1");
   }
   if (mouseY > 300 && mouseY < 325) {
     sortButtons(2);
     println("2");
   }
   if (mouseY > 350 && mouseY < 375) {
     sortButtons(3);
     println("3");
   }
   if (mouseY > 400 && mouseY < 425) {
     sortButtons(4);
     println("4");
   }
  }
}

void mouseMoved() {
  cursor(ARROW);
  if (mouseX > 5 && mouseX < 256) {
   /*
     I wish there was a less stupid way to do this
   */
   if (mouseY > 250 && mouseY < 275) {
     cursor(HAND);
   }
   if (mouseY > 300 && mouseY < 325) {
     cursor(HAND);
   }
   if (mouseY > 350 && mouseY < 375) {
     cursor(HAND);
   }
   if (mouseY > 400 && mouseY < 425) {
     cursor(HAND);
   }
  }
}

void sortButtons(int functionNum) {
  /*
    Sort things based on these buttons (lets use a case switch here because i'm fucking fancy)
  */
  switch(functionNum) {
    case 1:
      selectedTable = sortYearList;
      break;
    case 2:
      selectedTable = ConcurrentList;
      break;
    case 3:
      selectedTable = ParticipationList;
      break;
    case 4:
      selectedTable = AlphabetList;
      break;
    default:
      break;
  }
}