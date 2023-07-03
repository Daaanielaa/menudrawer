import 'package:flutter/material.dart';

import '../navbar.dart';
import 'notificaciones.dart';
import 'perfil.dart';

class mensaje extends StatefulWidget {
  const mensaje({super.key});

  @override
  State<mensaje> createState() => _mensajeState();
}

final _routes = {
    '/perfil': (context) => perfil(),
    '/mensaje': (context) => mensaje(),
    '/notificaciones': (context) => notificaciones(),
  };

class _mensajeState extends State<mensaje> {

  TextEditingController descripcion = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Material App',
      routes: _routes,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          drawer: navBar(),
          appBar: AppBar(
            title: const Text('Mensaja'),
            backgroundColor: const Color.fromARGB(255, 104, 106, 129),
          ),
          body: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: <Color>[
              Color.fromARGB(255, 40, 158, 194),
              Color.fromARGB(31, 16, 96, 116)
            ], begin: Alignment.center)),
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 100),
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircleAvatar(
                      radius: 100,
                      backgroundColor: Color.fromARGB(255, 134, 179, 175),
                      backgroundImage: AssetImage('images/icon.jpg'),
                    ),
                    Text(
                      'Mensaje',
                      style: TextStyle(fontSize: 30, fontFamily: 'Roboto'),
                    ),
                    TextFormField(
                controller: descripcion,
                maxLength: 100,
                validator: (value) {
                  if ((value ?? '').isEmpty) {
                    return 'Ingrese un mensaje';
                  }
                  return null;
                },
              ),
                  ],
                )
              ],
            ),
          )),
    );
  }
}