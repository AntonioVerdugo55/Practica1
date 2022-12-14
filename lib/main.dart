import 'package:flutter/material.dart';
import 'package:practica1/screens/dashboard_screen.dart';
import 'package:practica1/screens/list_task_screen.dart';
import 'package:practica1/screens/login_screen.dart';
import 'package:practica1/screens/splash_screen.dart';
import 'package:practica1/screens/task_screen.dart';
import 'package:practica1/share_preferences/preferencias.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Preferences.init();
  Preferences.email = 'too4834@gmail.com';
  Preferences.name = 'Jose Antonio';
  Preferences.lastName = 'Verdugo Delgado';
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const SplashScreen(),
      routes: {
        '/dash': (BuildContext context) => DashboardScreen(),
        '/login': (BuildContext context) => LoginScreen(),
        '/task': (BuildContext context) => ListTaskScreen(),
        '/add': (BuildContext context) => TaskScreen(),
      },
    );
  }
}
