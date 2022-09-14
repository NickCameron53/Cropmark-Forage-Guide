import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'salesenquiry.dart';
import 'pasturepacks.dart';
import 'perennialgrass.dart';
import 'hybridryegrass.dart';
import 'italianryegrass.dart';
import 'annualgrass.dart';
import 'legumes.dart';
import 'herbs.dart';
import 'brassicas.dart';
import 'fodderbeet.dart';




class forageregion extends StatelessWidget {
  final String region, representative, headshot, phonenum ;


  _makingPhoneCall() async {
    if (await canLaunch(phonenum)) {
      await launch(phonenum);
    } else {
      throw 'Could not launch $phonenum';
    }
  }

  forageregion({Key key, @required
  this.region,
    this.representative,
    this.headshot,
    this.phonenum,

  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(region),
        centerTitle: true,
        backgroundColor: Colors.red[700],
      ),
      body: Center(

        child: ListView (shrinkWrap: true,
          padding: EdgeInsets.all(0),

          children: <Widget> [
            Container(padding: EdgeInsets.fromLTRB(80.0, 5.0, 80.0, 5.0),

              child: ElevatedButton.icon(
                onPressed:_makingPhoneCall,
                icon: Image.asset(headshot),
                label: Text("call $representative"),
                style: ElevatedButton.styleFrom(
                  primary: Colors.grey[500],
                  side: BorderSide(width: 2.0,color: Colors.grey[500]),),
              ),
            ),


              Container(
                padding: EdgeInsets.fromLTRB(80.0, 5.0, 80.0, 5.0),
                child: ElevatedButton
                  (child:Text('Sales Enquiry'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.grey[500],
                    side: BorderSide(width: 2.0,color: Colors.grey[500]),
                  ),
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Enquiry(
                          region: '$region',
                          )),
                    );},
                ),
              ),

              Container(
                padding: EdgeInsets.fromLTRB(80.0, 3.0, 80.0, 3.0),
                child: ElevatedButton(
                    child: Text('Pasture Packs'),
                    onPressed: () {
                      Navigator.push(context,MaterialPageRoute(
                          builder: (context) => pasturepacks(
                            region: '$region',
                         representative: '$representative',
                         headshot: '$headshot',
                         phonenum: '$phonenum',

                          )),
                      );}),
              ),

              Container(
                padding: EdgeInsets.fromLTRB(80.0, 3.0, 80.0, 3.0),
                child: ElevatedButton(
                    child: Text('Perennial grass'),
                    onPressed: () {
                      Navigator.push(context,MaterialPageRoute(
                          builder: (context) => perennialgrass(
                            region: '$region',
                            representative: '$representative',
                            headshot: '$headshot',
                            phonenum: '$phonenum',
                          )),
                      );}),
              ),

              Container(
                padding: EdgeInsets.fromLTRB(80.0, 3.0, 80.0, 3.0),
                child: ElevatedButton(
                    child: Text('Hybrid ryegrass'),
                    onPressed: () {
                      Navigator.push(context,MaterialPageRoute(
                          builder: (context) => hybridryegrass(
                            region: '$region',
                            representative: '$representative',
                            headshot: '$headshot',
                            phonenum: '$phonenum',
                          )),
                      );}),
              ),


              Container(
                padding: EdgeInsets.fromLTRB(80.0, 3.0, 80.0, 3.0),
                child: ElevatedButton(
                    child: Text('Italian ryegrass'),
                    onPressed: () {
                      Navigator.push(context,MaterialPageRoute(
                          builder: (context) => italianryegrass(
                            region: '$region',
                            representative: '$representative',
                            headshot: '$headshot',
                            phonenum: '$phonenum',
                          )),
                      );}),
              ),

              Container(
                padding: EdgeInsets.fromLTRB(80.0, 3.0, 80.0, 3.0),
                child: ElevatedButton(
                    child: Text('Annual ryegrass'),
                    onPressed: () {
                      Navigator.push(context,MaterialPageRoute(
                          builder: (context) => annualgrass(
                            region: '$region',
                            representative: '$representative',
                            headshot: '$headshot',
                            phonenum: '$phonenum',
                          )),
                      );}),
              ),

              Container(
                padding: EdgeInsets.fromLTRB(80.0, 3.0, 80.0, 3.0),
                child: ElevatedButton(
                    child: Text('Legumes'),
                    onPressed: () {
                      Navigator.push(context,MaterialPageRoute(
                          builder: (context) => legumes(
                            region: '$region',
                            representative: '$representative',
                            headshot: '$headshot',
                            phonenum: '$phonenum',
                          )),
                      );}),
              ),

              Container(
                padding: EdgeInsets.fromLTRB(80.0, 3.0, 80.0, 3.0),
                child: ElevatedButton(
                    child: Text('Herbs'),
                    onPressed: () {
                      Navigator.push(context,MaterialPageRoute(
                          builder: (context) => herbs(
                            region: '$region',
                            representative: '$representative',
                            headshot: '$headshot',
                            phonenum: '$phonenum',
                          )),
                      );}),
              ),

              Container(
                padding: EdgeInsets.fromLTRB(80.0, 3.0, 80.0, 3.0),
                child: ElevatedButton(
                    child: Text('Brassicas'),
                    onPressed: () {
                      Navigator.push(context,MaterialPageRoute(
                          builder: (context) => brassicas(
                            region: '$region',
                            representative: '$representative',
                            headshot: '$headshot',
                            phonenum: '$phonenum',
                          )),
                      );}),
              ),

              Container(
                padding: EdgeInsets.fromLTRB(80.0, 3.0, 80.0, 3.0),
                child: ElevatedButton(
                    child: Text('Fodder Beet'),
                    onPressed: () {
                      Navigator.push(context,MaterialPageRoute(
                          builder: (context) => fodderbeet(
                            region: '$region',
                            representative: '$representative',
                            headshot: '$headshot',
                            phonenum: '$phonenum',
                          )),
                      );}),
              ),

            Container(child:Image.asset('assets/cropmarklogo.png'),
            ),

            Container(child:Image.asset('assets/cmsnzowned.png'),
            ),
          ],
        ),
      ),
    );
  }}

