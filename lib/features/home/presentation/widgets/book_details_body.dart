import 'package:flutter/material.dart';

import 'book_details_section.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.only(left: 38, right: 38, top: 10, bottom: 32),
            child: Column(
              children: [
                BookDetailsSection(),
                Expanded(child: SizedBox(height: 40)),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'You can also like',
                    style: TextStyle(fontSize: 22, color: Colors.white),
                  ),
                ),
                SizedBox(height: 16),
                // RelevanceListView(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
