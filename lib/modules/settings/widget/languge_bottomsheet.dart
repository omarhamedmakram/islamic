import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamic/modules/settings/provider/settings_provider.dart';
import 'package:provider/provider.dart';

class LangugeBottomSheet extends StatefulWidget {
  const LangugeBottomSheet({super.key});

  @override
  State<LangugeBottomSheet> createState() => _LangugeBottomSheetState();
}

class _LangugeBottomSheetState extends State<LangugeBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var settingsProvider = Provider.of<SettingProvider>(context);
    var languge = AppLocalizations.of(context);
    return Container(
      //  color: Color(0xFF141A2E),
      padding: EdgeInsetsDirectional.all(30.0),
      decoration: BoxDecoration(
        color: theme.shadowColor,
      ),
      child: Column(
        children: [
          InkWell(
              onTap: () {
                settingsProvider.changeLanguge('en');
              },
              child: settingsProvider.isEnglish()
                  ? getSelectedItem(languge!.english)
                  : getUnSelectedItem(languge!.english)),
          SizedBox(
            height: 50,
          ),
          InkWell(
            onTap: () {
              settingsProvider.changeLanguge('ar');
            },
            child: !settingsProvider.isEnglish()
                ? getSelectedItem(languge!.arabic)
                : getUnSelectedItem(languge!.arabic),
          )
        ],
      ),
    );
  }

  Widget getSelectedItem(String title) {
    return Container(
      padding: EdgeInsetsDirectional.all(14.0),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.2),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '$title',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          Icon(Icons.check)
        ],
      ),
    );
  }

  Widget getUnSelectedItem(String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '$title',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        Icon(Icons.check)
      ],
    );
  }
}
