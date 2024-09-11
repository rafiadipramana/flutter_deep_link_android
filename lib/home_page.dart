import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Column(
        children: <Widget>[
          const Text('Welcome to the Home Page :)'),
          ElevatedButton(
            onPressed: () {
              // TODO 4: Navigate to the details page and pass some data
            },
            child: const Text('Go to Details Page'),
          ),
        ],
      ),
    );
  }
}
