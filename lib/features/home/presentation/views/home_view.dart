import 'package:flutter/material.dart';

import '../../../../core/utils/styles.dart';
import '../widgets/best_seller_list_view.dart';
import '../widgets/featured_list_view.dart';
import '../widgets/home_view_app_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsetsGeometry.symmetric(horizontal: 12),
        child: CustomScrollView(
          slivers: [
            const HomeViewAppBar(),
            const SliverToBoxAdapter(child: SizedBox(height: 20)),
            const FeaturedListView(),
            const SliverToBoxAdapter(child: SizedBox(height: 20)),
            SliverToBoxAdapter(
              child: Text(
                'Best Seller',
                style: Styles.titleMedium.copyWith(fontFamily: 'Roboto'),
              ),
            ),
            const BestSellerListView(),
          ],
        ),
      ),
    );
  }
}
