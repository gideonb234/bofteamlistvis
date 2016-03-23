/**
/* Load the file in this sketch and assign the data properly to values
*/

String year;

void fileLoader(Table file) {
  println(file.getRowCount() + " total rows in table");
  println(file.getColumnCount());
  for (TableRow row : file.rows()) {
   String teamName = row.getString("Team Name");
   println(teamName);
   for (int i = 1; i < file.getColumnCount();i++) {
     
   }
  }
}