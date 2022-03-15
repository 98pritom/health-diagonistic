import 'package:flutter/material.dart';

import '../constant/constant.dart';
class ShowTipsInfo3 extends StatefulWidget {
  String info;

  ShowTipsInfo3({Key? key, required this.info}) : super(key: key);

  @override
  State<ShowTipsInfo3> createState() => _ShowTipsInfo3State();
}

class _ShowTipsInfo3State extends State<ShowTipsInfo3> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        // height: 300,
        width: double.infinity,
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Image.network('${img4}'),
            ),
            Container(
              margin: EdgeInsets.all(15),
              child: Text(
                '${tips14}',
                style: TextStyle(fontSize: 22),
              ),
            ),
            Container(
              margin: EdgeInsets.all(15),
              child: Text(
                '${tips15}',
                style: TextStyle(fontSize: 22),
              ),
            ),
            Container(
              margin: EdgeInsets.all(15),
              child: Text(
                '${tips16}',
                style: TextStyle(fontSize: 22),
              ),
            ),
            Container(
              margin: EdgeInsets.all(15),
              child: Text(
                '${tips17}',
                style: TextStyle(fontSize: 22),
              ),
            ),
            Container(
              margin: EdgeInsets.all(15),
              child: Text(
                '${tips18}',
                style: TextStyle(fontSize: 22),
              ),
            ),
            Container(
              margin: EdgeInsets.all(15),
              child: Text(
                '${tips19}',
                style: TextStyle(fontSize: 22),
              ),
            ),
            Container(
              margin: EdgeInsets.all(15),
              child: Text(
                '${tips20}',
                style: TextStyle(fontSize: 22),
              ),
            ),
            Container(
              margin: EdgeInsets.all(15),
              child: Text(
                '${tips21}',
                style: TextStyle(fontSize: 22),
              ),
            ),
            Container(
              margin: EdgeInsets.all(15),
              child: Text(
                '${tips22}',
                style: TextStyle(fontSize: 22),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
