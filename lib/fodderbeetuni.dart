import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';
import 'main.dart';
import 'lactimo.dart';
import 'geronimo.dart';
import 'betimo.dart';
import 'laurena.dart';

_makingPhoneCall() async {
  const url = 'tel:0272354989';
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
        MaterialPageRoute(builder: (context) => geronimo()),
      );
      break;
    case 2:
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => lactimo()),
      );
      break;
    case 3:
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => betimo()),
      );
      break;
    case 4:
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => laurena()),
      );
      break;
  }
}

class fodderbeetuni extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Upper N.I. Fodder Beet'),
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
                  'Geronimo fodder beet',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              PopupMenuDivider(),
              PopupMenuItem<int>(
                value: 2,
                child: Text(
                  'Lactimo fodder beet',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              PopupMenuDivider(),

              PopupMenuItem<int>(
                value: 3,
                child: Text(
                  'Betimo fodder beet',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              PopupMenuDivider(),
              PopupMenuItem<int>(
                value: 4,
                child: Text(
                  'Laurena fodder beet',
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
                label: Text('call James Bryan'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.grey[500],
                    side: BorderSide(width: 2.0,color: Colors.grey[500]),
                  )),
            ),

            Container(
              padding: EdgeInsets.fromLTRB(10.0, 40.0, 12.0, 2.0),
              child: RichText(
                text: TextSpan(
                  text: "Fodder Beet:",
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
                  "Fodder Beet (Beta vulgaris) is a cross between mangels and sugar beet, aiming to combine the ease of harvest of mangels (syn. mangold) with the high DM and high sugar levels of sugar beet.",
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
                  "The basic distinction between mangels and fodder beet is one of dry matter content; in general cultivars with less than 13 percent dry matter are called mangels and those over this value fodder beet.",
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
                  "It is a long growing-season crop which requires a high level of care in establishment.",
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
                  "Compared to brassicas, Fodder Beet is not as susceptible to clubroot and dry rot and has a lower nitrogen requirement, and once established is highly palatable to animals.",
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
                  "Fodder Beet requires a weed free, firm fine seedbed that is well drained with no sub-soil compaction and a soil pH greater than 6.0. Sowing is best in late September to mid November (soil temp 5 degrees Celsius, after the last frosts).",
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
                  "Sowing rate is recommended at 80,000 plants per hectare through a precision drill to a depth of 2-3cm preferably with a 0.5m row spacing. If seed is sown using a conventional drill, then a higher seeding rate (120,000 seeds per hectare) is needed to reduce gaps within the crop.",
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
                  "Seed coat quality and germination percentage need to be high to obtain a good sowing result.",
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
                  "Fodder Beet is a demanding crop but if done properly can be extremely profitable. The seed supplied may be monogerm or multigerm. Multigerm seed is several seeds produced in a cluster which is usually mechanically separated usually using a rubbing apparatus. This process may not guarantee all seeds will be singular, and rubbing can lead to slightly lower germination. Plant breeding efforts have resulted in selection for genetically produced monogerm seeds but these will be more expensive to buy.",
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
                  "Weed control is very important and pre-fallowing with cultivation and /or glyphosate is recommended. Post-emergent herbicides such as Pyramin (chloridazon), Nortron (ethofumesate), Betanal (phenmedipham + desmedipham), and Goltix (metamitron) are also recommended. Avoid sowing into paddocks which may have had a recent history of the following residual chemicals: Aminopyralid; Picloram; Oxyfluren; Chlorsulfuron; or Atrazine.",
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
              padding: EdgeInsets.fromLTRB(80.0, 3.0, 80.0, 3.0),
              child: ElevatedButton(
                  child: Text('Geronimo'),
                  onPressed: () {
                    Navigator.push(context,MaterialPageRoute(
                        builder: (context) => geronimo()),
                    );}),
            ),


            Container(
              padding: EdgeInsets.fromLTRB(80.0, 3.0, 80.0, 3.0),
              child: ElevatedButton(
                  child: Text('Lactimo'),
                  onPressed: () {
                    Navigator.push(context,MaterialPageRoute(
                        builder: (context) => lactimo()),
                    );}),
            ),

            Container(
              padding: EdgeInsets.fromLTRB(80.0, 3.0, 80.0, 3.0),
              child: ElevatedButton(
                  child: Text('Betimo'),
                  onPressed: () {
                    Navigator.push(context,MaterialPageRoute(
                        builder: (context) => betimo()),
                    );}),
            ),

            Container(
              padding: EdgeInsets.fromLTRB(80.0, 3.0, 80.0, 3.0),
              child: ElevatedButton(
                  child: Text('Laurena'),
                  onPressed: () {
                    Navigator.push(context,MaterialPageRoute(
                        builder: (context) => laurena()),
                    );}),
            ),


          ],
        ),
      ),
    );
  }
}
