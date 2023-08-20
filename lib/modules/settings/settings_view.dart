import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamic/modules/settings/provider/settings_provider.dart';
import 'package:islamic/modules/settings/widget/languge_bottomsheet.dart';
import 'package:islamic/modules/settings/widget/them_bottmsheet.dart';
import 'package:provider/provider.dart';

class Settings extends StatefulWidget {
  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var settingsProvider = Provider.of<SettingProvider>(context);
    var languge = AppLocalizations.of(context);

    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          Text(
            languge!.theme,
            style: theme.textTheme.bodyLarge,
          ),
          const SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              showThemeBottomSheet();
            },
            child: Container(
              padding: EdgeInsetsDirectional.all(14.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: theme.primaryColor)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    settingsProvider.isDark() ? languge!.dark : languge!.light,
                    style: theme.textTheme.titleLarge,
                  ),
                  Icon(Icons.check)
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            languge!.languge,
            style: theme.textTheme.bodyLarge,
          ),
          const SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              showLangugeBottomSheet();
            },
            child: Container(
              padding: EdgeInsetsDirectional.all(14.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: theme.primaryColor)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    settingsProvider.isEnglish()
                        ? languge!.english
                        : languge!.arabic,
                    style: theme.textTheme.titleLarge,
                  ),
                  Icon(Icons.check)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  showThemeBottomSheet() {
    showModalBottomSheet(
        context: context, builder: (context) => ThemeBottomSheet());
  }

  showLangugeBottomSheet() {
    showModalBottomSheet(
        context: context, builder: (context) => LangugeBottomSheet());
  }
}
