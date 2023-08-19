import 'package:flutter/material.dart';

import '../../../model/hadeth_model/hedeth_model.dart';

class HadithDetails extends StatelessWidget {
  static const String routeName = 'HadithDetails';

  const HadithDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as HedathModel;
    var theme = Theme.of(context);
    return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
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
                  bottom: 50, top: 90, start: 22, end: 22),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0xFFF8F8F8)),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Text(
                      args.title,
                      style: theme.textTheme.bodyMedium,
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
