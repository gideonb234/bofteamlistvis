/*
  Create a line graph that connects if a team enters in consecutive years, 
  otherwise use the gaps to show what years they did not participate in.
*/

String[] teamList;
Table bofteamlist;

void setup() {
  // load unicode font here (if needed)
  size(960,960);
  bofteamlist = loadTable("csv-dataset.csv", "header");
  teamList = listTeams(bofteamlist);
  lineGraphLoader(teamList[20]);
}

void draw() {
  background(255);
  drawTeamList();
  //drawLineGraph();
}

/**
/* Load the year data for the row based on the title of the row
*/

String[] lineGraphLoader(String teamName) {
  String[] yearData = new String[12];
  
  for (TableRow row: bofteamlist.rows()){
    if (row.getString(0) == teamName) {
      println(teamName);
    }
  }
  
  //for (TableRow row : file.rows()) {
    
  //  String teamName = row.getString("Team Name");
  //  teamData[0] = teamName;
  //  int arrayCounter = 1;
  //  for (int i = 1; i < file.getColumnCount();i++) {
  //    if (row.getString(i).equals("Y")) {
  //      teamData[arrayCounter] = row.getColumnTitle(i);
  //      arrayCounter++;
  //    } else if (row.getString(i).equals("N")) {
  //     teamData[arrayCounter] = row.getString(i);
  //     arrayCounter++;
  //    } 
  //  }
  //  arrayCounter = 1;
  //}
  
  return yearData;
}