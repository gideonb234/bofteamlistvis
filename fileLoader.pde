/**
/* Load the file in this sketch and assign the data properly to values
*/

String year;
String[] teamData = new String[12];

void fileLoader(Table file) {
  println(file.getRowCount());
  for (TableRow row : file.rows()) {
    
    String teamName = row.getString("Team Name");
    teamData[0] = teamName;
    int arrayCounter = 1;
    for (int i = 1; i < file.getColumnCount();i++) {
      if (row.getString(i).equals("Y")) {
        teamData[arrayCounter] = row.getColumnTitle(i);
        arrayCounter++;
      } else if (row.getString(i).equals("N")) {
       teamData[arrayCounter] = row.getString(i);
       arrayCounter++;
      } 
    }
    arrayCounter = 1;
  }
}