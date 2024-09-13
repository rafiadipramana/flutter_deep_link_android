import 'package:flutter/material.dart';
import 'app_router.dart';

void main() {
  runApp(
    const FlutterDeepLinks(),
  );
}

class FlutterDeepLinks extends StatelessWidget {
  const FlutterDeepLinks({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO 1: Add MaterialApp.router
    // TODO 3: Add our AppRouter.routerConfig as the router property
    return MaterialApp.router(
      /// Add the routerConfig property
      routerConfig: AppRouter.routerConfig,
    );
  }
}
