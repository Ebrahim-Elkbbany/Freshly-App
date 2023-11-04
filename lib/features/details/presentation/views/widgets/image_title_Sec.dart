import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freshly/constant.dart';
import 'package:freshly/core/utils/resposive_size_config.dart';
import 'package:freshly/core/utils/styles.dart';
import 'package:freshly/core/widgets/custom_cached_network_image.dart';
import 'package:freshly/features/details/data/models/details_model.dart';

class ImageTitleSec extends StatelessWidget {
  const ImageTitleSec({super.key, required this.snapshot});
  final AsyncSnapshot<RecipesDetailsModel> snapshot;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomCashedNetworkImage(
          imageUrl: snapshot.data!.image,
          width: double.infinity,
          height: 220.h,
        ),
        SizedBox(
          height: SizeConfig.height(context, 0.015),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.h),
          child: Text(
            snapshot.data!.title,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: Styles.textStyle18.copyWith(
              color: kPrimaryColor,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        SizedBox(
          height: SizeConfig.height(context, 0.015),
        ),
      ],
    );
  }
}
