// Достопримечательность
class Attraction {
  final String name;
  final int id;

  Map<String, String> questions = {};

  double latitude, longitude;

  Attraction(this.name, this.id,
      {this.questions, this.latitude, this.longitude});
}
