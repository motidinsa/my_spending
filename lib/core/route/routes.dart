import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_spending/accounts/ui/accounts.dart';
import 'package:my_spending/add_account/ui/add_account.dart';
import 'package:my_spending/add_account_group/ui/add_account_group.dart';
import 'package:my_spending/add_transaction/ui/add_transaction.dart';
import 'package:my_spending/core/route/scaffold_with_nested_navigation.dart';
import 'package:my_spending/homepage/ui/homepage.dart';
import 'package:my_spending/settings/ui/settings.dart';
import 'package:my_spending/status/ui/status.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorAKey = GlobalKey<NavigatorState>(debugLabel: 'shellA');
final _shellNavigatorBKey = GlobalKey<NavigatorState>(debugLabel: 'shellB');
final _shellNavigatorCKey = GlobalKey<NavigatorState>(debugLabel: 'shellB');
final _shellNavigatorDKey = GlobalKey<NavigatorState>(debugLabel: 'shellB');

final GoRouter router = GoRouter(
  initialLocation: '/',
  navigatorKey: navigatorKey,
  routes: <RouteBase>[
    GoRoute(
      path: '/add_transaction',
      builder: (context, state) => const AddTransaction(),
    ),
    GoRoute(
      path: '/add_account_group',
      pageBuilder:
          (context, state) =>
          NoTransitionPage(child: const AddAccountGroup()),
    ),GoRoute(
      path: '/add_account',
      pageBuilder:
          (context, state) =>
          NoTransitionPage(child: const AddAccount()),
    ),
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return ScaffoldWithNestedNavigation(navigationShell: navigationShell);
      },
      branches: [
        StatefulShellBranch(
          navigatorKey: _shellNavigatorAKey,
          routes: [
            GoRoute(
              path: '/',
              pageBuilder:
                  (context, state) => NoTransitionPage(child: HomePage()),
              // routes: [
              //   GoRoute(
              //     parentNavigatorKey: _shellNavigatorAKey,
              //     path: '/add_transaction',
              //     builder: (context, state) => const AddTransaction(),
              //   ),
              // ],
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _shellNavigatorBKey,
          routes: [
            GoRoute(
              path: '/status',
              builder: (BuildContext context, GoRouterState state) {
                return Status();
              },
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _shellNavigatorCKey,
          routes: [
            GoRoute(
              path: '/accounts',
              builder: (context, state) => Accounts(),
              routes: [
                GoRoute(
                  path: '/add_account_group',
                  pageBuilder:
                      (context, state) =>
                          NoTransitionPage(child: const AddAccountGroup()),
                ),
              ],
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _shellNavigatorDKey,
          routes: [
            // Shopping Cart
            GoRoute(
              path: '/settings',
              pageBuilder:
                  (context, state) => const NoTransitionPage(child: Settings()),
            ),
          ],
        ),
      ],
    ),
  ],
);
