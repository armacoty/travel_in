import 'package:flutter/material.dart';

class SberService {
  String title, icon, url;
  Color color;

  SberService(
      {this.color = Colors.green, this.icon, this.title = "", this.url});
}

final links = <SberService>[
  SberService(
    icon: 'assets/SBER/sber_eapteka.png',
    url: 'https://www.sberbank.com/ru/eco/eapteka',
    color: Color(0xFF7D6EEE),
    title: 'СБЕР ЕАПТЕКА',
  ),
  SberService(
    icon: 'assets/SBER/sber_food.png',
    url: 'https://plazius.ru/',
    color: Color(0xFFFD003E),
    title: 'СберФуд',
  ),
  SberService(
    icon: 'assets/SBER/sber_mobile.png',
    url: 'https://sbermobile.ru/',
    color: Color(0xFF55DE66),
    title: 'СБЕР Мобайл',
  ),
  SberService(
    icon: 'assets/SBER/sber_okko.png',
    url: 'https://okko.tv/',
    color: Color(0xFF6B44BD),
    title: 'Okko',
  ),
  SberService(
    icon: 'assets/SBER/sber_samokat.png',
    url: 'https://www.sberbank.com/ru/eco/samokat',
    color: Color(0xFFFD486F),
    title: 'Самокат',
  ),
  SberService(
    icon: 'assets/SBER/sber_sitimobil.png',
    url: 'https://city-mobil.ru/',
    color: Color(0xFFFE7200),
    title: 'Ситимобил',
  ),
];
