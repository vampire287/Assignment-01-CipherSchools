import 'package:flutter/material.dart';

class Python extends StatelessWidget {
  const Python({super.key});
  static const routename = '/Python';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Learn Python',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        child: const Center(
          child: Text(
            'welcome to Pyhton page',
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
