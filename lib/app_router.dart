import 'package:go_router/go_router.dart';

import 'detail_page.dart';
import 'home_page.dart';

class AppRouter {
  /// Add go_router as our dependency using this command in the terminal:
  /// 'flutter pub add go_router'
  /// Add the following import statement to the top of the file
  /// import 'package:go_router/go_router.dart';

  // TODO 2: Create a static instance of GoRouter and define some routes
  static GoRouter routerConfig = GoRouter(
    initialLocation: '/',
    routes: <GoRoute>[
      GoRoute(
        path: '/',
        name: 'home',
        builder: (context, state) {
          return const HomePage();
        },
        routes: <GoRoute>[
          /// Back action from detail page will be redirect to parent route (home)
          GoRoute(
            /// :username as path parameter key
            path: 'detail/:username',
            name: 'detail',
            builder: (context, state) {
              return DetailPage(
                passedData: {
                  /// Parse the path parameters (if any)
                  'pathParameters': state.pathParameters,
                  /// Parse the query parameters (if any)
                  'queryParameters': state.uri.queryParameters,
                  /// Parse the extra parameters (if any)
                  'extra': state.extra,
                },
              );
            },
          ),
        ],
      ),
    ],
  );
}