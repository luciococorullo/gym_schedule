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
        backgroundColor: Colors.teal[300],
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: CustomScrollView(
            slivers: <Widget>[
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    Esercizio(
                        nome: "Crunch Incrociate",
                        ripetizioni: "3x15",
                        photo: Image.asset('assets/images/crunch.png')),
                    Esercizio(
                        nome: "Crunch tese",
                        ripetizioni: "3x15",
                        photo: Image.asset('assets/images/crunch.png')),
                    Esercizio(
                        nome: "Crunch laterali",
                        ripetizioni: "3x15",
                        photo: Image.asset('assets/images/crunch.png')),
                    Esercizio(
                        nome: "Chest Press",
                        ripetizioni: "4x10",
                        photo: Image.asset('assets/images/chest.png')),
                    Esercizio(
                        nome: "Bil. Panca Inclinata",
                        ripetizioni: "4x10",
                        photo: Image.asset('assets/images/barbell.png')),
                    Esercizio(
                        nome: "Croci panca orizzontale",
                        ripetizioni: "4x10",
                        photo: Image.asset('assets/images/crunch.png')),
                    Esercizio(
                        nome: "Cardio",
                        ripetizioni: "5 minuti",
                        photo: Image.asset('assets/images/cardio.png')),
                    Esercizio(
                        nome: "Spinte in basso",
                        ripetizioni: "4x10",
                        photo: Image.asset('assets/images/crunch.png')),
                    Esercizio(
                        nome: "Panchette",
                        ripetizioni: "4x10",
                        photo: Image.asset('assets/images/crunch.png'))
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
