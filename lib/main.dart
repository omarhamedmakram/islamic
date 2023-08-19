import 'package:flutter/material.dart';
import 'package:islamic/core/my_theme/my_theme.dart';
import 'package:islamic/modules/splash_screen/splash_screen.dart';

import 'layout/home/home_screen.dart';
import 'modules/hadeth_view/hadith_details/hadith_details.dart';
import 'modules/quran_view/sura_details/sura_details.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MyTheme.lightTheme,
      initialRoute: HomeScreen.routeName,
      routes: {
        SplashScreen.routeName: (context) => SplashScreen(),
        HomeScreen.routeName: (context) => HomeScreen(),
        SuraDetails.routeName: (context) => SuraDetails(),
        HadithDetails.routeName: (context) => HadithDetails()
      },
    );
  }
}
