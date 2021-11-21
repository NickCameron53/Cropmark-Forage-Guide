import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';
import 'main.dart';
import 'appeal.dart';
import 'sonik.dart';
import 'vibe.dart';
import 'blade.dart';

_makingPhoneCall() async {
  const url = 'tel:0272301783';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

void onSelected(BuildContext context, int item) {
  switch (item) {
    case 0:
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Home()),
      );
      break;
    case 1:
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => appeal()),
      );
      break;
    case 2:
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => sonik()),
      );
      break;
    case 3:
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => vibe()),
      );
      break;
    case 4:
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => blade()),
      );
      break;
  }
}

class shorttermgrasslni extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Lower N.I. Short Term grass'),
        centerTitle: true,
        backgroundColor: Colors.red[700],
        actions: [
          PopupMenuButton<int>(
            color: Colors.lightGreen[600],
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(15.0))),
            onSelected: (item) => onSelected(context, item),
            itemBuilder: (context) => [
              PopupMenuItem<int>(
                value: 0,
                child: Row(
                  children: [
                    Icon(Icons.home, color: Colors.white),
                    Text(
                      '   Home',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              PopupMenuDivider(),
              PopupMenuItem<int>(
                value: 1,
                child: Text(
                  'Appeal Italian ryegrass',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              PopupMenuDivider(),
              PopupMenuItem<int>(
                value: 2,
                child: Text(
                  'Sonik Italian ryegrass',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              PopupMenuDivider(),
              PopupMenuItem<int>(
                value: 3,
                child: Text(
                  'Vibe Italian ryegrass',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              PopupMenuDivider(),
              PopupMenuItem<int>(
                value: 4,
                child: Text(
                  'Blade Italian ryegrass',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              PopupMenuDivider(),
            ],
          ),
        ],
      ),
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.all(0),
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(80.0, 2.0, 80.0, 0.0),
              child: ElevatedButton.icon(
                onPressed: _makingPhoneCall,
                icon: Icon(Icons.add_ic_call_sharp),
                label: Text('call Matt Kidby'),
                style: ElevatedButton.styleFrom(
                    primary: Colors.grey[500],
                    side: BorderSide(width: 2.0,color: Colors.grey[500]),
                )),
              ),

            Container(
              padding: EdgeInsets.fromLTRB(10.0, 40.0, 12.0, 2.0),
              child: RichText(
                text: TextSpan(
                  text: "Diploid Italian ryegrass:",
                  style: TextStyle(
                      color: Colors.red[700],
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10.0, 5.0, 3.0, 5.0),
              child: RichText(
                text: TextSpan(
                  text:
                      "Italian ryegrass are usually erect shorter term ryegrasses producing very high winter and early spring yield of high quality. Italian ryegrasses require a winter period to form seed heads. Sow at 20 to 25kg/hectare as sole grass species or 8 to 10 kg/hectare in a mixture.",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            Container(
              child: Image.asset('assets/italianryegrasspic.png'),
            ),

          Container(
              padding: EdgeInsets.fromLTRB(80.0, 3.0, 80.0, 3.0),
              child: ElevatedButton(
                  child: Text('Appeal'),
                  onPressed: () {
                    Navigator.push(context,MaterialPageRoute(
                        builder: (context) => appeal()),
                    );}),
            ),

            Container(
              padding: EdgeInsets.fromLTRB(80.0, 3.0, 80.0, 3.0),
              child: ElevatedButton(
                  child: Text('Sonik'),
                  onPressed: () {
                    Navigator.push(context,MaterialPageRoute(
                        builder: (context) => sonik()),
                    );}),
            ),

            Container(
              padding: EdgeInsets.fromLTRB(80.0, 3.0, 80.0, 3.0),
              child: ElevatedButton(
                  child: Text('Vibe'),
                  onPressed: () {
                    Navigator.push(context,MaterialPageRoute(
                        builder: (context) => vibe()),
                    );}),
            ),

            Container(
              padding: EdgeInsets.fromLTRB(80.0, 3.0, 80.0, 3.0),
              child: ElevatedButton(
                  child: Text('Blade'),
                  onPressed: () {
                    Navigator.push(context,MaterialPageRoute(
                        builder: (context) => blade()),
                    );}),
            ),


          ],
        ),
      ),
    );
  }
}
