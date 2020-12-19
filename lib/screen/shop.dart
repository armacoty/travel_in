import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:travel_in/screen/embed.dart';
import 'package:travel_in/screen/webview.dart';

class ShopPage extends StatefulWidget {
  @override
  _ShopPageState createState() => _ShopPageState();
}

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

class _ShopPageState extends State<ShopPage> {
  // Map<String, String> getLinks() {
  //   return <String, String>{
  //     'assets/SBER/sber_eapteka.png': 'https://www.sberbank.com/ru/eco/eapteka',
  //     'assets/SBER/sber_food.png': 'https://plazius.ru/',
  //     'assets/SBER/sber_mobile.png': 'https://sbermobile.ru/',
  //     'assets/SBER/sber_okko.png': 'https://okko.tv/',
  //     'assets/SBER/sber_samokat.png': 'https://www.sberbank.com/ru/eco/samokat',
  //     'assets/SBER/sber_sitimobil.png': 'https://city-mobil.ru/',
  //   };
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 30.0, left: 30, right: 30),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/backgrounds/3.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: GridView.count(
          crossAxisCount: 2,
          children: List.generate(6, (index) {
            return sberCard(context, index);
          }),
        ),
      ),
    );
  }

  Widget sberCard(BuildContext context, int i) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(8.0),
        width: 150,
        height: 150,
        decoration: BoxDecoration(
          color: Color(0x85FFFFFF),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: IconButton(
            iconSize: 100,
            icon: Image.asset(
              links[i].icon,
              fit: BoxFit.contain,
            ),
            onPressed: () {
              String url = links[i].url;
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Embed(
                    url: url,
                    color: links[i].color,
                    title: links[i].title,
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
