import 'package:assignment3/Widgets/navbar.dart';
import 'package:flutter/material.dart';

class Trending extends StatelessWidget {
  const Trending({super.key});
  static const routename = '/trending';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Trending',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: const Center(
        child: Text(
          'welcome to Trending page',
          style: TextStyle(
            fontSize: 30,
            color:Colors.grey,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      extendBodyBehindAppBar: true,
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
