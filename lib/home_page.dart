import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Welcome to the Home Page :)'),
            ElevatedButton(
              onPressed: () {
                // TODO 4: Navigate to the details page and pass some data
                /// Use context.pushNamed to navigate to the details page
                context.pushNamed(
                  /// Use named route "detail" to pass some data
                  "detail",
                  /// Pass the path parameters
                  pathParameters: {
                    "username": "rafiadipramana",
                  },
                  /// Pass the query parameters
                  queryParameters: {
                    "lang": "id"
                  },
                  /// Pass the extra data
                  extra: {
                    "extra": "This is coming from HomePage()",
                  },
                );
              },
              child: const Text('Go to Details Page'),
            ),
          ],
        ),
      ),
    );
  }
}
