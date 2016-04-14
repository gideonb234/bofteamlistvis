/*
  Create a line graph that connects if a team enters in consecutive years, 
  otherwise use the gaps to show what years they did not participate in.
*/

String[] teamList, yearList, team;
int[] teamHeight;
Table bofteamlist;
boolean[] isClicked;
int teamClickedCount;

void setup() {
  // load unicode font here (if needed)
  size(960,960);
  bofteamlist = loadTable("csv-dataset.csv", "header");
  teamList = listTeams(bofteamlist);
  teamHeight = new int[teamList.length];
  isClicked = new boolean[teamList.length];
  yearList = listYears(bofteamlist);
  for (int i=0;i<teamList.length;i++) {
    isClicked[i] = false;
  }
  //println(yearList);
}

void draw() {
  background(255);
  drawTeamList();
  drawYearList(20);
  for (int i = 0; i<teamList.length;i++) {
    isDrawn(i);
  }
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

String[] yearLoader(int teamNum) {
  
  String[] yearData = new String[bofteamlist.getColumnCount()]; 
  
  for (TableRow row : bofteamlist.rows()) {
    teamNum = teamNum;
    row = bofteamlist.getRow(teamNum);
    for (int i = 0;i<row.getColumnCount();i++) {
      yearData[i] = row.getString(i);
    }
  }
  //println(yearData);
  return yearData;
}