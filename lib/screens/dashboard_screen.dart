// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:practica1/screens/login_screen.dart';
import 'package:practica1/share_preferences/preferencias.dart';

class DashboardScreen extends StatelessWidget {
  DashboardScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        backgroundColor: Color.fromARGB(255, 206, 91, 91),
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://t4.ftcdn.net/jpg/01/99/02/79/360_F_199027980_AhnfQVRDbJv7y7V0p3lBgDbdE6nyKtxK.jpg'),
                      fit: BoxFit.cover)),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://www.seekpng.com/png/detail/112-1128089_its-a-drawing-of-a-sad-face-tragedy.png'),
              ),
              accountName: Text('${Preferences.name} ${Preferences.lastName}',
                  style: TextStyle(
                      color: Color.fromARGB(255, 73, 54, 244), fontSize: 30)),
              accountEmail: Text(
                '${Preferences.email}',
                style: TextStyle(
                    color: Color.fromARGB(255, 73, 54, 244), fontSize: 12),
              ),
            ),
            ListTile(
              leading: Icon(Icons.arrow_back),
              trailing: Icon(Icons.chevron_right),
              title: Text('Practica 1'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.data_object),
              trailing: Icon(Icons.chevron_right),
              title: Text('Base de datos'),
              onTap: () {
                Navigator.pushNamed(context, '/task');
              },
            ),
            ListTile(
              leading: Image.asset('assets/bananas.png'),
              trailing: Icon(Icons.chevron_right),
              title: Text('Cerrar Sesion'),
              onTap: () {
                Preferences.isLogged = false;

                Navigator.pushReplacementNamed(context, '/login');
              },
            )
          ],
        ),
      ),
    );
  }
}
