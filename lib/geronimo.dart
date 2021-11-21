import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';
import 'main.dart';

_makingWebCall() async {
  const url =
      'https://www.cropmarkseeds.com/Forage-Products-from-Cropmark-Seeds/Geronimo-fodder-beet';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

class geronimo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          title: Text('Geronimo'),
          centerTitle: true,
          backgroundColor: Colors.red[700],
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),
                );
              },
            ),
          ]),
      body: Center(
        child: ListView(
          shrinkWrap: false,
          padding: EdgeInsets.all(5),
          children: <Widget>[
            Image.asset('assets/geronimo.png'),
            Container(
              padding: EdgeInsets.fromLTRB(10.0, 20.0, 12.0, 2.0),
              child: RichText(
                text: TextSpan(
                  text: "Key Attributes:",
                  style: TextStyle(
                      color: Colors.red[700],
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10.0, 0.0, 3.0, 5.0),
              child: RichText(
                text: TextSpan(
                  text:
                      "A new high yielding monogerm cultivar with an orange bulb that sits approx 45% above the ground. Strong foliar growth, with improved bolting resistance, good resistance to mildew, ramularia and rhizomania. Suited for grazing and lifting.",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            Container(
              child: Image.asset('assets/geronimopic.png'),
            ),

            Container(
              child: Image.asset('assets/geronimodata.png'),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10.0, 20.0, 12.0, 2.0),
              child: RichText(
                text: TextSpan(
                  text: "Sowing Rates:",
                  style: TextStyle(
                      color: Colors.red[700],
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10.0, 0.0, 3.0, 5.0),
              child: RichText(
                text: TextSpan(
                  text: "Precision: 90,000 seeds/ha.",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10.0, 0.0, 3.0, 5.0),
              child: RichText(
                text: TextSpan(
                  text: "Conventional: 125,000 seeds/ha.",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10.0, 20.0, 12.0, 2.0),
              child: RichText(
                text: TextSpan(
                  text: "Maturity:",
                  style: TextStyle(
                      color: Colors.red[700],
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10.0, 0.0, 3.0, 5.0),
              child: RichText(
                text: TextSpan(
                  text: "Days from sowing to grazing: 200+.",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10.0, 20.0, 12.0, 2.0),
              child: RichText(
                text: TextSpan(
                  text: "Bulb Dry Matter:",
                  style: TextStyle(
                      color: Colors.red[700],
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10.0, 0.0, 3.0, 5.0),
              child: RichText(
                text: TextSpan(
                  text: "15 to 17%.",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10.0, 20.0, 12.0, 2.0),
              child: RichText(
                text: TextSpan(
                  text: "Type:",
                  style: TextStyle(
                      color: Colors.red[700],
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10.0, 0.0, 3.0, 5.0),
              child: RichText(
                text: TextSpan(
                  text: "Monogerm.",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10.0, 0.0, 3.0, 5.0),
              child: RichText(
                text: TextSpan(
                  text: "Suitable for grazing and lifting.",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10.0, 20.0, 12.0, 2.0),
              child: RichText(
                text: TextSpan(
                  text: "Insect Control:",
                  style: TextStyle(
                      color: Colors.red[700],
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10.0, 0.0, 3.0, 0.0),
              child: RichText(
                text: TextSpan(
                  text: "Tolerance to aphids: good.",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10.0, 20.0, 12.0, 2.0),
              child: RichText(
                text: TextSpan(
                  text: "Disease:",
                  style: TextStyle(
                      color: Colors.red[700],
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10.0, 0.0, 3.0, 0.0),
              child: RichText(
                text: TextSpan(
                  text: "Club Root Tolerance: good.",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10.0, 0.0, 3.0, 0.0),
              child: RichText(
                text: TextSpan(
                  text: "Dry Rot Tolerance: good.",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10.0, 0.0, 3.0, 0.0),
              child: RichText(
                text: TextSpan(
                  text: "Mildew Resistance: good.",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10.0, 0.0, 3.0, 0.0),
              child: RichText(
                text: TextSpan(
                  text: "Ramularia Resistance: good.",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10.0, 0.0, 3.0, 0.0),
              child: RichText(
                text: TextSpan(
                  text: "Rhizomania Resistance: good.",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10.0, 20.0, 12.0, 2.0),
              child: RichText(
                text: TextSpan(
                  text: "Animal Safety:",
                  style: TextStyle(
                      color: Colors.red[700],
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10.0, 0.0, 3.0, 0.0),
              child: RichText(
                text: TextSpan(
                  text:
                      "Suitable for grazing in situ with deer, dairy, beef or sheep.",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            Container(
              child: Image.asset('assets/deercowbeefsheep.png'),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(60.0, 2.0, 60.0, 0.0),
              child: ElevatedButton.icon(
                onPressed: _makingWebCall,
                icon: Icon(Icons.search_sharp),
                label: Text('seek more on Geronimo'),
                style: ElevatedButton.styleFrom(
                    primary: Colors.grey[500],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
