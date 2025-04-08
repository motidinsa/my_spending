import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_spending/accounts/ui/accounts.dart';
import 'package:my_spending/add_transaction/ui/add_transaction.dart';
import 'package:my_spending/main.dart';
import 'package:my_spending/settings/ui/settings.dart';
import 'package:my_spending/status/ui/status.dart';
final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
final GoRouter router = GoRouter(
  initialLocation: '/',
  navigatorKey: navigatorKey,
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return  Home();
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
        ),GoRoute(
          path: 'add_transaction',
          builder: (BuildContext context, GoRouterState state) {
            return AddTransaction();
          },
        )
      ],
    ),

  ],
);