import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freshly/features/favourite/presentation/views/widgets/favourite_view_body.dart';

class FavouriteView extends StatelessWidget {
  const FavouriteView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Favourite Recipe"),
        leading: Padding(
          padding:  EdgeInsets.only(left: 15.w),
          child: const Icon(Icons.menu),
        ),
        actions: [
          Padding(
            padding:  EdgeInsets.only(right: 15.w),
            child: const Icon(Icons.search),
          ),
        ],
      ),
      body: const FavouriteViewBody(),
    );
  }
}
