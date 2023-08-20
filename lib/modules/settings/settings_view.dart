import 'package:flutter/material.dart';
import 'package:islamic/modules/settings/provider/settings_provider.dart';
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
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          Text(
            'Theme',
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
                    'Dark',
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
            'Languge',
            style: theme.textTheme.bodyLarge,
          ),
          const SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {},
            child: Container(
              padding: EdgeInsetsDirectional.all(14.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: theme.primaryColor)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'English',
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
}
