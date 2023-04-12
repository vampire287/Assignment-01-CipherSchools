import 'package:flutter/material.dart';

class IELTS extends StatelessWidget {
  const IELTS({super.key});
  static const routename = '/ielts-dev';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'IELTS',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body:  Container(
        color:Colors.white,
        child: const Center(
          child: Text(
            'welcome to IELTS page',
            style: TextStyle(
              fontSize: 30,
              color:Colors.grey,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
      ),
    );
  }
}
