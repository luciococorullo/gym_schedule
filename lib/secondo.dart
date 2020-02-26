import 'package:flutter/material.dart';
import 'main.dart';

class Secondo extends StatefulWidget {
  @override
  _SecondoState createState() => _SecondoState();
}

class _SecondoState extends State<Secondo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(248, 194, 92, 1),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(top: 15.0, left: 10, right: 10),
            child: CustomScrollView(
              slivers: <Widget>[
                SliverList(
                  delegate: SliverChildListDelegate(
                    [
                      Esercizio(
                          nome: "Tappeto",
                          ripetizioni: "15 minuti",
                          photo: Image.asset('assets/images/cardio.png')),
                      Esercizio(
                          nome: "Crunch gambe alte",
                          ripetizioni: "3x15",
                          photo: Image.asset('assets/images/crunchalte.jpg')),
                      Esercizio(
                          nome: "Crunch su inclinata",
                          ripetizioni: "3x15",
                          photo: Image.asset('assets/images/crunchbas.jpg')),
                      Esercizio(
                          nome: "Crunch sx-dx",
                          ripetizioni: "3x15",
                          photo: Image.asset('assets/images/crunch.png')),
                      Esercizio(
                          nome: "Shoulder Press",
                          ripetizioni: "4x10",
                          photo: Image.asset('assets/images/shoulder.jpg')),
                      Esercizio(
                          nome: "Alzate frontali",
                          ripetizioni: "4x10",
                          photo: Image.asset('assets/images/frontali.jpg')),
                      Esercizio(
                          nome: "Alzate 90",
                          ripetizioni: "4x10",
                          photo: Image.asset('assets/images/90.jpg')),
                      Esercizio(
                          nome: "Tappeto",
                          ripetizioni: "5 minuti",
                          photo: Image.asset('assets/images/cardio.png')),
                      Esercizio(
                          nome: "Leg extension singolo/doppia",
                          ripetizioni: "4x10",
                          photo: Image.asset('assets/images/extension.png')),
                      Esercizio(
                          nome: "Leg curl singolo/doppio",
                          ripetizioni: "4x10",
                          photo: Image.asset('assets/images/curl.jpg'))
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
