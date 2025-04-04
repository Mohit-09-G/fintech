import 'package:bike_shoping_online/presentation/screens/home_screen/home_screen.dart';
import 'package:bike_shoping_online/presentation/screens/home_screen/widgets/btin.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List items = <Widget>[
    HomeScreen(),
    Container(
      color: Colors.orange,
    ),
    Container(
      color: Colors.pink,
    ),
    Container(
      color: Colors.blue,
    ),
    Container(
      color: Colors.green,
    ),
    Container(
      color: Colors.red,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Btin(),
    );
  }
}
