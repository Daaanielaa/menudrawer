import 'package:flutter/material.dart';

import '../navbar.dart';
import 'mensajes.dart';
import 'notificaciones.dart';

class perfil extends StatefulWidget {
  const perfil({super.key});

  @override
  State<perfil> createState() => _perfilState();
}

final _routes = {
  '/perfil': (context) => perfil(),
    '/mensaje': (context) => mensaje(),
    '/notificaciones': (context) => notificaciones(),
};

class _perfilState extends State<perfil> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      routes: _routes,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          drawer: navBar(),
          appBar: AppBar(
            title: const Text('Perfil'),
            backgroundColor: const Color.fromARGB(255, 104, 106, 129),
          ),
          body: SafeArea(
        top: true,
        child: SingleChildScrollView(
          child: Padding(
            padding:
                EdgeInsets.only(left: 16.0, right: 16.0, top: kToolbarHeight),
            child: Column(
              children: <Widget>[
                CircleAvatar(
                  maxRadius: 80,
                  backgroundImage: AssetImage('images/icon.jpg'),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Rose Helbert',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text('Nombres: '),
                  subtitle: Text('Rose'),
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text('Direccion: Centro'),
                  subtitle: Text('Helbert'),
                ),
                Divider(),              
                ListTile(
                  leading: Icon(Icons.phone),
                  title: Text('Telefono: '),
                  subtitle: Text('099999999'),
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.email),
                  title: Text('Correo: '),
                  subtitle: Text('rose@gmail.com'),
                ),
                Divider(),
              ],
            ),
          ),
        ),
      ),
          ),
    );
  }
}
