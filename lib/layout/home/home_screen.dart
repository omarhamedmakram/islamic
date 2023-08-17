import 'package:flutter/material.dart';
import 'package:islamic/modules/quran_view/quran_view.dart';
import 'package:islamic/modules/redio_view/redio_view.dart';
import 'package:islamic/modules/sebha_view/sebha_view.dart';
import 'package:islamic/modules/settings/settings_view.dart';

import '../../modules/hadeth_view/hadeth_view.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'HomeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int current = 0;
  List<Widget> Screen = [
    QuranView(),
    HedethView(),
    SebhaView(),
    RedioView(),
    Settings(),
  ];

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/images/background_light.png',
              ),
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Islamic'),
        ),
        body: Screen[current],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: current,
          onTap: (int index) {
            setState(() {
              current = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/quran_bar.png')),
                label: 'Quran'),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/hadeth_bar.png')),
                label: 'Hadeth'),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/sebha_bar.png')),
                label: 'Sebha'),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/radio_bar.png')),
                label: 'Redio'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Settings'),
          ],
        ),
      ),
    );
  }
}
