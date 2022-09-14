import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';
import 'forageregion.dart';


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
  String region, representative, phonenum, headshot ;

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

         // container to hold button for the upper north island
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
                      MaterialPageRoute(builder: (context) => forageregion(
                        region: 'Upper North Island',
                        representative: 'James Bryan',
                        headshot:'assets/James bryan headshot.png',
                        phonenum: 'tel:0272354989',
                      ),
                      ),
                    );
                  }
              ),
            ),
            bottom: 255,
            left: 150,
          ),

          // 'Lower North Island container',
          Positioned(
            child: Container(
              child: IconButton(
                  iconSize: 80,
                  icon: const Icon(Icons.album_sharp),
                  color: Colors.transparent,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => forageregion(
                        region: 'Lower North Island',
                        representative: 'Matthew Kidby',
                        headshot:'assets/Matt kidby headshot.png',
                        phonenum: 'tel:0272301783',
                      )
                      ),
                    );
                  }
              ),
            ),
            bottom: 175,
            left: 150,
          ),

         // 'Upper South Island container',
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
                      MaterialPageRoute(builder: (context) => forageregion(
                        region: 'Upper South Island',
                        representative: 'Liam Martin',
                        headshot:'assets/Liam headshot.png',
                        phonenum: 'tel:0275556813',
                      )),
                    );
                  }),
            ),
            bottom: 80,
            left: 60,
          ),

           // 'Lower South Island container'
          Positioned(
            child: Container(
              child: IconButton(
                  iconSize: 67.0,
                  icon: const Icon(Icons.album_sharp),
                  color: Colors.transparent,
                  onPressed: () {
                    Navigator.of(context).push(

                      MaterialPageRoute(builder: (context) => forageregion(
                        region: 'Lower South Island',
                        representative: 'Charlotte Field',
                        headshot:'assets/Charlotte headshot.png',
                        phonenum: 'tel:0272365552',
                        ),),
                        );
                  }),
            ),
            bottom: 30,
            left: 23,
          ),

// cropmark logo
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
