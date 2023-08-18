import 'package:flutter/material.dart';

import '../../../model/quran_model/quran_model.dart';

class SuraDetails extends StatelessWidget {
  static const String routeName = 'SuraDetails';

  const SuraDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as QuranModel;
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
          body: Container(
            margin: EdgeInsetsDirectional.only(
                bottom: 50, top: 35, start: 22, end: 22),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color(0xFFF8F8F8)),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      args.text,
                      style: theme.textTheme.bodyLarge,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.play_circle),
                  ],
                ),
                Divider(
                  color: theme.primaryColor,
                  endIndent: 40,
                  indent: 40,
                  thickness: 1,
                )
              ],
            ),
          ),
        ));
  }
}
