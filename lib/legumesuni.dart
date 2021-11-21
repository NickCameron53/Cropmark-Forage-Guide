import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';
import 'main.dart';
import 'mantra.dart';
import 'demand.dart';
import 'reaper.dart';
import 'galaxiemax.dart';

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
        MaterialPageRoute(builder: (context) => mantra()),
      );
      break;
    case 2:
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => demand()),
      );
      break;
    case 3:
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => reaper()),
      );
      break;
    case 4:
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => galaxiemax()),
      );
      break;
  }
}

class legumesuni extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Upper N.I. legumes'),
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
                  'Mantra white clover',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              PopupMenuDivider(),
              PopupMenuItem<int>(
                value: 2,
                child: Text(
                  'Demand white clover',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              PopupMenuDivider(),
              PopupMenuItem<int>(
                value: 3,
                child: Text(
                  'Reaper red clover',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              PopupMenuDivider(),
              PopupMenuItem<int>(
                value: 4,
                child: Text(
                  'Galaxie Max lucerne',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              PopupMenuDivider(
                height: 20,
              ),
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
                  text: "White Clover:",
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
                  "A perennial legume used in pasture mixes to fix nitrogen and to provide high quality forage. Best used on moderate to highly fertile soils. Spreads predominantly by stolons and by producing roots at the stolon nodes to form new plants. Regeneration by seed under lax grazing also occurs. Lax infrequent grazing is recommended for the large leaved types and close frequent grazing for the small leaved types. White clover is susceptible to shading during development so do not let newly sown pastures become too rank. If clover root weevil is a problem, consider using higher sowing rates and additionally add chicory and red clover to the mix. Consider also mixing large leaved with medium leaved cultivars to the mix, or medium and small leaved cultivars where this management is required.",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            Container(
              child: Image.asset('assets/whitecloverpic.png'),
            ),

            Container(
              padding: EdgeInsets.fromLTRB(80.0, 3.0, 80.0, 3.0),
              child: ElevatedButton(
                  child: Text('Mantra'),
                  onPressed: () {
                    Navigator.push(context,MaterialPageRoute(
                        builder: (context) => mantra()),
                    );}),
            ),

            Container(
              padding: EdgeInsets.fromLTRB(80.0, 3.0, 80.0, 3.0),
              child: ElevatedButton(
                  child: Text('Demand'),
                  onPressed: () {
                    Navigator.push(context,MaterialPageRoute(
                        builder: (context) => demand()),
                    );}),
            ),

            Container(
              padding: EdgeInsets.fromLTRB(10.0, 40.0, 12.0, 2.0),
              child: RichText(
                text: TextSpan(
                  text: "Red Clover:",
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
                  "A short-lived, tap-rooted legume used in pasture mixes to provide high quality summer forage. Flowers later than white clover. May persist 2 to 4 years in mixed pastures and up to 5 years under favourable conditions. Performs best under low stocking rates, long summer rotations, or hay production. Red clovers contain phyto-oestrogens (formononetin) so should not be fed as a pure sward to breeding stock immediately prior to and during mating. The phyto-oestrogens help the plant tolerate insects (eg grass grub, black beetle) and leaf disease (eg pepper spot) attack. Highly preferred by deer. Tetraploid types usually have larger leaves but larger florets causing difficulty with pollination, leading to poorer seed set and poor re-establishment by seed. Spreading types need lax grazing to allow development of daughter plants from horizontal stems. Mixes well with specialist herbs such as Chico chicory.",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            Container(
              child: Image.asset('assets/redcloverpic.png'),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(80.0, 3.0, 80.0, 3.0),
              child: ElevatedButton(
                  child: Text('Reaper'),
                  onPressed: () {
                    Navigator.push(context,MaterialPageRoute(
                        builder: (context) => reaper()),
                    );}),
            ),


            Container(
              padding: EdgeInsets.fromLTRB(10.0, 40.0, 12.0, 2.0),
              child: RichText(
                text: TextSpan(
                  text: "Lucerne:",
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
                  "Lucerne is an erect growing, tap rooted perennial, generally grown in pure stands for sheep, cattle, horse, and deer grazing or hay production. Prefers well drained neutral soils of pH 5.6 or greater, and is intolerant of water-logging. Winter active varieties should be used in warmer climates and can produce 20% of their growth during winter months but tend to have a shorter stand life of 3-4 years. Semi-dormant cultivars produce 5-10% of their growth in the winter and under good management may have a stand life of 5-7 years or more. Winter dormant cultivars produce little or no winter growth but tend to have the longest stand life with a lower crown making them more suitable to grazing. Avoid sowing lucerne into areas with an immediate pre-history of red clover, chicory, potatoes or onions as these crops can act as a host crop to Sclerotinia (stem rot). Ideal sowing depth should be 6-12mm at 12-18 kg/ha using seed freshly inoculated with Group A Rhizobium inoculum.",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            Container(
              child: Image.asset('assets/galaxiemaxpic.png'),
            ),


            Container(
              padding: EdgeInsets.fromLTRB(80.0, 3.0, 80.0, 3.0),
              child: ElevatedButton(
                  child: Text('Galaxie Max'),
                  onPressed: () {
                    Navigator.push(context,MaterialPageRoute(
                        builder: (context) => galaxiemax()),
                    );}),
            ),

          ],
        ),
      ),
    );
  }
}
