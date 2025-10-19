import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/dependency_injection.dart';
import '../../data/repos/home_repo_impl.dart';
import '../view_models/newest_books_cubit/newest_books_cubit.dart';
import '../view_models/relevance_books_cubit/relevance_books_cubit.dart';
import '../widgets/home_view_app_bar.dart';
import '../widgets/newest_books_section.dart';
import '../widgets/relevance_books_section.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              RelevanceBooksCubit(getIt<HomeRepoImpl>()),
        ),
        BlocProvider(
          create: (context) =>
              NewestBooksCubit(getIt<HomeRepoImpl>()),
        ),
      ],
      child: const Scaffold(
        body: Padding(
          padding: EdgeInsetsGeometry.symmetric(horizontal: 12),
          child: CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: [
              HomeViewAppBar(),
              SliverToBoxAdapter(child: SizedBox(height: 20)),
              SliverToBoxAdapter(child: RelevanceBooksSection()),
              SliverToBoxAdapter(child: SizedBox(height: 20)),
              SliverToBoxAdapter(
                child: Text(
                  'Newest Books',
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
              ),
              NewestBooksSection(),
            ],
          ),
        ),
      ),
    );
  }
}
