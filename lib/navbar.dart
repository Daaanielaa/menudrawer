import 'package:flutter/material.dart';

class navBar extends StatefulWidget {
  const navBar({super.key});

  @override
  State<navBar> createState() => _navBarState();
}

class _navBarState extends State<navBar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(children: [
        UserAccountsDrawerHeader(
          accountName: Text('Daniela Morocho'),
          accountEmail: Text('dgc.morocho.edu.ec'),
          currentAccountPicture: CircleAvatar(
              child: ClipOval(child: Image.asset('images/icon.jpg'))),
        ),
        
        ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Perfil'),
            onTap: () => Navigator.pushNamed(context, '/perfil')),
        ListTile(
            leading: Icon(Icons.message),
            title: Text('Subir mensaje'),
            onTap: () => Navigator.pushNamed(context, '/mensaje')),
        
        
        ListTile(
            leading: Icon(Icons.notification_important_outlined),
            title: Text('Comentario'),
            onTap: () => Navigator.pushNamed(context, '/notificaciones')),
            ListTile(
              leading: Icon(Icons.qr_code_scanner_outlined,),
            title: Text('Scan'),
            onTap: () => Navigator.pushNamed(context, '/qrscan')
            )
      ]),
    );
  }
}
