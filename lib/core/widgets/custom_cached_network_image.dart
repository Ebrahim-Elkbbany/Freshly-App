
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freshly/core/utils/styles.dart';

class CustomCashedNetworkImage extends StatelessWidget {
  const CustomCashedNetworkImage(
      {Key? key, required this.imageUrl, this.borderRadius = 16, required this.width, required this.height})
      : super(key: key);
  final String imageUrl;
  final double borderRadius;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8).w,
      ),
      child: CachedNetworkImage(
        errorWidget: (context, url, error) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.error),
              Text('ERROR', style: Styles.textStyle14),
            ],
          );
        },
        imageUrl: imageUrl,
        fit: BoxFit.fill,
      ),
    );
  }
}
