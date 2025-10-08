import 'package:flutter/material.dart';

import '../widgets/featured_list_view.dart';
import '../widgets/home_view_app_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(slivers: [HomeViewAppBar(), FeaturedListView()]),
    );
  }
}
