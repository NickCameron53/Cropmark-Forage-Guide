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

            if (region == 'Upper North Island') ...[
              Container(
                padding: EdgeInsets.fromLTRB(80.0, 5.0, 80.0, 5.0),
                child: ElevatedButton
                  (child:Text('sales enquiry Upper N.I.'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.grey[500],
                    side: BorderSide(width: 2.0,color: Colors.grey[500]),
                  ),
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Enquiry(
                            region: 'Upper North Island',
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
                            region: 'Upper North Island',
                            representative: 'James Bryan',
                            headshot:'assets/James bryan headshot.png',
                            phonenum: 'tel:0272354989',
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
                            region: 'Upper North Island',
                            representative: 'James Bryan',
                            headshot:'assets/James bryan headshot.png',
                            phonenum: 'tel:0272354989',
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
                            region: 'Upper North Island',
                            representative: 'James Bryan',
                            headshot:'assets/James bryan headshot.png',
                            phonenum: 'tel:0272354989',
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
                            region: 'Upper North Island',
                            representative: 'James Bryan',
                            headshot:'assets/James bryan headshot.png',
                            phonenum: 'tel:0272354989',
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
                            region: 'Upper North Island',
                            representative: 'James Bryan',
                            headshot:'assets/James bryan headshot.png',
                            phonenum: 'tel:0272354989',
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
                            region: 'Upper North Island',
                            representative: 'James Bryan',
                            headshot:'assets/James bryan headshot.png',
                            phonenum: 'tel:0272354989',
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
                            region: 'Upper North Island',
                            representative: 'James Bryan',
                            headshot:'assets/James bryan headshot.png',
                            phonenum: 'tel:0272354989',
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
                            region: 'Upper North Island',
                            representative: 'James Bryan',
                            headshot:'assets/James bryan headshot.png',
                            phonenum: 'tel:0272354989',
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
                            region: 'Upper North Island',
                            representative: 'James Bryan',
                            headshot:'assets/James bryan headshot.png',
                            phonenum: 'tel:0272354989',
                          )),
                      );}),
              ),
            ],


            if (region == 'Lower North Island') ...[
              Container(
                padding: EdgeInsets.fromLTRB(80.0, 5.0, 80.0, 5.0),
                child: ElevatedButton
                  (child:Text('sales enquiry Lower N.I.'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.grey[500],
                    side: BorderSide(width: 2.0,color: Colors.grey[500]),
                  ),
                  onPressed: ()

                  {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Enquiry(
                            region: 'Lower North Island',
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
                            region: 'Lower North Island',
                            representative: 'Matthew Kidby',
                            headshot:'assets/Matt kidby headshot.png',
                            phonenum: 'tel:0272301783',
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
                            region: 'Lower North Island',
                            representative: 'Matthew Kidby',
                            headshot:'assets/Matt kidby headshot.png',
                            phonenum: 'tel:0272301783',
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
                            region: 'Lower North Island',
                            representative: 'Matthew Kidby',
                            headshot:'assets/Matt kidby headshot.png',
                            phonenum: 'tel:0272301783',
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
                            region: 'Lower North Island',
                            representative: 'Matthew Kidby',
                            headshot:'assets/Matt kidby headshot.png',
                            phonenum: 'tel:0272301783',
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
                            region: 'Lower North Island',
                            representative: 'Matthew Kidby',
                            headshot:'assets/Matt kidby headshot.png',
                            phonenum: 'tel:0272301783',
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
                            region: 'Lower North Island',
                            representative: 'Matthew Kidby',
                            headshot:'assets/Matt kidby headshot.png',
                            phonenum: 'tel:0272301783',
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
                            region: 'Lower North Island',
                            representative: 'Matthew Kidby',
                            headshot:'assets/Matt kidby headshot.png',
                            phonenum: 'tel:0272301783',
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
                            region: 'Lower North Island',
                            representative: 'Matthew Kidby',
                            headshot:'assets/Matt kidby headshot.png',
                            phonenum: 'tel:0272301783',
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
                            region: 'Lower North Island',
                            representative: 'Matthew Kidby',
                            headshot:'assets/Matt kidby headshot.png',
                            phonenum: 'tel:0272301783',
                          )),
                      );}),
              ),
            ],

            if (region == 'Upper South Island') ...[
              Container(
                padding: EdgeInsets.fromLTRB(80.0, 5.0, 80.0, 5.0),
                child: ElevatedButton
                  (child:Text('sales enquiry Upper S.I.'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.grey[500],
                    side: BorderSide(width: 2.0,color: Colors.grey[500]),
                  ),
                  onPressed: ()

                  {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Enquiry(
                            region: 'Upper South Island',
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
                            region: 'Upper South Island',
                            representative: 'Liam Martin',
                            headshot:'assets/Liam headshot.png',
                            phonenum: 'tel:0275556813',
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
                            region: 'Upper South Island',
                            representative: 'Liam Martin',
                            headshot:'assets/Liam headshot.png',
                            phonenum: 'tel:0275556813',
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
                            region: 'Upper South Island',
                            representative: 'Liam Martin',
                            headshot:'assets/Liam headshot.png',
                            phonenum: 'tel:0275556813',
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
                            region: 'Upper South Island',
                            representative: 'Liam Martin',
                            headshot:'assets/Liam headshot.png',
                            phonenum: 'tel:0275556813',
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
                            region: 'Upper South Island',
                            representative: 'Liam Martin',
                            headshot:'assets/Liam headshot.png',
                            phonenum: 'tel:0275556813',
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
                            region: 'Upper South Island',
                            representative: 'Liam Martin',
                            headshot:'assets/Liam headshot.png',
                            phonenum: 'tel:0275556813',
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
                            region: 'Upper South Island',
                            representative: 'Liam Martin',
                            headshot:'assets/Liam headshot.png',
                            phonenum: 'tel:0275556813',
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
                            region: 'Upper South Island',
                            representative: 'Liam Martin',
                            headshot:'assets/Liam headshot.png',
                            phonenum: 'tel:0275556813',
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
                            region: 'Upper South Island',
                            representative: 'Liam Martin',
                            headshot:'assets/Liam headshot.png',
                            phonenum: 'tel:0275556813',
                          )),
                      );}),
              ),
            ],

            if (region == 'Lower South Island') ...[
              Container(
                padding: EdgeInsets.fromLTRB(80.0, 5.0, 80.0, 5.0),
                child: ElevatedButton
                  (child:Text('sales enquiry Lower S.I.'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.grey[500],
                    side: BorderSide(width: 2.0,color: Colors.grey[500]),
                  ),
                  onPressed: ()

                  {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Enquiry(
                            region: 'Lower South Island',
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
                          region: 'Lower South Island',
                          representative: 'Liam Martin',
                          headshot:'assets/Liam headshot.png',
                          phonenum: 'tel:0275556813',
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
                            region: 'Lower South Island',
                            representative: 'Liam Martin',
                            headshot:'assets/Liam headshot.png',
                            phonenum: 'tel:0275556813',
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
                            region: 'Lower South Island',
                            representative: 'Liam Martin',
                            headshot:'assets/Liam headshot.png',
                            phonenum: 'tel:0275556813',
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
                            region: 'Lower South Island',
                            representative: 'Liam Martin',
                            headshot:'assets/Liam headshot.png',
                            phonenum: 'tel:0275556813',
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
                            region: 'Lower South Island',
                            representative: 'Liam Martin',
                            headshot:'assets/Liam headshot.png',
                            phonenum: 'tel:0275556813',
                          )),
                      );}),
              ),

              Container(
                padding: EdgeInsets.fromLTRB(80.0, 3.0, 80.0, 3.0),
                child: ElevatedButton(
                    child: Text('Legumes'),
                    onPressed: () {
                      Navigator.push(context,MaterialPageRoute(
                          builder: (context) => legumes(region: 'Lower South Island',
                            representative: 'Liam Martin',
                            headshot:'assets/Liam headshot.png',
                            phonenum: 'tel:0275556813',)),
                      );}),
              ),

              Container(
                padding: EdgeInsets.fromLTRB(80.0, 3.0, 80.0, 3.0),
                child: ElevatedButton(
                    child: Text('Herbs'),
                    onPressed: () {
                      Navigator.push(context,MaterialPageRoute(
                          builder: (context) => herbs(
                            region: 'Lower South Island',
                            representative: 'Liam Martin',
                            headshot:'assets/Liam headshot.png',
                            phonenum: 'tel:0275556813',
                          )),
                      );}),
              ),

              Container(
                padding: EdgeInsets.fromLTRB(80.0, 3.0, 80.0, 3.0),
                child: ElevatedButton(
                    child: Text('Brassicas'),
                    onPressed: () {
                      Navigator.push(context,MaterialPageRoute(
                          builder: (context) => brassicas(region: 'Lower South Island',
                            representative: 'Liam Martin',
                            headshot:'assets/Liam headshot.png',
                            phonenum: 'tel:0275556813',)),
                      );}),
              ),

              Container(
                padding: EdgeInsets.fromLTRB(80.0, 3.0, 80.0, 3.0),
                child: ElevatedButton(
                    child: Text('Fodder Beet'),
                    onPressed: () {
                      Navigator.push(context,MaterialPageRoute(
                          builder: (context) => fodderbeet(region: 'Lower South Island',
                            representative: 'Liam Martin',
                            headshot:'assets/Liam headshot.png',
                            phonenum: 'tel:0275556813',)),
                      );}),
              ),],




            Container(child:Image.asset('assets/cropmarklogo.png'),
            ),

            Container(child:Image.asset('assets/cmsnzowned.png'),
            ),
          ],
        ),
      ),
    );
  }}

