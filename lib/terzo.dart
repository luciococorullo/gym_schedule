import 'package:flutter/material.dart';
import 'main.dart';

class Terzo extends StatefulWidget {
  @override
  _TerzoState createState() => _TerzoState();
}

class _TerzoState extends State<Terzo> {
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
                        nome: "Lat Machine avanti",
                        ripetizioni: "4x10",
                        photo: Image.asset('assets/images/lat.png')),
                    Esercizio(
                        nome: "Lat Machine inversa",
                        ripetizioni: "4x10",
                        photo: Image.asset('assets/images/lat.png')),
                    Esercizio(
                        nome: "Pulley basso",
                        ripetizioni: "4x10",
                        photo: Image.asset('assets/images/fit.png')),
                    Esercizio(
                        nome: "Cardio",
                        ripetizioni: "5 minuti",
                        photo: Image.asset('assets/images/cardio.png')),
                    Esercizio(
                        nome: "Curl Manubrio",
                        ripetizioni: "4x10",
                        photo: Image.asset('assets/images/strong.png')),
                    Esercizio(
                        nome: "Curl Cavo Doppio",
                        ripetizioni: "4x10",
                        photo: Image.asset('assets/images/strong.png'))
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
