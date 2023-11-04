import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freshly/features/home/presentation/views/widgets/recipes_shimmer_column.dart';
import 'package:freshly/features/home/presentation/views/widgets/recipes_sucess_column.dart';

class FavouritesRecipesGridView extends StatelessWidget {
  const FavouritesRecipesGridView({super.key, required this.snapshot});
  final AsyncSnapshot<List<Map<dynamic, dynamic>>?> snapshot;

  @override
  Widget build(BuildContext context) {
    return  GridView.count(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      mainAxisSpacing: 15.w,
      childAspectRatio: ScreenUtil().setWidth(159) / ScreenUtil().setHeight(190),
      crossAxisSpacing: 15.w,
      children: snapshot.hasData
          ? List.generate(
        snapshot.data!.length,
            (index) {
          return RecipesSuccessColumn(
            id: snapshot.data![index]['id'],
            image: snapshot.data![index]['image'],
            title: snapshot.data![index]['title'],
          );
        },
      )
          : List.generate(
        10,
            (index) {
          return const RecipesShimmerColumn();
        },
      ),
    );
  }
}
