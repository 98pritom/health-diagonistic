import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthtips/extended_page.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';

const String _url = 'https://zeenews.india.com/bengali/tags/health-tips.html';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Health tips'),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(8.0.w),
            child: Card(
              elevation: 10.w,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.0.w)),
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed(
                    'ExtendedPage',
                    arguments: '1',
                  );
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch, // add this
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        topRight: Radius.circular(8.0),
                      ),
                      child: Image.network('https://images.unsplash.com/photo-1624454002429-40ed87a5ec04?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
                          //width: 300,
                          height: 150,
                          fit: BoxFit.fill),
                    ),
                    ListTile(
                      title: Text('Tips 1'),
                      subtitle: Text('Diabetes'),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            child: Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed(
                    'ExtendedPage',
                    arguments: '2',
                  );
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        topRight: Radius.circular(8.0),
                      ),
                      child: Image.network('https://images.unsplash.com/photo-1634473637038-eeeb90247ec4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1032&q=80',
                          // width: 300,
                          height: 150,
                          fit: BoxFit.fill),
                    ),
                    ListTile(
                      title: Text('Tips 2'),
                      subtitle: Text('Phobia'),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            child: Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed(
                    'ExtendedPage',
                    arguments: '3',
                  );
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        topRight: Radius.circular(8.0),
                      ),
                      child: Image.network('https://www.bhf.org.uk/-/media/new-site-images/informationsupport/heart-matters/2018/october-2018/nutrition/best-way-to-measure-body-fat/weight_scales_man_ss_0118_noexp_620x400.jpg?la=en&rev=f9f8640517174b1c8cc53df692b032c5&hash=3BE464B8B74E15ABBCCCD70A896C6A3D51C55FEC',
                          // width: 300,
                          height: 150,
                          fit: BoxFit.fill),
                    ),
                    ListTile(
                      title: Text('Tips 3'),
                      subtitle: Text('Body Weight'),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10, 0, 10, 5),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              onPressed: () {
                Navigator.of(context).pushNamed('ShowWeb');
              },
              child: Text('See more', style: TextStyle(fontSize: 18)),
            ),
          ),
        ],
      ),
    );
  }
}

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}
