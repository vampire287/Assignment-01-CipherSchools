import 'package:flutter/material.dart';

class WebDev extends StatelessWidget {
  const WebDev({super.key});
  static const routename = '/web-dev';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Web development',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: const Center(
        child: Text(
          'welcome to Web dev page',
          style: TextStyle(
            fontSize: 30,
            color:Colors.grey,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
