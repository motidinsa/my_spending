import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:my_spending/categories/state/categories_other_state.dart';
import 'package:my_spending/categories/ui/category_list.dart';
import 'package:my_spending/core/constants/translation_keys.g.dart';

class Categories extends ConsumerStatefulWidget {
  const Categories({super.key});

  @override
  ConsumerState<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends ConsumerState<Categories>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(() {
        ref.read(categoriesOtherStateProvider.notifier).updateStatus(true);
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Consumer(
        builder: (context, ref, child) {
          return Visibility(
            visible: ref.watch(categoriesOtherStateProvider),
            child: FloatingActionButton.extended(
              heroTag: null,
              onPressed: () {
                context.push('/add_category');
              },
              label: Text(
                context.tr(LocaleKeys.addCategory),
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: Colors.green.shade400,
            ),
          );
        },
      ),
      appBar: AppBar(
        title: Text(
          context.tr(LocaleKeys.categories),
          style: TextStyle(
            color: Colors.green.shade800,
            fontWeight: FontWeight.bold,
          ),
        ),
        bottom: TabBar(
          controller: _tabController,
          dividerColor: Colors.transparent,
          indicatorColor: Colors.grey.shade500,
          tabs: <Widget>[
            Tab(
              icon: Icon(
                Icons.arrow_downward_rounded,
                color: Colors.red.shade300,
              ),
              child: Text(
                context.tr(LocaleKeys.expense),
                style: TextStyle(color: Colors.red.shade300),
              ),
            ),
            Tab(
              icon: Icon(
                Icons.arrow_upward_rounded,
                color: Colors.green.shade800,
              ),
              child: Text(
                context.tr(LocaleKeys.income),
                style: TextStyle(color: Colors.green.shade800),
              ),
            ),
          ],
        ),
        centerTitle: true,
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: TabBarView(
        controller: _tabController,
        children: [
          CategoryList(categoryType: LocaleKeys.expense),
          CategoryList(categoryType: LocaleKeys.income),
        ],
      ),
    );
  }
}
