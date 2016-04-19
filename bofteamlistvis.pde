/*
  Create a line graph that connects if a team enters in consecutive years, 
  otherwise use the gaps to show what years they did not participate in.
*/

String[] teamList, yearList, team;
int[] teamHeight, yearWidths;
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
  yearWidths = yearWidths(yearList);
  for (int i=0;i<teamList.length;i++) {
    isClicked[i] = false;
  }
  //println(yearList);
}

void draw() {
  background(255);
  drawButtons();
  drawYearList(20);
  // draw the things here
  for (int i = 0; i<teamList.length;i++) {
    String[] teamData = yearLoader(i);
    int nHeight = 960/teamList.length;
    teamHeight[i]=nHeight*(i+1);
    drawLineNodes(teamData,teamHeight[i]);
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
    row = bofteamlist.getRow(teamNum);
    for (int i = 0;i<row.getColumnCount();i++) {
      yearData[i] = row.getString(i);
    }
  }
  //println(yearData);
  return yearData;
}

String[] listTeams(Table teams) {
  String[] teamList = new String[teams.getRowCount()];
   for (int i = 0; i<teams.getRowCount();i++) {
    TableRow row = teams.getRow(i);
    String teamName = row.getString("Team Name");
    teamList[i] = teamName;
   }
   return teamList;
}

String[] listYears(Table teams) {
  String[] yearList = new String[teams.getColumnCount()];
  for (int i = 1; i<teams.getRowCount();i++) {
    yearList = teams.getColumnTitles();
   }
   return yearList;
}

int[] yearWidths(String[] years) {
  int[] yearWidthData = new int[years.length];
  int nWidth = (660/years.length);
  for (int i=1;i<years.length;i++){
    fill(0);
    yearWidthData[i] = ((nWidth*i)+250);
  }
  return yearWidthData;
}