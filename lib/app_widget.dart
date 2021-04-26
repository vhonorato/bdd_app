import 'package:bdd_app/home_page.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.amber),
      home: MyHomePage(title: 'BDD TEST APP'),
    );
  }
}
