import 'package:flutter/material.dart';

import 'best_seller_list_view_item.dart';

class NewestListView extends StatelessWidget {
  const NewestListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) => const BookListViewItem(),
        childCount: 10,
      ),
    );
  }
}
