import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamic/modules/settings/provider/settings_provider.dart';
import 'package:provider/provider.dart';

import '../../../model/hadeth_model/hedeth_model.dart';

class HadithDetails extends StatelessWidget {
  static const String routeName = 'HadithDetails';

  const HadithDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as HedathModel;
    var theme = Theme.of(context);
    var settingProvider = Provider.of<SettingProvider>(context);
    var languge = AppLocalizations.of(context);
    return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  settingProvider.currentTheme == ThemeMode.dark
                      ? 'assets/images/background_dark.png'
                      : 'assets/images/background_light.png',
                ),
                fit: BoxFit.fill)),
        child: Scaffold(
            appBar: AppBar(
              title: Text(languge!.islamic),
            ),
            body: Container(
              margin: EdgeInsetsDirectional.only(
                  bottom: 50, top: 90, start: 22, end: 22),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: theme.canvasColor,
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Text(
                      args.title,
                      style: theme.textTheme.titleLarge,
                    ),
                    Divider(
                      thickness: 1,
                      color: theme.primaryColor,
                      indent: 40,
                      endIndent: 40,
                    ),
                    Text(
                      args.text,
                      style: theme.textTheme.titleSmall,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            )));
  }
}
