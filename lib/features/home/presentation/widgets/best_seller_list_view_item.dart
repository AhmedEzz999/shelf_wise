import 'package:flutter/material.dart';

import '../../../../core/utils/constants.dart';
import '../../../../core/utils/styles.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * .16,
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.blue,
              child: Image.asset(Constants.testImage, fit: BoxFit.fill),
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            flex: 8,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                spacing: 10,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    flex: 3,
                    child: Text(
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      'Harry Potter and the Goblet of Fire',
                      style: Styles.titleMedium.copyWith(fontFamily: 'Roboto'),
                    ),
                  ),
                  Flexible(
                    child: Text(
                      'J.K. Rowling',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.titleSmall.copyWith(
                        fontFamily: 'Roboto',
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '19.99€',
                        style: Styles.titleMedium.copyWith(
                          fontFamily: 'Roboto',
                        ),
                      ),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.star, color: Colors.yellow),
                          ),
                          Text(
                            '4.8(2390)',
                            style: Styles.titleMedium.copyWith(
                              fontFamily: 'Roboto',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
