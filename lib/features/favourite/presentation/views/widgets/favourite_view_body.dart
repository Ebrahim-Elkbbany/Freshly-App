import 'package:flutter/material.dart';
import 'package:freshly/features/favourite/data/fav_sqldb.dart';
import 'package:freshly/features/favourite/presentation/views/widgets/favourite_recipes_grid_view.dart';


class FavouriteViewBody extends StatelessWidget {
  const FavouriteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    SqlDb dB = SqlDb();
    return  FutureBuilder(
      future: dB.read(),
      builder: (context, snapshot) {
      return FavouritesRecipesGridView(
        snapshot: snapshot,
      );
    },);
  }
}
