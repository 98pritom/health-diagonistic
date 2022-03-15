import 'package:flutter/material.dart';
import 'package:healthtips/widget/show_tips_info.dart';
import 'package:healthtips/widget/show_tips_info2.dart';
import 'package:healthtips/widget/show_tips_info3.dart';

class ExtendedPage extends StatefulWidget {
  const ExtendedPage({Key? key}) : super(key: key);

  @override
  State<ExtendedPage> createState() => _ExtendedPageState();
}

class _ExtendedPageState extends State<ExtendedPage> {
  @override
  Widget build(BuildContext context) {
    final tipsNumberCollector = ModalRoute.of(context)!.settings.arguments;
    String tipsNumber = tipsNumberCollector.toString();
    return Scaffold(
      appBar: AppBar(
        title: Text('Tips number $tipsNumber'),
      ),
      body: (tipsNumber == '1')
          ? ShowTipsInfo(info: tipsNumber)
          : (tipsNumber == '2')
              ? ShowTipsInfo2(info: tipsNumber)
              : ShowTipsInfo3(info: tipsNumber),
    );
  }
}
