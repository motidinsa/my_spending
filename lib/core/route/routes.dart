import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_spending/accounts/ui/accounts.dart';
import 'package:my_spending/add_account/ui/add_account.dart';
import 'package:my_spending/add_account_group/ui/add_account_group.dart';
import 'package:my_spending/add_subcategory/ui/add_subcategory.dart';
import 'package:my_spending/add_transaction/ui/add_transaction.dart';
import 'package:my_spending/categories/ui/categories.dart';
import 'package:my_spending/core/model/category_model/category_model.dart';
import 'package:my_spending/core/route/scaffold_with_nested_navigation.dart';
import 'package:my_spending/edit_category/ui/edit_category.dart';
import 'package:my_spending/homepage/ui/homepage.dart';
import 'package:my_spending/settings/ui/settings.dart';
import 'package:my_spending/status/ui/status.dart';
import 'package:my_spending/subcategories/ui/subcategories.dart';

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
          (context, state) => NoTransitionPage(child: AddAccountGroup()),
    ),
    GoRoute(
      path: '/add_account',
      pageBuilder:
          (context, state) => NoTransitionPage(child: const AddAccount()),
    ),
    GoRoute(
      path: '/add_category',
      pageBuilder: (context, state) {
        String categoryName =
            (state.extra as Map<String, String>)['categoryName']!;
        String categoryId = (state.extra as Map<String, String>)['categoryId']!;
        return NoTransitionPage(
          child: AddSubcategory(
            categoryName: categoryName,
            categoryId: categoryId,
          ),
        );
      },
    ),
    GoRoute(
      path: '/edit_category',
      pageBuilder: (context, state) {
        CategoryModel categoryModel = state.extra as CategoryModel;

        return NoTransitionPage(
          child: EditCategory(categoryModel: categoryModel),
        );
      },
    ),
    GoRoute(
      path: '/add_subcategory',
      pageBuilder: (context, state) {
        String categoryName =
            (state.extra as Map<String, String>)['categoryName']!;
        String categoryId = (state.extra as Map<String, String>)['categoryId']!;
        return NoTransitionPage(
          child: AddSubcategory(
            categoryName: categoryName,
            categoryId: categoryId,
          ),
        );
      },
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
                          NoTransitionPage(child: AddAccountGroup()),
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
              routes: [
                GoRoute(
                  path: '/categories',
                  pageBuilder:
                      (context, state) => NoTransitionPage(child: Categories()),
                  routes: [
                    GoRoute(
                      path: '/subcategories',
                      pageBuilder: (context, state) {
                        String categoryName =
                            (state.extra
                                as Map<String, String>)['categoryName']!;
                        String categoryId =
                            (state.extra as Map<String, String>)['categoryId']!;

                        return NoTransitionPage(
                          child: Subcategories(
                            categoryName: categoryName,
                            categoryId: categoryId,
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  ],
);
