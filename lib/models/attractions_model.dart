// Достопримечательность
class Attraction {
  final String name;
  final int id;

  Map<String, String> questions = {};

  Attraction(this.name, this.id, {this.questions});
}
