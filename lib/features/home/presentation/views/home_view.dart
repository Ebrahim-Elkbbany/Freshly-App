import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freshly/features/home/presentation/views/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
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
      body: const HomeViewBody(),
    );
  }
}
