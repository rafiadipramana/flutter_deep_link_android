import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  /// The data passed from the home page, make it nullable
  final Map<String, dynamic>? passedData;

  const DetailPage({
    super.key,
    /// Initialize the passedData parameter as not required
    this.passedData,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Page'),
      ),
      body: Column(
        children: <Widget>[
          const Text('Hi, You are on the Detail Page :)'),
          // TODO 5: If passedData is not null, display it
        ],
      ),
    );
  }
}
