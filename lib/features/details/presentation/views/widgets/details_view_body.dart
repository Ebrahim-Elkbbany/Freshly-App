import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freshly/core/utils/resposive_size_config.dart';
import 'package:freshly/features/details/presentation/manager/get_recipes_details.dart';
import 'package:freshly/features/details/presentation/views/widgets/image_title_Sec.dart';
import 'package:freshly/features/details/presentation/views/widgets/ingredientes_sec.dart';
import 'package:freshly/features/details/presentation/views/widgets/summary_serving_sec.dart';

class DetailsViewBody extends StatefulWidget {
  const DetailsViewBody({super.key, required this.id});

  final int id;

  @override
  State<DetailsViewBody> createState() => _DetailsViewBodyState();
}

class _DetailsViewBodyState extends State<DetailsViewBody> {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: FutureBuilder(
        future: GetRecipesDetails().getRecipesDetails(id: widget.id),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ImageTitleSec(snapshot: snapshot),
                MinutesSummaryServingSec(snapshot: snapshot),
                Divider(
                  thickness: 0.5.w,
                  indent: 15.w,
                  endIndent: 15.w,
                ),
                IngredientsSec(snapshot: snapshot),
              ],
            );
          } else {
            return SizedBox(
              height: SizeConfig.height(context, 1),
              child: const Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
        },
      ),
    );
  }

  Future<void> refreshData() async {
    setState(() {});
  }
}
