import 'dart:convert';
import 'dart:js';

import 'package:flutter/material.dart';

class ShopPage extends StatefulWidget {
  @override
  _ShopPageState createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  Map<String, String> getLinks() {
    return <String, String>{
      '/assets/SBER/sber_eapteka.png':
          'https://www.sberbank.com/ru/eco/eapteka',
      '/assets/SBER/sber_food.png': 'https://plazius.ru/',
      '/assets/SBER/sber_mobile.png': 'https://sbermobile.ru/',
      '/assets/SBER/sber_okko.png': 'https://okko.tv/',
      '/assets/SBER/sber_samokat.png':
          'https://www.sberbank.com/ru/eco/samokat',
      '/assets/SBER/sber_sitimobil.png': 'https://city-mobil.ru/',
    };
  }

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
          children: List.generate(8, (index) {
            return sberCard(index);
          }),
        ),
      ),
    );
  }

  Widget sberCard(int i) {
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
              getLinks().keys.toList()[i],
              fit: BoxFit.contain,
            ),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
