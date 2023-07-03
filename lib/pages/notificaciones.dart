import 'package:flutter/material.dart';

import '../navbar.dart';
import 'mensajes.dart';
import 'perfil.dart';

class notificaciones extends StatefulWidget {
  const notificaciones({super.key});

  @override
  State<notificaciones> createState() => _notificacionesState();
}

final _routes = {
    '/perfil': (context) => perfil(),
    '/mensaje': (context) => mensaje(),
    '/notificaciones': (context) => notificaciones(),
  };

class _notificacionesState extends State<notificaciones> {
  TextEditingController descripcion = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      routes: _routes,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          drawer: navBar(),
          appBar: AppBar(
            title: const Text('Comentarios'),
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
                      'Ingrese su comentario',
                      style: TextStyle(fontSize: 30, fontFamily: 'Roboto'),
                    ),
                    TextFormField(
                controller: descripcion,
                maxLength: 50,
                validator: (value) {
                  if ((value ?? '').isEmpty) {
                    return 'Ingrese la descripcion';
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
