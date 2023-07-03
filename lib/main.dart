import 'dart:js';

import 'package:flutter/material.dart';
import 'package:menu_drawer/navbar.dart';
import 'package:menu_drawer/pages/mensajes.dart';
import 'package:menu_drawer/pages/notificaciones.dart';
import 'package:menu_drawer/pages/perfil.dart';
//import 'package:menu_drawer/pages/qr_scan.dart';

import 'package:qrscan/qrscan.dart' as scanner ; 

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  String qrValue = "Codigo Qr";
  void scanQr () async{
    String cameraScanResult = await scanner.scan();
    setState((){
      qrValue = cameraScanResult;
    });
  }
  MyApp({super.key});

  final _routes = {
    '/perfil': (context) => perfil(),
    '/mensaje': (context) => mensaje(),
    '/notificaciones': (context) => notificaciones(),
    //'/qrscan': (context) => qrscan(),
  };

  @override

  

  Widget build(BuildContext context) {
    return MaterialApp(
      routes: _routes,
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          drawer: navBar(),
          appBar: AppBar(
            title: const Text('Bienvenidos'),
            backgroundColor: Color.fromARGB(255, 104, 106, 129),
          ),
          body: Container(
              margin: EdgeInsets.only(top: 20, left: 150),
              child: Column(children: <Widget>[
                Text(
                  'Bienvenidos',
                  style: TextStyle(
                    fontSize: 40,
                    color: Color.fromRGBO(216, 103, 103, 0.98),
                  ),
                ),
                Container(
                  child: Image.network(
                      'https://media.giphy.com/media/20NHiDnH41d9Ls6NlU/giphy.gif'),
                )
              ]
              ),
              
              ),
              floatingActionButton: FloatingActionButton(
                backgroundColor: Colors.red,
                onPressed: () => scanQr(),
                child: Icon(
                  Icons.camera
                ),
              ),
              ),
              
    );
  }
}
