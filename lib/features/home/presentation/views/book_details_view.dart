import 'package:flutter/material.dart';

import '../widgets/book_details_body.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            padding: const EdgeInsets.only(left: 24),
            icon: const Icon(Icons.close),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: [
            IconButton(
              padding: const EdgeInsets.only(right: 24),
              onPressed: () {},
              icon: const Icon(Icons.shopping_cart_outlined),
            ),
          ],
        ),
        body: const BookDetailsBody(),
      ),
    );
  }
}
