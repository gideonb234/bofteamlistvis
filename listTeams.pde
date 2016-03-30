// go through table and list teams here
String[] listTeams(Table teams) {
  String[] teamList = new String[teams.getRowCount()];
   for (int i = 0; i<teams.getRowCount();i++) {
    TableRow row = teams.getRow(i);
    String teamName = row.getString("Team Name");
    teamList[i] = teamName;
   }
   return teamList;
}