import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamic/model/hadeth_model/hedeth_model.dart';

import 'hadith_details/hadith_details.dart';

class HedethView extends StatefulWidget {
  @override
  State<HedethView> createState() => _HedethViewState();
}

class _HedethViewState extends State<HedethView> {
  List<HedathModel> hedathmodel = [];

  @override
  Widget build(BuildContext context) {
    if (hedathmodel.isEmpty) {
      readFile();
    }

    var theme = Theme.of(context);
    return Column(
      children: [
        Image.asset('assets/images/hadeh_title.png'),
        Divider(
          thickness: 2,
          color: theme.primaryColor,
        ),
        Text(
          'الاحاديث ',
          style: theme.textTheme.bodyLarge,
        ),
        Divider(
          thickness: 2,
          color: theme.primaryColor,
        ),
        Expanded(
          child: ListView.builder(
              itemBuilder: (context, index) => InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed(HadithDetails.routeName,
                          arguments: HedathModel(
                              title: hedathmodel[index].title,
                              text: hedathmodel[index].text));
                    },
                    child: Text(
                      '${hedathmodel[index].title}',
                      style: theme.textTheme.titleMedium,
                      textAlign: TextAlign.center,
                    ),
                  ),
              itemCount: hedathmodel.length),
        )
      ],
    );
  }

  void readFile() async {
    String read =
        await rootBundle.loadString('assets/files/hedath/ahadeth .txt');
    List<String> allHadeth = read.split('#');
    for (int i = 0; i < allHadeth.length - 1; i++) {
      String singleHadethContent = allHadeth[i].trim();
      String title =
          singleHadethContent.substring(0, singleHadethContent.indexOf('\n'));
      String content = singleHadethContent.substring(
          title.length, singleHadethContent.length);
      hedathmodel.add(HedathModel(title: title, text: content));
      setState(() {});
    }
  }
}
