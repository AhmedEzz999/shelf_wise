import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/utils/app_router.dart';
import '../../data/models/book_model/book_model.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({
    required this.aspectRatio,
    required this.bookModel,
    super.key,
  });
  final double aspectRatio;
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.bookDetailsView, extra: bookModel);
      },
      child: AspectRatio(
        aspectRatio: aspectRatio,
        child: ClipRRect(
          borderRadius: BorderRadiusGeometry.circular(16),
          child: CachedNetworkImage(
            imageUrl:
                bookModel.volumeInfo?.imageLinks?.thumbnail ??
                'https://via.placeholder.com/150',
            errorWidget: (context, url, error) {
              return const Icon(Icons.error, size: 50);
            },
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
