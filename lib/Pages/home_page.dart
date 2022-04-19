import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/drawer.dart';

class Home_Page extends StatelessWidget {
  const Home_Page({Key? key}) : super(key: key);

  final int days = 30;
  final String name = "Codepur";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Catalog App'),
      ),
      body: Center(
        child: Container(
          child: Text('Welocme to $days of flutter by $name'),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
