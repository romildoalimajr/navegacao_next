import 'package:flutter/material.dart';

class TelaSecundaria extends StatefulWidget {

  String? valor;

  TelaSecundaria({this.valor});

 // const TelaSecundaria({Key? key}) : super(key: key);

  @override
  State<TelaSecundaria> createState() => _TelaSecundariaState();
}

class _TelaSecundariaState extends State<TelaSecundaria> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela Secundária"),
        backgroundColor: Colors.lightBlue,
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          children: <Widget>[
            Text("Segunda tela!"),
            RaisedButton(
              child: Text("Ir para a primeira tela"),
              padding: EdgeInsets.all(20),
              onPressed: (){
                Navigator.pushNamed(context, "/");
              },
            ),
          ],
        ),
      ),
    );
  }
}
