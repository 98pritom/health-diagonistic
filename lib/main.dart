import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthtips/diagonistic_page.dart';
import 'package:healthtips/extended_page.dart';
import 'package:healthtips/second_page.dart';
import 'package:healthtips/webview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(414, 837),
      builder: () => MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(),
        routes: {
          'SecondPage': (ctx) => SecondPage(),
          'DiagonisticPage': (ctx) => DiagonisticPage(),
          'ExtendedPage': (ctx) => ExtendedPage(),
          'ShowWeb': (ctx) => ShowWeb(),
        },
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed('SecondPage');
              },
              child: Center(
                child: Text(
                  'Tips page',
                  style: TextStyle(
                    fontSize: 28.w,
                  ),
                ),
              ),
            ),
          ),
          Container(
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed('DiagonisticPage');
              },
              child: Center(
                child: Text(
                  'Diagonistic Page',
                  style: TextStyle(
                    fontSize: 28.w,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
