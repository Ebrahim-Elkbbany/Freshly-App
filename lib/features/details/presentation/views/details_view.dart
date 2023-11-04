import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freshly/features/details/presentation/views/widgets/details_view_body.dart';
import 'package:freshly/features/favourite/data/fav_sqldb.dart';

class DetailsView extends StatefulWidget {
  const DetailsView(
      {super.key, required this.id, required this.title, required this.image});

  final int id;
  final String title;

  final String image;

  @override
  State<DetailsView> createState() => _DetailsViewState();
}

class _DetailsViewState extends State<DetailsView> {
  bool isFavorite = false;

  @override
  void initState() {
    super.initState();
    SqlDb().read().then(
      (items) {
        if (items != null) {
          for (var item in items) {
            if (item['id'] == widget.id) {
              setState(() {
                isFavorite = true;
              });
              break;
            }
          }
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 15.w),
            child: IconButton(
              onPressed: () {
                if (isFavorite) {
                  SqlDb().delete(widget.id);
                  SqlDb().read();
                } else {
                  SqlDb().insert(widget.id, widget.title, widget.image);
                }
                setState(() {
                  isFavorite = !isFavorite;
                });
              },
              icon: Icon(
                isFavorite ? Icons.favorite : Icons.favorite_border_outlined,
              ),
              color: isFavorite ? Colors.red : null,
            ),
          ),
        ],
      ),
      body: DetailsViewBody(
        id: widget.id,
      ),
    );
  }
}
