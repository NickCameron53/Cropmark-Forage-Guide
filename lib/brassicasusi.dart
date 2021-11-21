import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';
import 'main.dart';
import 'proteor.dart';
import 'pillar.dart';
import 'marco.dart';
import 'coleor.dart';

_makingPhoneCall() async {
  const url = 'tel:0275556813';
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
        MaterialPageRoute(builder: (context) => coleor()),
      );
      break;
    case 2:
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => proteor()),
      );
      break;
    case 3:
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => pillar()),
      );
      break;
    case 4:
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => marco()),
      );
      break;
  }
}

class brassicasusi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Upper S.I. brassicas'),
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
                  'Coleor kale',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              PopupMenuDivider(),
              PopupMenuItem<int>(
                value: 2,
                child: Text(
                  'Proteor kale',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              PopupMenuDivider(),
              PopupMenuItem<int>(
                value: 3,
                child: Text(
                  'Pillar rape',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              PopupMenuDivider(),
              PopupMenuItem<int>(
                value: 4,
                child: Text(
                  'Marco turnip',
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
                label: Text('call Liam Martin'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.grey[500],
                    side: BorderSide(width: 2.0,color: Colors.grey[500]),
                  )),
            ),

            Container(
              padding: EdgeInsets.fromLTRB(10.0, 40.0, 12.0, 2.0),
              child: RichText(
                text: TextSpan(
                  text: "Kale:",
                  style: TextStyle(
                      color: Colors.red[700],
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10.0, 5.0, 5.0, 5.0),
              child: RichText(
                text: TextSpan(
                  text:
                  "Also known as Chou Moellier, kales are winter active and mainly used as a winter feed yielding up to 18t DM/ha.",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10.0, 5.0, 5.0, 5.0),
              child: RichText(
                text: TextSpan(
                  text:
                  "Stem types are classed as medium, intermediate and giant with medium types being the shortest and giant types the tallest.",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10.0, 5.0, 5.0, 5.0),
              child: RichText(
                text: TextSpan(
                  text:
                  "They are generally resistant to aphid, club root and dry rot.",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10.0, 5.0, 5.0, 5.0),
              child: RichText(
                text: TextSpan(
                  text:
                  "Kales require high soil fertility and good soil moisture for high yield although they can withstand moisture stress if sown early. Sow in spring for feeding over winter. Kales can be mixed with swedes in which case the sowing rate should be reduced to 2 kg/ha. Higher sowing rates lead to thinner and more palatable stems.",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10.0, 5.0, 5.0, 5.0),
              child: RichText(
                text: TextSpan(
                  text:
                  "Kales should be strip fed to reduce wastage, taking 150 to 220 days to reach maturity.  Suitable for cattle, sheep, deer, but the giant cultivars are best used only for cattle. Grazing must be light in late summer if re-growth is required. Hay or pasture run-off will improve the nutritional balance of stock grazing kale. To reduce risk of SMCO toxicity avoid the use of sulphate fertiliser, particularly where soil sulphate levels are high.",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            Container(
              child: Image.asset('assets/kalepic.png'),
            ),


            Container(
              padding: EdgeInsets.fromLTRB(80.0, 3.0, 80.0, 3.0),
              child: ElevatedButton(
                  child: Text('Coleor'),
                  onPressed: () {
                    Navigator.push(context,MaterialPageRoute(
                        builder: (context) => coleor()),
                    );}),
            ),

            Container(
              padding: EdgeInsets.fromLTRB(80.0, 3.0, 80.0, 3.0),
              child: ElevatedButton(
                  child: Text('Proteor'),
                  onPressed: () {
                    Navigator.push(context,MaterialPageRoute(
                        builder: (context) => proteor()),
                    );}),
            ),


            Container(
              padding: EdgeInsets.fromLTRB(10.0, 40.0, 12.0, 2.0),
              child: RichText(
                text: TextSpan(
                  text: "Rape:",
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
                  "Forage rape may be sown alone or in mixtures as a specialist summer to winter feed. Rape is often included in pasture mixes and sown at 1-2 kg/ha. It can be sown from early spring to late summer and is generally ready to graze 12-16 weeks after sowing.",
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
                  "Rape can be grown on lower soil fertility than most other brassicas and with good soil fertility and moisture, yields of 12t DM/ha can be achieved.",
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
                  "Aphids need to be controlled if using susceptible cultivars. Do not grow in clubroot infected areas unless resistant cultivars are used.",
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
                  "Some care is required when grazing rape and it is best to allow the crop to fully mature before grazing and also gradually increase rape as their diet. Do not allow hungry livestock that were previously on pasture to adlib feed on rape, as problems such as nitrate poisoning and rape scald can occur.",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            Container(
              child: Image.asset('assets/rapepic.png'),
            ),

            Container(
              padding: EdgeInsets.fromLTRB(80.0, 3.0, 80.0, 3.0),
              child: ElevatedButton(
                  child: Text('Pillar'),
                  onPressed: () {
                    Navigator.push(context,MaterialPageRoute(
                        builder: (context) => pillar()),
                    );}),
            ),

            Container(
              padding: EdgeInsets.fromLTRB(10.0, 40.0, 12.0, 2.0),
              child: RichText(
                text: TextSpan(
                  text: "Turnip:",
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
                  "Turnip varieties vary in yield potential, ploidy level, maturity, size of bulb, bulb keeping quality, and these factors considerably influence the choice and intended usage.",
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
                  "Spring and early summer sowings produce summer feed, whilst later sowings through to early march produce autumn-winter feed with specific cultivars for each sowing time. Turnips may be sown alone or in mixtures with rape or grasses.",
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
                  "Turnips are generally susceptible to aphids, clubroot, dry rot, and virus.",
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
                  "Yields tend to increase with later maturity types. Turnip crop yields can vary from 8-15t DM/ha. A highly digestible turnip bulb provides a good source of sugars which, combined with a high protein concentration in the turnip tops, stimulates good rumen function.",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            Container(
              child: Image.asset('assets/turnippic.png'),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(80.0, 3.0, 80.0, 3.0),
              child: ElevatedButton(
                  child: Text('Marco'),
                  onPressed: () {
                    Navigator.push(context,MaterialPageRoute(
                        builder: (context) => marco()),
                    );}),
            ),
          ],
        ),
      ),
    );
  }
}
