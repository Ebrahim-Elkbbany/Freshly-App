import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freshly/constant.dart';
import 'package:freshly/core/utils/styles.dart';
import 'package:freshly/features/details/data/models/details_model.dart';

class IngredientsSec extends StatelessWidget {
  const IngredientsSec({super.key, required this.snapshot});
  final AsyncSnapshot<RecipesDetailsModel> snapshot;


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
        children: [
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
        child: Text(
          "Ingredient's",
          style: Styles.textStyle16.copyWith(
            fontWeight: FontWeight.w600,
            color: kPrimaryColor,
          ),
        ),
      ),
      Divider(
        thickness: 0.5.w,
        indent: 15.w,
        endIndent: 15.w,
      ),
      ListView.builder(
        padding: EdgeInsets.only(right: 15.w, left: 15.w, bottom: 10.h),
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "• ",
                style: Styles.textStyle20.copyWith(
                    fontSize: 22.sp,
                    fontWeight: FontWeight.w700,
                    color: kPrimaryColor),
              ),
              Text(
                snapshot.data!.extendedIngredients[index].name,
                style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w500),
              ),
            ],
          );
        },
        itemCount: snapshot.data!.extendedIngredients.length,
      ),
    ]);
  }
}
