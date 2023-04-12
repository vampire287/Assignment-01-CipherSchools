
import 'package:flutter/material.dart';

import '../Screens/Home.dart';

class PopUpMenu extends StatelessWidget {
  const PopUpMenu({super.key});

  void _showDialog(BuildContext context, String msg) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Alert!!"),
          content: Text(msg),
          actions: [
            MaterialButton(
              child: const Text("OK"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<int>(
      icon: const Icon(
        Icons.menu,
        color: Colors.black,
      ),
      itemBuilder: (context) => [
        PopupMenuItem(
          value: 1,
          child: Row(
            children: const [
              // Icon(Icons.star),
              // SizedBox(
              //   width: 10,
              // ),
              Text("Home",style: TextStyle(color: Colors.black,),),
            ],
          ),
        ),
        PopupMenuItem(
          value: 2,
          child: Row(
            children: const [Text("Creaotr Access",style: TextStyle(color: Colors.black),)],
          ),
        ),
        PopupMenuItem(
          value: 3,
          child: Row(
            children: const [Text("Live Reviews",style: TextStyle(color: Colors.black),)],
          ),
        ),
        PopupMenuItem(
          value: 4,
          child: Row(
            children: const [Text("Community",style: TextStyle(color: Colors.black),)],
          ),
        ),
        PopupMenuItem(
          value: 5,
          child: Row(
            children: const [Text("Explore Courses",style: TextStyle(color: Colors.black),)],
          ),
        ),
        PopupMenuItem(
          value: 6,
          child: Row(
            children: const [Text("SignIn",style: TextStyle(color: Colors.black),)],
          ),
        ),
      ],
      offset: const Offset(0, 50),
      color: Colors.white,
      surfaceTintColor: Colors.amber,
      elevation: 2,
      onSelected: (value) {
        if (value == 1) {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => Home(),
            ),
          );
        } else if (value == 2) {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => Home(),
            ),
          );
        } else if (value == 3) {
          _showDialog(context, "Live Reviews not available!");
        } else if (value == 4) {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => Home(),
            ),
          );
        } else if (value == 5) {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => Home(),
            ),
          );
        } else if (value == 6) {
          _showDialog(context, "SignIn to Enjoy!");
        }
      },
    );
  }
}
