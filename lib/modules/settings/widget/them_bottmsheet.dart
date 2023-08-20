import 'package:flutter/material.dart';
import 'package:islamic/modules/settings/provider/settings_provider.dart';
import 'package:provider/provider.dart';

class ThemeBottomSheet extends StatefulWidget {
  const ThemeBottomSheet({super.key});

  @override
  State<ThemeBottomSheet> createState() => _ThemeBottomSheetState();
}

class _ThemeBottomSheetState extends State<ThemeBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var settingsProvider = Provider.of<SettingProvider>(context);
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
                settingsProvider.changeTheme(ThemeMode.dark);
              },
              child: settingsProvider.isDark()
                  ? getSelectedItem('Dark')
                  : getUnSelectedItem('Dark')),
          SizedBox(
            height: 50,
          ),
          InkWell(
            onTap: () {
              settingsProvider.changeTheme(ThemeMode.light);
            },
            child: !settingsProvider.isDark()
                ? getSelectedItem('Light')
                : getUnSelectedItem('Light'),
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
