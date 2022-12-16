import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      title: "Yemek Seç",
      home: Scaffold(
        // backgroundColor: Colors.white,
        appBar: AppBar(
          //backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            'FOOD ADVICE',
            style: TextStyle(
                // color: Colors.blue,
                ),
          ),
        ),
        body: YemekSayfasi(),
      ),
    );
  }
}

class YemekSayfasi extends StatefulWidget {
  const YemekSayfasi({Key? key}) : super(key: key);

  @override
  State<YemekSayfasi> createState() => _YemekSayfasiState();
}

class _YemekSayfasiState extends State<YemekSayfasi> {
  int corbaNo = 1;
  int tatliNo = 1;
  int yemekNo = 1;
  List corbalar = [
    'Mercimek',
    'Ezo Gelin',
    'Tavuk Suyu',
    'İşkembe',
    'Analı Kızlı'
  ];
  List yemekler = [
    'Karnı Yarık',
    'Mantı',
    'Kuru Fasülye',
    'İçli Köfte',
    'Balık'
  ];

  List tatlilar = ['Kadayıf', 'Baklava', 'Sütlaç', 'Kazan Dibi', 'Dondurma'];

  void menuDegistir() {
    setState(() {
      tatliNo = Random().nextInt(5) + 1;
      yemekNo = Random().nextInt(5) + 1;
      corbaNo = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                onPressed: menuDegistir,
                child: Image.asset('assets/corba_$corbaNo.jpg'),
              ),
            ),
          ),
          Text(
            corbalar[corbaNo - 1],
            style: TextStyle(fontSize: 20),
          ),
          Container(
            width: 200,
            child: Divider(
              thickness: 2.0,
              height: 5.0,
              color: Colors.black,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                  onPressed: menuDegistir,
                  child: Image.asset('assets/yemek_$yemekNo.jpg')),
            ),
          ),
          Text(
            yemekler[yemekNo - 1],
            style: TextStyle(fontSize: 20),
          ),
          Container(
            width: 200,
            child: Divider(
              thickness: 2.0,
              // height: 5.0,
              color: Colors.black,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                  onPressed: menuDegistir,
                  child: Image.asset('assets/tatli_$tatliNo.jpg')),
            ),
          ),
          Text(
            tatlilar[tatliNo - 1],
            style: TextStyle(fontSize: 20),
          ),
          Container(
            width: 200,
            child: Divider(
              thickness: 0.5,
              height: 5.0,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
