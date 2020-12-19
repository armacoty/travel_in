import 'package:travel_in/models/attractions_model.dart';
import 'package:geolocator/geolocator.dart';

class Client {
  List<Attraction> getAttractions() {
    // // TODO: Remove mock data
    var attr = <Attraction>[
      Attraction(
        "Успенский собор",
        1,
        questions: {
          'Когда он был построен?':
              'Собор с колокольней и роскошными росписями, был построен в 2010 г. по образцу прежней церкви.',
          'Какая у него высота?': '50 метров.',
        },
        latitude: 57.6223256680192,
        longitude: 39.9018840690959,
        rating: 4.528,
      ),
      Attraction(
        "Часовня Казанской Богоматери",
        2,
        questions: {
          'Когда она была построена?':
              'Памятник установлен в ознаменование выхода из стен монастыря в 1612 году ополчения Минина и Пожарского.',
          'Кем она была спроектирована?': 'архитектор - Г. Л. Дайнов',
        },
        latitude: 57.620409583131355,
        longitude: 39.890178940931484,
        rating: 4.132,
      ),
      Attraction(
        "Драматический театр им. Ф.Г. Волкова",
        3,
        questions: {
          'Когда он был основан?': 'В 1751 году',
          'Сколько в нем залов?': 'ответ',
        },
        latitude: 57.62702691722826,
        longitude: 39.884728813517356,
        rating: 3.743,
      ),
      Attraction(
        "Спасо-Преображенский Мужской Монастырь",
        4,
        questions: {
          'Когда он был построен?': 'ответ',
          'Кем он был спроектирован?': 'ответ',
        },
        latitude: 57.71829474073271,
        longitude: 39.90042845520624,
        rating: 3.445,
      ),
      Attraction(
        "Казанский женский монастырь",
        5,
        questions: {
          'Вопрос': 'ответ',
          'Вопрос': 'ответ',
        },
        latitude: 57.739344277642935,
        longitude: 39.93016655975159,
        rating: 2.271,
      ),
      Attraction(
        "Демидовский столп",
        6,
        questions: {
          'Вопрос': 'ответ',
          'Вопрос': 'ответ',
        },
        latitude: 57.62518079146104,
        longitude: 39.897172482827045,
        rating: 1.48,
      ),
      Attraction(
        "Вечный огонь",
        7,
        questions: {
          'Вопрос': 'ответ',
          'Вопрос': 'ответ',
        },
        latitude: 57.624742512642996,
        longitude: 39.89943861720259,
      ),
      Attraction(
        "Храм Ильи Пророка",
        8,
        questions: {
          'Вопрос': 'ответ',
          'Вопрос': 'ответ',
        },
        latitude: 57.62688423852188,
        longitude: 39.894442155844786,
      ),
      Attraction(
        "Церковь Ильинско-Тихоновская",
        9,
        questions: {
          'Вопрос': 'ответ',
          'Вопрос': 'ответ',
        },
        latitude: 57.6223256680192,
        longitude: 39.9018840690959,
      ),
      Attraction(
        "Церковь Богоявления",
        10,
        questions: {
          'Вопрос': 'ответ',
          'Вопрос': 'ответ',
        },
        latitude: 57.6218621149015,
        longitude: 39.886385227008226,
      ),
      Attraction(
        "Церковь Иоанна Предтечи",
        11,
        questions: {
          'Вопрос': 'ответ',
          'Вопрос': 'ответ',
        },
        latitude: 57.61102156360037,
        longitude: 39.85687775584398,
      ),
      Attraction(
        "Церковь Михаила Архангела",
        12,
        questions: {
          'Вопрос': 'ответ',
          'Вопрос': 'ответ',
        },
        latitude: 57.6222126947553,
        longitude: 39.89241553864546,
      ),
      Attraction(
        "Стрелка",
        13,
        questions: {
          'Вопрос': 'ответ',
          'Вопрос': 'ответ',
        },
        latitude: 57.624744330143315,
        longitude: 39.88851056022966,
      ),
      Attraction(
        "Ярославский музей- заповедник",
        14,
        questions: {
          'Вопрос': 'ответ',
          'Вопрос': 'ответ',
        },
        latitude: 57.621815586361116,
        longitude: 39.888493984331014,
      ),
      Attraction(
        "Музей истории города Ярославля",
        15,
        questions: {
          'Вопрос': 'ответ',
          'Вопрос': 'ответ',
        },
        latitude: 57.627082382520264,
        longitude: 39.898634500026176,
      ),
      Attraction(
        "Знаменская башня",
        16,
        questions: {
          'Вопрос': 'ответ',
          'Вопрос': 'ответ',
        },
        latitude: 57.62546081108764,
        longitude: 39.88502242515448,
      ),
      Attraction(
        "Музей боевой славы",
        17,
        questions: {
          'Вопрос': 'ответ',
          'Вопрос': 'ответ',
        },
        latitude: 57.634611966292375,
        longitude: 39.832557941348725,
      ),
      Attraction(
        "Музей музыки и времени",
        18,
        questions: {
          'Вопрос': 'ответ',
          'Вопрос': 'ответ',
        },
        latitude: 57.63022700567626,
        longitude: 39.89500116748213,
      ),
    ];
    for (Attraction attraction in attr) {
      attraction.imageUrl =
          'https://lh5.googleusercontent.com/p/AF1QipMe9xtZag3IX_lL0zhsaFECFH55YZ_2a3iUgJDj=w426-h240-k-no';
    }
    return attr;
  }

  Future<Position> determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permantly denied, we cannot request permissions.');
    }

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission != LocationPermission.whileInUse &&
          permission != LocationPermission.always) {
        return Future.error(
            'Location permissions are denied (actual value: $permission).');
      }
    }

    return await Geolocator.getCurrentPosition();
  }
}

final Client client = new Client();
