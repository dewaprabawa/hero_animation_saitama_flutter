import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Hero_Saitam',
      home: new HeroPage(),
    );
  }
}

class HeroPage extends StatefulWidget {
  @override
  _HeroPageState createState() => _HeroPageState();
}

class _HeroPageState extends State<HeroPage> {
  final List<String> imageHero = [
    "bat_image.jpg",
    "garou_image.jpg",
    "genos_image.jpg",
    "saitama_image.jpg",
    "sonic_image2.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        decoration: new BoxDecoration(
            gradient: new LinearGradient(
                begin: FractionalOffset.topRight,
                end: FractionalOffset.bottomLeft,
                colors: [
              Colors.blueGrey,
              Colors.lightGreen,
              Colors.orangeAccent,
            ])),
        child: new PageView.builder(
          itemCount: imageHero.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 12.0,
                vertical: 25.0
              ),
              child: new Material(
                borderRadius: new BorderRadius.circular(
                  10.0
                ),
                child: new Stack(
                  fit: StackFit.expand,
                  children: <Widget>[
                    new Image.asset("assets/images/${imageHero[index]}",fit: BoxFit.cover,),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
