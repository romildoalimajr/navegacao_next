import 'package:flutter/material.dart';

import 'TelaSecundaria.dart';

void main() {
  runApp(
      MaterialApp(
        initialRoute: "/",
        routes:{
          "/secundaria" : (context) => TelaSecundaria(),
        },
        home: TelaPrincipal(),
      )
  );

}
class TelaPrincipal extends StatefulWidget {
  const TelaPrincipal({Key? key}) : super(key: key);

  @override
  State<TelaPrincipal> createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela Principal"),
        backgroundColor: Colors.orange,
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text("Ir para a segunda tela"),
              padding: EdgeInsets.all(20),
              onPressed: (){
                Navigator.pushNamed(context, "/secundaria");
                
              },
            ),
          ],
        ),
      ),
    );
  }
}
