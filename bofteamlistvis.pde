/*
  Create a line graph that connects if a team enters in consecutive years, 
  otherwise use the gaps to show what years they did not participate in.
*/

String[] teamList, yearList, team;
int[] teamHeight;
Table bofteamlist;

void setup() {
  // load unicode font here (if needed)
  size(960,960);
  bofteamlist = loadTable("csv-dataset.csv", "header");
  teamList = listTeams(bofteamlist);
  teamHeight = new int[teamList.length];  
  yearList = listYears(bofteamlist);
  //println(yearList);
}

void draw() {
  background(255);
  drawTeamList();
  println(teamHeight);
  //for (int i = 0; i<23;i++) {
  // int nHeight = 960/teamList.length;
  // String[] teamYearData = yearLoader(teamList[i]);
  // drawLineNodes(teamYearData,(nHeight*(i+1))-25);
  // drawYearList(nHeight*(i+1));
  //}
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