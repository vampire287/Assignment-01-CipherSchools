import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});
  static const routename = '/App-dev';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'App development',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body:  Container(
        color: Colors.white,
        child: const Center(
          child:  Text(
            'welcome to app dev page',
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
