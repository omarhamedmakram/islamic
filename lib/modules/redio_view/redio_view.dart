import 'package:flutter/material.dart';

class RedioView extends StatefulWidget {
  @override
  State<RedioView> createState() => _RedioViewState();
}

class _RedioViewState extends State<RedioView> {
  bool isflag = true;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/body_redio.png'),
          SizedBox(
            height: 40,
          ),
          Text(
            'اذاعة القرءان الكريم ',
            style: theme.textTheme.titleMedium,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            padding: EdgeInsetsDirectional.symmetric(horizontal: 20),
            //  color: Colors.red,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ImageIcon(
                  AssetImage('assets/images/Icon-redio-next.png'),
                  color: theme.primaryColor,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      isflag = !isflag;
                    });
                  },
                  child: Icon(
                    isflag ? Icons.play_arrow : Icons.stop,
                    size: 70,
                    color: theme.primaryColor,
                  ),
                ),
                ImageIcon(
                  AssetImage('assets/images/Icon metro-redio.png'),
                  color: theme.primaryColor,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
