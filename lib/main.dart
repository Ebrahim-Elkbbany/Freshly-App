import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freshly/core/utils/theme.dart';
import 'package:freshly/features/layout/presentation/views/bottom_nav_view.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const FreshlyApp());
}

class FreshlyApp extends StatelessWidget {
  const FreshlyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: lightTheme,
          home: child,
        );
      },
      child: const LayoutView(),
    );
  }
}
