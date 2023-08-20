import 'dart:async';

import 'package:flutter/material.dart';
import 'package:islamic/layout/home/home_screen.dart';
import 'package:islamic/modules/settings/provider/settings_provider.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = 'SplashScreen';

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
        Duration(
          seconds: 3,
        ), () {
      Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingProvider>(context);
    return Image.asset(
      settingsProvider.currentTheme == ThemeMode.dark
          ? 'assets/images/splach_backgrounddark.png'
          : 'assets/images/splash_light.png',
      fit: BoxFit.fill,
    );
  }
}
