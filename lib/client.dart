import 'package:travel_in/models/attractions_model.dart';

class Client {
  List<Attraction> getAttractions() {
    // // TODO: Remove mock data
    return [
      Attraction(
        "Успенский собор",
        1,
        questions: {
          'Когда оно было построено?':
              'Собор с колокольней и роскошными росписями, был построен в 2010 г. по образцу прежней церкви.',
          'Какая у него высота?': '50 метров.',
        },
        latitude: 57.6223256680192,
        longitude: 39.9018840690959,
      ),
    ];
  }
}

Client client = new Client();
