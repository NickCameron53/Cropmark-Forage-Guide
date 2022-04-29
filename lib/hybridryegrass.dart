import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';
import 'main.dart';
import 'frenzy.dart';

class hybridryegrass extends StatelessWidget {

  final String region, representative, headshot, phonenum;


  _makingPhoneCall() async {
    if (await canLaunch(phonenum)) {
      await launch(phonenum);
    } else {
      throw 'Could not launch $phonenum';
    }
  }
  hybridryegrass({Key key, @required
  this.region,
    this.representative,
    this.headshot,
    this.phonenum,
  }) : super (key: key);


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
          MaterialPageRoute(builder: (context) => frenzy()),
        );
        break;

    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Hybrid ryegrass'),
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
                  'Frenzy ryegrass',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
      body: Center(
        child: ListView(

          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(80.0, 0.0, 80.0, 0.0),
              child: ElevatedButton.icon(
                onPressed: _makingPhoneCall,
                icon: Image.asset(headshot),
                label: Text("call $representative"),
                style: ElevatedButton.styleFrom(
                    primary: Colors.grey[500],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    )),
              ),
            ),


            Container(
              padding: EdgeInsets.fromLTRB(10.0, 40.0, 12.0, 2.0),
              child: RichText(
                text: TextSpan(
                  text: "Tetraploid Hybrid (Short-Rotation) ryegrass:",
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
                  "Italian-type tetraploid hybrids usually contain a greater percentage of Italian ryegrass parentage than perennial ryegrass but produce greater winter feed than perennial ryegrass and have greater persistence than Italian ryegrasses.",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ),
            ),

            Container(
              padding: EdgeInsets.fromLTRB(10.0, 5.0, 3.0, 5.0),
              child: RichText(
                text: TextSpan(
                  text:
                  "Tetraploid types have larger seeds and are fast establishing so are a good option for over sowing after drought to provide quick nutritious and highly palatable feed.",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ),
            ),

            Container(
              padding: EdgeInsets.fromLTRB(10.0, 5.0, 3.0, 5.0),
              child: RichText(
                text: TextSpan(
                  text:
                  "Tetraploid types have larger plants which perform best under high fertility moist conditions.  Grazing animals tend to prefer tetraploid plants which can lead to higher feed intake and performance.",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ),
            ),

            Container(
              padding: EdgeInsets.fromLTRB(10.0, 5.0, 3.0, 5.0),
              child: RichText(
                text: TextSpan(
                  text:
                  "Sow at 25 to 30kg/hectare as sole grass species or 10 to 15 kg/hectare in a mixture.",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ),
            ),

            Container(
              padding: EdgeInsets.fromLTRB(80.0, 30.0, 80.0, 3.0),
              child: ElevatedButton(
                  child: Text('Frenzy'),
                  onPressed: () {
                    Navigator.push(context,MaterialPageRoute(
                        builder: (context) => frenzy()),
                    );}),
            ),

          ],
        ),
      ),
    );
  }
}