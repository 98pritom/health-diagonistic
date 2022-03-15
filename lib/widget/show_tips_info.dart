import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:healthtips/constant/constant.dart';

class ShowTipsInfo extends StatefulWidget {
  String info;

  ShowTipsInfo({Key? key, required this.info}) : super(key: key);

  @override
  State<ShowTipsInfo> createState() => _ShowTipsInfoState();
}

class _ShowTipsInfoState extends State<ShowTipsInfo> {
  @override
  Widget build(BuildContext context) {
    print('${widget.info}kkkkkk');

    return SingleChildScrollView(
      child: Container(
        // height: 300,
        width: double.infinity,
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Image.network('${img2}'),
            ),
            Container(
              margin: EdgeInsets.all(15),
              child: Text(
                '${tips1}',
                style: TextStyle(fontSize: 22),
              ),
            ),
            Container(
              margin: EdgeInsets.all(15),
              child: Text(
                '${tips2}',
                style: TextStyle(fontSize: 22),
              ),
            ),
            Container(
              margin: EdgeInsets.all(15),
              child: Text(
                '${tips3}',
                style: TextStyle(fontSize: 22),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
