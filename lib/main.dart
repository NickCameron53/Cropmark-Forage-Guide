import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';
import 'forageuni.dart';
import 'foragelni.dart';
import 'forageusi.dart';
import 'foragelsi.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]).then((_) {
    runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Home(),
    theme: ThemeData(
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
         primary: Colors.lightGreen[600],
        onPrimary: Colors.white,
        minimumSize: Size(200,35),
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
        side: BorderSide(width: 2.0, color: Colors.red),
        ),
      ),
    ),
    ),
    ),
    );
  }
  );
}

_makingPhoneCall() async {
  const url = 'tel:0800427676';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

class Home extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
          title: Column(
            children: [
              Text(
                'Forage Sowing Guide',
                style: TextStyle(color: Colors.white, fontSize: 22.0),
                textAlign: TextAlign.center,
              ),
              Text(
                'Call 0800427676 for assistance',
                style: TextStyle(color: Colors.white, fontSize: 12.0),
                textAlign: TextAlign.right,
              ),
            ],
          ),
          backgroundColor: Colors.red[700],
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.call),
              onPressed: (_makingPhoneCall),
            ),
          ]),
      body: Center(

        child: Stack(children: <Widget>[


          Container(
            child: Image.asset('assets/regionnz.png'),
            height: 400,
          ),


          Positioned(
            child: Container(
              child: TextButton(
                child: Text('Press on map'),
                style: TextButton.styleFrom(
                  primary: Colors.black,
                ),
              ),
            ),
            bottom: 300,
            left: 0,
          ),

          Positioned(
            child: Container(
              child: TextButton(
                child: Text('to select region'),
                style: TextButton.styleFrom(
                  primary: Colors.black,
                ),
              ),
            ),
            bottom: 280,
            left: 0,
          ),



          Positioned(
            child: Container(
              child: IconButton(
                  iconSize: 67.0,
                  icon: const Icon(Icons.album_sharp),
                  // 'Lower South Island'
                  color: Colors.transparent,
                  onPressed: () {
                    Navigator.of(context).push(

                      MaterialPageRoute(builder: (context) => foragelsi(),),
                    );
                  }),
            ),
            bottom: 30,
            left: 23,
          ),
          Positioned(
            child: Container(
              child: IconButton(
                  iconSize: 120.0,
                  icon: const Icon(Icons.album_sharp),
                  // Upper South Island',
                  color: Colors.transparent,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => forageusi()),
                    );
                  }),
            ),
            bottom: 80,
            left: 60,
          ),
          Positioned(
            child: Container(
              child: IconButton(
                  iconSize: 80,
                  icon: const Icon(Icons.album_sharp),
                  // 'Lower North Island',
                  color: Colors.transparent,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => foragelni()),
                    );
                  }),
            ),
            bottom: 175,
            left: 150,
          ),
          Positioned(
            child: Container(
              child: IconButton(
                  iconSize: 120,
                  icon: const Icon(Icons.album_sharp),
                  // 'Upper North Island',
                  color: Colors.transparent,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => forageuni()),
                    );
                  }),
            ),
            bottom: 255,
            left: 150,
          ),

          Positioned(
            child: Container(
              child: Image.asset('assets/cropmarklogo.png'),
              height: 50,
            ),
            bottom: 0,
            left: 100,
          ),
        ]
        ),

      ),
    );
  }
}
