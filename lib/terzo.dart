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
                          nome: "Lat Machine inversa",
                          ripetizioni: "4x10",
                          photo: Image.asset('assets/images/lat.png')),
                      Esercizio(
                          nome: "Pull down",
                          ripetizioni: "4x10",
                          photo: Image.asset('assets/images/pull.png')),
                      Esercizio(
                          nome: "LowRow stretta",
                          ripetizioni: "4x10",
                          photo: Image.asset('assets/images/low.png')),
                      Esercizio(
                          nome: "Tappeto",
                          ripetizioni: "5 minuti",
                          photo: Image.asset('assets/images/cardio.png')),
                      Esercizio(
                          nome: "Curl Manubrio panca inclinata",
                          ripetizioni: "4x10",
                          photo: Image.asset('assets/images/curlmanubri.jpg')),
                      Esercizio(
                          nome: "Curl bilancieri",
                          ripetizioni: "4x10",
                          photo:
                              Image.asset('assets/images/curlbilanciere.png'))
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
