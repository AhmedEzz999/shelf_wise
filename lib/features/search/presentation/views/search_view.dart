import 'package:flutter/material.dart';

import '../../../../core/utils/styles.dart';
import '../widgets/search_result_list_view.dart';
import '../widgets/search_text_field.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SearchTextField(),
              SizedBox(height: 16),
              Text('Search Result', style: Styles.textStyle24),
              SizedBox(height: 6),
              Expanded(child: SearchResultListView()),
            ],
          ),
        ),
      ),
    );
  }
}
