import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freshly/constant.dart';
import 'package:freshly/core/utils/resposive_size_config.dart';
import 'package:freshly/core/utils/styles.dart';
import 'package:freshly/features/details/data/models/details_model.dart';


class MinutesSummaryServingSec extends StatelessWidget {
  const MinutesSummaryServingSec({super.key, required this.snapshot});
  final AsyncSnapshot<RecipesDetailsModel> snapshot;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(
          thickness: 0.5.w,
          indent: 15.w,
          endIndent: 15.w,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Easy",
              style: Styles.textStyle12
                  .copyWith(fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 40.h,
              child: VerticalDivider(
                thickness: 0.05.w,
                width: 1.w,
                color: Colors.black,
              ),
            ),
            Column(
              children: [
                Icon(
                  Icons.access_time_outlined,
                  size: 16.w,
                  color: kPrimaryColor,
                ),
                SizedBox(
                  height: SizeConfig.height(context, 0.005),
                ),
                Text(
                  "${snapshot.data!.readyInMinutes} mins",
                  style: Styles.textStyle12.copyWith(
                      fontSize: 11.sp, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            SizedBox(
              height: 35.h,
              child: VerticalDivider(
                thickness: 0.05.w,
                width: 1.w,
                color: Colors.black,
              ),
            ),
            Column(
              children: [
                Text(
                  "${snapshot.data!.extendedIngredients.length}",
                  style: Styles.textStyle12.copyWith(
                    fontWeight: FontWeight.w500,
                    color: kPrimaryColor,
                  ),
                ),
                SizedBox(
                  height: SizeConfig.height(context, 0.005),
                ),
                Text(
                  "ingredients",
                  overflow: TextOverflow.ellipsis,
                  style: Styles.textStyle12.copyWith(
                      fontSize: 11.sp, fontWeight: FontWeight.w500),
                ),
              ],
            )
          ],
        ),
        Divider(
          thickness: 0.5.w,
          indent: 15.w,
          endIndent: 15.w,
        ),
        Padding(
          padding:
          EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
          child: Text( snapshot.data!.summary,
            style: Styles.textStyle12,
          ),
        ),
        Divider(
          thickness: 0.5.w,
          indent: 15.w,
          endIndent: 15.w,
        ),
        Padding(
          padding:
          EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
          child: Text(
            '${snapshot.data!.servings} Serving',
            style: Styles.textStyle12
                .copyWith(fontWeight: FontWeight.w500),
          ),
        ),
      ],
    );
  }
}
