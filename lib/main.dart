import 'package:flutter/material.dart';
import 'package:palestra/secondo.dart';
import 'package:palestra/terzo.dart';
import 'primo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Schede palestra',
      theme: ThemeData(fontFamily: 'Montserrat'),
      home: DefaultTabController(
        length: 3,
        child: Home(),
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Schede palestra'),
        backgroundColor: Color.fromRGBO(36, 33, 33, 1),
        bottom: TabBar(
          isScrollable: true,
          tabs: [
            Tab(text: 'Primo giorno'),
            Tab(
              text: 'Secondo giorno',
            ),
            Tab(
              text: 'Terzo giorno',
            )
          ],
        ),
      ),
      body: TabBarView(
        children: <Widget>[
          Primo(),
          Secondo(),
          Terzo(),
        ],
      ),
    );
  }
}

class Esercizio extends StatefulWidget {
  final String nome;
  final String ripetizioni;
  final Image photo;

  Esercizio({this.nome, this.ripetizioni, this.photo});

  @override
  _EsercizioState createState() => _EsercizioState();
}

class _EsercizioState extends State<Esercizio> {
  bool isDone = false;
  _pressed() {
    setState(() {
      isDone = !isDone;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 8,
        color: Colors.white, //Color.fromRGBO(248, 243, 227, 1),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: ListTile(
            title: Text(
              widget.nome,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Montserrat'),
            ),
            subtitle: Text(widget.ripetizioni),
            leading: SizedBox(
              width: 100,
              height: 300,
              child: widget.photo,
            ),
            trailing: Checkbox(
              activeColor: Color.fromRGBO(255, 32, 71, 1),
              value: isDone,
              onChanged: (bool value) {
                setState(() {
                  isDone = value;
                });
              },
            )));
  }
}
