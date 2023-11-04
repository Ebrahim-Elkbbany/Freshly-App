import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freshly/constant.dart';
import 'package:freshly/core/utils/styles.dart';
import 'package:freshly/core/widgets/custom_text_button.dart';
import 'package:freshly/features/home/presentation/manager/get_recipes.dart';
import 'package:freshly/features/home/presentation/views/widgets/recipes_grid_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: FutureBuilder(
        future: GetRecipes().getRecipes(),
        builder: (context, snapshot) {
          return Column(
            children: [
              Image.asset(
                "assets/images/banner_1.jpg",
                width: double.infinity,
                height: 180.h,
                fit: BoxFit.fill,
              ),
              Container(
                color: Colors.white,
                padding: EdgeInsets.only(bottom: 15.h),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 15.w,
                        vertical: 15.h,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "Popular Recipes",
                            style: Styles.textStyle18.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const Spacer(),
                          CustomTextButton(
                            text: "See all",
                            textStyle: Styles.textStyle12.copyWith(
                              fontWeight: FontWeight.w500,
                              color: kPrimaryColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    RecipesGridView(snapshot: snapshot),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
