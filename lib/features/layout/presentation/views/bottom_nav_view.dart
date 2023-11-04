import 'package:flutter/material.dart';
import 'package:freshly/features/favourite/presentation/views/favourite_view.dart';
import 'package:freshly/features/home/presentation/views/home_view.dart';


class LayoutView extends StatefulWidget {
  const LayoutView({Key? key}) : super(key: key);

  @override
  State<LayoutView> createState() => _LayoutViewState();
}

class _LayoutViewState extends State<LayoutView> {
  int currentIndex =0;
  List<Widget> bottomScreens=const[
    HomeView(),
    FavouriteView(),
  ];

  void changeBottomNav (int index){
    currentIndex  = index;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bottomScreens[currentIndex],
      bottomNavigationBar: SizedBox(
        child: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index){
            currentIndex = index;
            setState(() {
            });
          },
          items: const [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.home_outlined),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border_outlined),
              label: 'Favourite',
            ),
          ],
        ),
      ),
    );
  }
}
