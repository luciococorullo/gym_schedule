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
                        nome: "Lento Manubri",
                        ripetizioni: "4x10",
                        photo: Image.asset('assets/images/crunch.png')),
                    Esercizio(
                        nome: "Alzate Laterali",
                        ripetizioni: "4x10",
                        photo: Image.asset('assets/images/crunch.png')),
                    Esercizio(
                        nome: "LowLow Larga",
                        ripetizioni: "4x10",
                        photo: Image.asset('assets/images/crunch.png')),
                    Esercizio(
                        nome: "Leg Extension",
                        ripetizioni: "4x10",
                        photo: Image.asset('assets/images/crunch.png')),
                    Esercizio(
                        nome: "Leg Curl",
                        ripetizioni: "4x10",
                        photo: Image.asset('assets/images/crunch.png')),
                    Esercizio(
                        nome: "Leg Press",
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
