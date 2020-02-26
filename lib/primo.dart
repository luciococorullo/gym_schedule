import 'package:flutter/material.dart';
import 'main.dart';

class Primo extends StatefulWidget {
  @override
  _PrimoState createState() => _PrimoState();
}

class _PrimoState extends State<Primo> {
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
                          nome: "Bilanciere panca orizzontale",
                          ripetizioni: "4x10",
                          photo: Image.asset('assets/images/bilanciere.jpg')),
                      Esercizio(
                          nome: "Chest press inclinata",
                          ripetizioni: "4x10",
                          photo: Image.asset('assets/images/chest.jpg')),
                      Esercizio(
                          nome: "Tappeto",
                          ripetizioni: "5 minuti",
                          photo: Image.asset('assets/images/cardio.png')),
                      Esercizio(
                          nome: "Fune",
                          ripetizioni: "4x10",
                          photo: Image.asset('assets/images/crunch.png')),
                      Esercizio(
                          nome: "French Press manubri",
                          ripetizioni: "4x10",
                          photo: Image.asset('assets/images/french.png')),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
