import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freshly/core/utils/functions/navigate.dart';
import 'package:freshly/core/utils/resposive_size_config.dart';
import 'package:freshly/core/utils/styles.dart';
import 'package:freshly/core/widgets/custom_cached_network_image.dart';
import 'package:freshly/features/details/presentation/views/details_view.dart';

class RecipesSuccessColumn extends StatelessWidget {
  const RecipesSuccessColumn({super.key, required this.image, required this.title, required this.id});
  final String image;
  final String title;
  final int id;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        navigateTo(context,  DetailsView(
          title: title,
          image: image,
          id: id,
        ),);
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.w),
            child: CustomCashedNetworkImage(
              width: 160.w,
              imageUrl: image, height: 130.h,
            ),
          ),
          SizedBox(
            height: SizeConfig.height(context, 0.015),
          ),
          SizedBox(
            width: SizeConfig.width(context, 0.42),
            child: Text(
              title,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: Styles.textStyle14,
            ),
          ),
        ],
      ),
    );
  }
}
