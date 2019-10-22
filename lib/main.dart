

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SeiteVonNiklas(),
    );
  }
}

class SeiteVonNiklas extends StatefulWidget {
  @override
  _SeiteVonNiklasState createState() => _SeiteVonNiklasState();
}

class _SeiteVonNiklasState extends State<SeiteVonNiklas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Seite von Niklas"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Image.network("https://www.google.de/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&ved=2ahUKEwi-5vSXkrDlAhWR66QKHUEBB4MQjRx6BAgBEAQ&url=https%3A%2F%2Fwww.youtube.com%2Fwatch%3Fv%3DpWkzec7OfVo&psig=AOvVaw0e7OQFr-enbiNs6vHWNL_3&ust=1571843145946069"),
            reiheMachen("Name:", "Niklas"),
            reiheMachen("Alter:", "21"),
            reiheMachen("Wohnort", "Petersberg")
          ],
        ),
      ),
    );
  }

  Widget reiheMachen(attribut, wert) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text(
            attribut,
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          Text(
            wert,
            style: TextStyle(fontSize: 30),
          ),
        ],
      ),
    );
  }
}
