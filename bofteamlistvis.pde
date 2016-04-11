/*
  Create a line graph that connects if a team enters in consecutive years, 
  otherwise use the gaps to show what years they did not participate in.
*/

String[] teamList, yearList, team;
Table bofteamlist;

void setup() {
  // load unicode font here (if needed)
  size(960,960);
  bofteamlist = loadTable("csv-dataset.csv", "header");
  teamList = listTeams(bofteamlist);
  yearList = listYears(bofteamlist);
  //println(yearList);
}

void draw() {
  background(255);
  drawTeamList();
  drawYearList(350);
  //for (int i = 0; i<23;i++) {
  //  String[] teamYearData = yearLoader(teamList[i]);
  //  drawLineGraph(teamYearData);
  //}
  String [] teamYearData = yearLoader(teamList[1]);
  drawLineNodes(teamYearData, 320);
  //drawLineGraph();
}

/**
/* Load the year data for the row based on the title of the row
*/

String[] yearLoader(String teamName) {
  
  String[] yearData = new String[bofteamlist.getColumnCount()]; 
  
  for (TableRow row : bofteamlist.rows()) {
    row = bofteamlist.findRow(teamName, "Team Name");
    for (int i = 0;i<row.getColumnCount();i++) {
      yearData[i] = row.getString(i);
    }
  }
  //println(yearData);
  return yearData;
}