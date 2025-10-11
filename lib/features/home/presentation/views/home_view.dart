import 'package:flutter/material.dart';

import '../widgets/best_seller_list_view.dart';
import '../widgets/featured_list_view.dart';
import '../widgets/home_view_app_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsetsGeometry.symmetric(horizontal: 12),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            HomeViewAppBar(),
            SliverToBoxAdapter(child: SizedBox(height: 20)),
            SliverToBoxAdapter(child: FeaturedListView()),
            SliverToBoxAdapter(child: SizedBox(height: 20)),
            SliverToBoxAdapter(
              child: Text(
                'Best Seller',
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
            ),
            BestSellerListView(),
          ],
        ),
      ),
    );
  }
}
