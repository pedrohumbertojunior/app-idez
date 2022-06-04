import'package:flutter/material.dart';
import 'dart:math';

void main() {

  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));

}
  class Home extends StatefulWidget {
    @override
    _HomeState createState() => _HomeState();
  }
  
  class _HomeState extends State<Home> {

    var _frases = [
      "Transforme seu negócio e ofereça serviços financeiros digitais.",
      "Estrutura e experiência completa para seu cliente.",
      "Ecossistema flexível: Contrate apenas o que você precisa.",
      "Combine add-ons e construa uma solução aderente ao seu negócio.",
      "Misture e combine quais soluções são adequados para o seu negócio e gerencie tudo facilmente a partir do nosso Back-Office."
    ];

    var _fraseGerada = "Clique abaixo para conhecer a IdezDIgital";

    void _gerarFrase(){

      // 0, 1, 2, 3, 4
      var numeroSorteado =Random() .nextInt(_frases.length);

      setState(() {
        _fraseGerada = _frases[numeroSorteado];

      });
    }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
        title: Text("iDez Digital"),
        backgroundColor: Colors.teal
        ),
        body: Center(
          child:Container(
            padding: EdgeInsets.all(16),
            width: double.infinity,
            /*decoration: BoxDecoration (
                border: Border.all(width: 3,color: Colors.amber)
            ),*/
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:<Widget> [
                Image.asset("images/idezlogo.png"),
                Text(
                  _fraseGerada,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      fontSize: 18,
                      fontStyle: FontStyle.italic,
                      color: Colors.black
                  ),
                ),
                RaisedButton(
                  child: Text(
                    "CONTINUAR",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                    ),
                  ) ,
                  color: Colors.teal,
                  onPressed:_gerarFrase,
                )
              ],
            ) ,
          ) ,

        ),
      );
    }
  }
  

