import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';
import 'main.dart';

_makingWebCall() async {
  const url =
      'https://www.cropmarkseeds.com/Forage-Products-from-Cropmark-Seeds/Avatar-Perennial-Ryegrass';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

class avatarnea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          title: Text('Avatar'),
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
            Image.asset('assets/avatarnea.png'),
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
                      "A new cultivar with strong persistence of yield in the Upper North Island. A tetraploid with high nutritive value and an excellent choice for use in mixed swards or in a Diploid and Tetraploid mixture. Performs best under rotational grazing.",
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
              child: Image.asset('assets/avatardata.png'),
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
                      "Late (+80 days from 1st September). Relative to Nui +22 days. High Quality with low aftermath heading and high Metabolisable energy.",
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
                  text:
                      "Very high Winter and Early Spring feed production relative to other cultivars.",
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
                  text: "5+ years",
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
                  text:
                      "NEA. Produces animal safe Peramine, very low Lolitrem B, low-medium Ergovaline for broad spectrum insect control while maintaining livestock performance.",
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
                  text: "Argentine stem weevil: very good.",
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
                  text: "Pasture mealy bug: very good.",
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
                  text: "Black beetle adult: good.",
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
                  text: "Root aphid: moderate.",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            Container(
              child: Image.asset('assets/neainsect.png'),
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
                  text: "Dairy and Beef freedom from staggers: very good.",
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
                  text: "Dairy and Beef production: very good.",
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
                  text: "Sheep freedom from staggers: very good.",
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
                  text: "Sheep production: very good.",
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
                  text: "Not recommended for horses or deer.",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            Container(
              child: Image.asset('assets/neaanimal.png'),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(60.0, 2.0, 60.0, 0.0),
              child: ElevatedButton.icon(
                onPressed: _makingWebCall,
                icon: Icon(Icons.search_sharp),
                label: Text('seek more on Avatar'),
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
