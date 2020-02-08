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
        backgroundColor: Colors.teal,
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
  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 20,
        color: Colors.blueGrey[200],
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: ListTile(
            title: Text(
              widget.nome,
              style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Montserrat'),
            ),
            subtitle: Text(widget.ripetizioni),
            leading: SizedBox(
              width: 140,
              height: 300,
              child: widget.photo,
            ),
            trailing: Checkbox(
              activeColor: Colors.black,
              value: isDone,
              onChanged: (bool value) {
                setState(() {
                  isDone = value;
                });
              },
            )));
  }
}
