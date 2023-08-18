import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
    if (vers.isEmpty) readFile(args.index);
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
