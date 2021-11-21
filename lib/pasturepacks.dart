import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';
import 'main.dart';
import 'ultraavatarpack.dart';
import 'matrixpack.dart';
import 'raidernea.dart';
import 'avatarpack.dart';

_makingPhoneCall() async {
  const url = 'tel:0800427676';
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
        MaterialPageRoute(builder: (context) => avatarpack()),
      );
      break;
    case 2:
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => matrixpack()),
      );
      break;
    case 3:
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ultraavatarpack()),
      );
      break;

  }
}

class pasturepacks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Column(
        children:[
          Text('Pasture Packs',
        style: TextStyle (color: Colors.white, fontSize:22.0),
        textAlign: TextAlign.center,
      ),
        Text(
          'Call 0800427676 for assistance',
          style: TextStyle (color: Colors.white, fontSize: 12.0),
          textAlign: TextAlign.right,
        ),
        ],
    ),

        backgroundColor: Colors.red[700],
        actions: [

      IconButton(
      icon: Icon(Icons.call),
      onPressed: (_makingPhoneCall),
    ),



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
                  'Avatar Pasture Pack',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              PopupMenuDivider(),
              PopupMenuItem<int>(
                value: 2,
                child: Text(
                  'Matrix Pasture Pack',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              PopupMenuDivider(),
              PopupMenuItem<int>(
                value: 3,
                child: Text(
                  'Ultra & Avatar Pasture Pack',
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
              padding: EdgeInsets.fromLTRB(10.0, 0.0, 12.0, 2.0),
              child: RichText(
                text: TextSpan(
                  text: "Pasture Packs",
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
                  "Pasture Packs come in 25 kg packs and are designed for different farming systems. They are pre-mixed with clover.",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            Container(
              child: Image.asset('assets/ryeclover.png'),
            ),

            Container(
              child: Align(
                  child: ElevatedButton(
                      child: Text('Avatar Pasture Pack'),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => avatarpack()),
                        );
                      }),
                ),
              ),

            Container(
              child: Align(
                child: ElevatedButton(
                    child: Text('Matrix Pasture Pack'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => matrixpack()),
                      );
                    }),
              ),
            ),

            Container(
              child: Align(
                child: ElevatedButton(
                    child: Text('Ultra & Avatar Pasture Pack'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ultraavatarpack()),
                      );
                    }),
              ),
            ),


          ],
        ),
      ),
    );
  }
}
