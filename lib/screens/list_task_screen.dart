import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';

import '../database/database_helper.dart';

class ListTaskScreen extends StatefulWidget {
  const ListTaskScreen({Key? key}) : super(key: key);

  @override
  State<ListTaskScreen> createState() => _ListTaskScreenState();
}

class _ListTaskScreenState extends State<ListTaskScreen> {
  DatabaseHelper? _database;

  @override
  void initState() {
    super.initState();
    _database = DatabaseHelper();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListTask'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/add');
              },
              icon: Icon(Icons.add_circle)),
        ],
      ),
      body: FutureBuilder(
        future: _database!.getAllTareas(),
        builder: (context, snapshot) {
          if (snapshot.hasData)
            return Center(child: Text('Aqui va el contenido'));
          else if (snapshot.hasError)
            return Center(child: Text('Ocurrio un error en la aplicacion'));
          return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
