import 'package:flutter/material.dart';
import 'package:islamic/core/my_theme/my_theme.dart';
import 'package:islamic/modules/settings/provider/settings_provider.dart';
import 'package:islamic/modules/splash_screen/splash_screen.dart';
import 'package:provider/provider.dart';

import 'layout/home/home_screen.dart';
import 'modules/hadeth_view/hadith_details/hadith_details.dart';
import 'modules/quran_view/sura_details/sura_details.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => SettingProvider(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: settingsProvider.currentTheme,
      initialRoute: HomeScreen.routeName,
      theme: MyTheme.lightTheme,
      darkTheme: MyTheme.darkTheme,
      routes: {
        SplashScreen.routeName: (context) => SplashScreen(),
        HomeScreen.routeName: (context) => HomeScreen(),
        SuraDetails.routeName: (context) => SuraDetails(),
        HadithDetails.routeName: (context) => HadithDetails()
      },
    );
  }
}
