import 'package:flutter/material.dart';

class SebhaView extends StatefulWidget {
  @override
  State<SebhaView> createState() => _SebhaViewState();
}

class _SebhaViewState extends State<SebhaView> {
  int counterSebha = 0;
  int indexList = 0;
  List<String> Remembrance = [
    'سبحان الله',
    'الحمد لله',
    'الله اكبر',
    'استغفر الله',
  ];
  double truns = 0.0;

  @override
  Widget build(BuildContext context) {
    print(Remembrance.length);
    var theme = Theme.of(context);
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Image.asset('assets/images/head of seb7a.png'),
              InkWell(
                onTap: () {
                  truns += 0.3;
                  setState(() {});
                },
                child: Container(
                  // color: Colors.red,
                  margin: EdgeInsetsDirectional.only(top: 75, bottom: 30),
                  child: Transform.rotate(
                    angle: truns,
                    child: Image.asset('assets/images/body of seb7a.png'),
                  ),
                ),
              ),
            ],
          ),
          const Text(
            'عدد التسبيحات ',
            textAlign: TextAlign.center,
          ),
          Container(
            margin: EdgeInsetsDirectional.only(bottom: 10),
            alignment: Alignment.center,
            width: 55,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadiusDirectional.circular(20.0),
              color: theme.canvasColor,
            ),
            child: Text(
              '$counterSebha',
              style: TextStyle(),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  truns += 0.3;

                  ChangeSebha();
                });
              },
              style: ButtonStyle(
                  shape: MaterialStatePropertyAll(ContinuousRectangleBorder(
                      borderRadius: BorderRadius.circular(40.0))),
                  backgroundColor:
                      MaterialStatePropertyAll(theme.primaryColor)),
              child: Text('${Remembrance[indexList]}'))
        ],
      ),
    );
  }

  void ChangeSebha() {
    counterSebha++;
    if (counterSebha >= 33) {
      indexList++;
      counterSebha = 0;
    } else if (indexList == Remembrance.length - 1) {
      indexList = 0;
    }
  }
}
