import 'package:assignment3/Widgets/navbar.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});
  static const routename = '/profile';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Profile',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        color:Colors.white,
        child: const Center(
          child: Text(
            'welcome to Profile page',
            style: TextStyle(
              fontSize: 30,
              color:Colors.grey,
              fontWeight:FontWeight.bold,
            ),
          ),
        ),
      ),
      extendBodyBehindAppBar: true,
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
