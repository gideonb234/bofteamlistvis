/*
  Create a line graph that connects if a team enters in consecutive years, 
  otherwise use the gaps to show what years they did not participate in.
*/

void setup() {
  // load unicode font here (if needed)
  size(960,960);
  Table bofteamlist = loadTable("csv-dataset.csv", "header");
  fileLoader(bofteamlist);  
}

void draw() {
  // test jp here
  drawLineGraph();
}