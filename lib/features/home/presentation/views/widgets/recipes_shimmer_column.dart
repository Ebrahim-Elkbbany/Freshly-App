import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freshly/core/utils/resposive_size_config.dart';
import 'package:freshly/core/utils/styles.dart';
import 'package:freshly/core/widgets/custom_cached_network_image.dart';
import 'package:shimmer/shimmer.dart';

class RecipesShimmerColumn extends StatelessWidget {
  const RecipesShimmerColumn({super.key,});



  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Column(
        crossAxisAlignment:
        CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 150.h,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius:
              BorderRadius.circular(8.w),
            ),
          ),
          SizedBox(
              height: SizeConfig.height(
                  context, 0.015)),
          Container(
            width: double.infinity,
            height: 15.h, // Placeholder text height
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius:
              BorderRadius.circular(8.w),
            ), // Placeholder color
          ),
        ],
      ),
    );
  }
}
