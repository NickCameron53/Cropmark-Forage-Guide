import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';
import 'main.dart';
import 'matrixfe.dart';
import 'ultraar1.dart';
import 'raidernea.dart';
import 'avatarnea.dart';
import 'kai.dart';
import 'barrieru2.dart';
import 'kainui.dart';
import 'vision.dart';
import 'matrixnil.dart';
import 'ultranil.dart';
import 'raidernil.dart';

class perennialgrass extends StatelessWidget {
  final String region, representative, headshot, phonenum;


  _makingPhoneCall() async {
    if (await canLaunch(phonenum)) {
      await launch(phonenum);
    } else {
      throw 'Could not launch $phonenum';
    }
  }
  perennialgrass({Key key, @required
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
    case 1: if(region != "Lower South Island")
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ultraar1()),
      );
    else Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ultranil()),
      );
      break;
    case 2: if(region != "Lower South Island")
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => matrixfe()),
      );
    else Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => matrixnil()),
      );
      break;
    case 3: if(region != "Lower South Island")
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => raidernea()),
      );
    else Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => raidernil()),
      );

      break;
    case 4:
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => avatarnea()),
      );
      break;
    case 5:
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => kai()),
      );
      break;
    case 6:
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => barrieru2()),
      );
      break;
    case 7:
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => kainui()),
      );
      break;
    case 8:
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => vision()),
      );
      break;
  }
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Perennial grass"),
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
                  'Ultra perennial ryegrass',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              PopupMenuDivider(),
              PopupMenuItem<int>(
                value: 2,
                child: Text(
                  'Matrix perennial ryegrass',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              PopupMenuDivider(),
              PopupMenuItem<int>(
                value: 3,
                child: Text(
                  'Raider perennial ryegrass',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              PopupMenuDivider(),
              PopupMenuItem<int>(
                value: 4,
                child: Text(
                  'Avatar perennial ryegrass',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              PopupMenuDivider(),
              PopupMenuItem<int>(
                value: 5,
                child: Text(
                  'Kai perennial ryegrass',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              PopupMenuDivider(),
              PopupMenuItem<int>(
                value: 6,
                child: Text(
                  'Barrier festulolium grass',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              PopupMenuDivider(),
              PopupMenuItem<int>(
                value: 7,
                child: Text(
                  'Kainui cocksfoot',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              PopupMenuDivider(),
              PopupMenuItem<int>(
                value: 8,
                child: Text(
                  'Vision cocksfoot',
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
                icon: Image.asset(headshot),
                label: Text("call $representative"),
                style: ElevatedButton.styleFrom(
                  primary: Colors.grey[500],
                  side: BorderSide(width: 2.0,color: Colors.grey[500]),
                ), ),
            ),

            Container(
              padding: EdgeInsets.fromLTRB(10.0, 40.0, 12.0, 2.0),
              child: RichText(
                text: TextSpan(
                  text: "Diploid perennial ryegrass:",
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
                  "Diploids are generally sown at 18 to 20 kg/ha alone or 8 to 15 kg/ha in a mixture. They tolerate harder grazing management than tetraploids, and need less moisture (minimum 550mm p.a.) to perform well.",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            Container(
              child: Image.asset('assets/diploidlp.png'),
            ),

        //use feral endophyte varieties except for the lower S.I.
        if (region != "Lower South Island") ...[
            Container(
              child: Align(
                child: ElevatedButton(
                    child: Text('Ultra'),
                    onPressed: () {
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ultraar1()),
                      );}),
              ),
            ),

            Container(
              child: Align(
                child: ElevatedButton(
                    child: Text('Matrix'),
                    onPressed: () {
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => matrixfe()),
                      );}),
              ),
            ),

            Container(
              child: Align(
                child: ElevatedButton(
                    child: Text('Raider'),
                    onPressed: () {
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => raidernea()),
                      );}),
              ),
            ),
],

if (region == "Lower South Island") ...[
            Container(
              child: Align(
                child: ElevatedButton(
                    child: Text('Ultra'),
                    onPressed: () {
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ultranil()),
                      );}),
              ),
            ),

            Container(
              child: Align(
                child: ElevatedButton(
                    child: Text('Matrix'),
                    onPressed: () {
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => matrixnil()),
                      );}),
              ),
            ),

            Container(
              child: Align(
                child: ElevatedButton(
                    child: Text('Raider'),
                    onPressed: () {
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => raidernil()),
                      );}),
              ),
            ),
],

            Container(
              padding: EdgeInsets.fromLTRB(10.0, 40.0, 12.0, 2.0),
              child: RichText(
                text: TextSpan(
                  text: "Tetraploid perennial ryegrass:",
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
                  "Tetraploids have larger seeds than diploids and require a higher sowing rate of 25 to 35 kg/ha alone or 15 to 20 kg/ha in a mixture. They also require more careful grazing management to prevent overgrazing, and may also require higher fertility and adequate moisture (minimum 650mm p.a.) to perform well.",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ),
            ),

            Container(
              child: Align(
                child: ElevatedButton(
                    child: Text('Avatar'),
                    onPressed: () {
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => avatarnea()),
                      );}),
              ),
            ),

            Container(
              child: Align(
                child: ElevatedButton(
                    child: Text('Kai'),
                    onPressed: () {
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => kai()),
                      );}),
              ),
            ),


            Container(
              padding: EdgeInsets.fromLTRB(10.0, 40.0, 12.0, 2.0),
              child: RichText(
                text: TextSpan(
                  text: "Festulolium grass:",
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
                  "Festuloliums are crosses between Lolium and Festuca species incorporating the useful endophytes and root systems of Fescues with the winter activity and higher yields of the Lolium species. Sow at 25 to 28kg/hectare along  with 3 to 4kgs of clover, plus 2 to 4kgs of herbs (chicory and/or plantain) if desired.",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            Container(
              child: Image.asset('assets/barrierpic.png'),
            ),
            Container(
              child: Align(
                child: ElevatedButton(
                    child: Text('Barrier'),
                    onPressed: () {
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => barrieru2()),
                      );}),
              ),
            ),

            Container(
              padding: EdgeInsets.fromLTRB(10.0, 40.0, 12.0, 2.0),
              child: RichText(
                text: TextSpan(
                  text: "Cocksfoot:",
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
                  "A slower establishing, productive, drought tolerant perennial grass species which grows strongly in summer. Cocksfoot is best used in drier, moderate fertility and free draining soils. Cocksfoot once established resists pasture pest attack. Its forage quality is not as good as perennial ryegrass and the species requires grazing to prevent excessive seed head development during spring. Best sown when soil temperatures are warm. Upright forms of Cocksfoot may be mixed with perennial ryegrass and phalaris. Lower seeding rates of the prostrate forms should be considered if used in mixes.",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            Container(
              child: Image.asset('assets/cocksfootpic.png'),
            ),
            Container(
              child: Align(
                child: ElevatedButton(
                    child: Text('Kainui'),
                    onPressed: () {
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => kainui()),
                      );}),
              ),
            ),

            Container(
              child: Align(
                child: ElevatedButton(
                    child: Text('Vision'),
                    onPressed: () {
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => vision()),
                      );}),
              ),
            ),

          ],
        ),
      ),
    );
  }
}