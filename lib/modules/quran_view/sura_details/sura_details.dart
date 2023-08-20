import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamic/modules/settings/provider/settings_provider.dart';
import 'package:provider/provider.dart';

import '../../../model/quran_model/quran_model.dart';

class SuraDetails extends StatefulWidget {
  static const String routeName = 'SuraDetails';

  const SuraDetails({super.key});

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String> vers = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as QuranModel;
    var theme = Theme.of(context);
    var settingsProvider = Provider.of<SettingProvider>(context);
    if (vers.isEmpty) readFile(args.index);
    var language = AppLocalizations.of(context);

    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  settingsProvider.currentTheme == ThemeMode.dark
                      ? 'assets/images/background_dark.png'
                      : 'assets/images/background_light.png',
                ),
                fit: BoxFit.fill)),
        child: Scaffold(
          appBar: AppBar(
            title: Text(language!.islamic),
          ),
          body: Container(
            margin: EdgeInsetsDirectional.only(
                bottom: 50, top: 35, start: 22, end: 22),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: theme.canvasColor),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      args.text,
                      style: theme.textTheme.titleLarge,
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
                  thickness: 0.5,
                ),
                Expanded(
                  child: ListView.builder(
                    itemBuilder: (context, index) => Text(
                      '${vers[index]}  (${index + 1})',
                      textAlign: TextAlign.center,
                      textDirection: TextDirection.rtl,
                      style: theme.textTheme.titleSmall,
                    ),
                    itemCount: vers.length,
                  ),
                )
              ],
            ),
          ),
        ));
  }

  void readFile(int index) async {
    String read =
        await rootBundle.loadString('assets/files/quran_fille/$index.txt');
    List<String> text = read.trim().split('\n');
    vers = text;
    setState(() {});
  }
}
