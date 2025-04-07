import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_spending/accounts/ui/accounts.dart';
import 'package:my_spending/homepage/settings/ui/settings.dart';
import 'package:my_spending/homepage/ui/homepage.dart';
import 'package:my_spending/status/ui/status.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return  HomePage();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'status',
          builder: (BuildContext context, GoRouterState state) {
            return Status();
          },
        ),GoRoute(
          path: 'accounts',
          builder: (BuildContext context, GoRouterState state) {
            return Accounts();
          },
        ),GoRoute(
          path: 'settings',
          builder: (BuildContext context, GoRouterState state) {
            return Settings();
          },
        ),
      ],
    ),
  ],
);