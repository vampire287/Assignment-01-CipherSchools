import 'package:assignment3/Widgets/navbar.dart';
import 'package:flutter/material.dart';

import '../Widgets/middle.dart';
import '../Widgets/popupmenu.dart';
class Home extends StatelessWidget {
  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "CipherSchools",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            "assets/images/logo.png",
            fit: BoxFit.cover,
          ),
        ),
        backgroundColor: Colors.white,
        actions: const [
          PopUpMenu(),
        ],
      ),
      body: const MiddleScreen(),
      extendBodyBehindAppBar: true,
      bottomNavigationBar: const CustomBottomNavigationBar(),
    );
  }
}