import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';
import 'main.dart';

_makingWebCall() async {
  const url =
      'https://www.cropmarkseeds.com/Forage-Products-from-Cropmark-Seeds/Blade-Italian-ryegrass';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

class blade extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          title: Text('Blade'),
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
            Image.asset('assets/blade.png'),
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
                      "Blade Italian ryegrass is an exciting new broad leafed, densely tillered diploid Italian ryegrass, bred for fast establishment and very strong year-round growth with high winter, spring yields to help minimise feed deficits at that time of the year. Very good disease resistance.",
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
                  text: "Performance:",
                  style: TextStyle(
                      color: Colors.red[700],
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              child: Image.asset('assets/bladedata.png'),
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
                  text:
                      "Late (+82 days from 1st September). Relative to Nui +24 days. High Quality and high Metabolisable energy",
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
                  text: "Growth Peaks:",
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
                  text: "Winter & Spring",
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
                  text: "Persistence:",
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
                  text: "18 to 24+ months subject to climate",
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
                  text: "Endophyte Strain:",
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
                  text: "nil",
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
                  text: "nil",
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
                      "Suitable for all grazing animals including dairy, beef, sheep, deer, horses, goats and alpacas",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            Container(
              child: Image.asset('assets/ar1animal.png'),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(60.0, 2.0, 60.0, 0.0),
              child: ElevatedButton.icon(
                onPressed: _makingWebCall,
                icon: Icon(Icons.search_sharp),
                label: Text('seek more on Blade'),
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
