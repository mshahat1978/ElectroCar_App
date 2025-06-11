

class DataItemClass {
  int id;
  String s_Name;
  String s_Title;
  String discription;
  String imagePath;
  String branch;
  String location;
  int rate;

  DataItemClass({
    this.id = 0,
    required this.s_Name,
    this.s_Title = '',
    this.discription = '',
    required this.imagePath,
    this.branch = '',
    this.location = '',
    this.rate = 0,
  });
}
