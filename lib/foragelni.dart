import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'pasturepacks.dart';
import 'perennialgrasslni.dart';
import 'shorttermgrasslni.dart';
import 'annualgrasslni.dart';
import 'legumeslni.dart';
import 'herbslni.dart';
import 'brassicaslni.dart';
import 'fodderbeetlni.dart';
import 'salesenquirylni.dart';

_makingPhoneCall() async {
  const url = 'tel:0272301783';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }}

class foragelni extends StatelessWidget{
  @override
  Widget build(BuildContext context){

    return Scaffold(

      backgroundColor: Colors.white,
      appBar: AppBar(

        title: Text('Lower North Island'),
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
                icon: Icon(Icons.add_ic_call_sharp),
                label: Text('call Matt Kidby'),
                style: ElevatedButton.styleFrom(
                    primary: Colors.grey[500],
                  side: BorderSide(width: 2.0,color: Colors.grey[500]),),
              ),
            ),

            Container(
              padding: EdgeInsets.fromLTRB(80.0, 5.0, 80.0, 5.0),
              child: ElevatedButton
                (child:Text('sales enquiry'),
                style: ElevatedButton.styleFrom(
                    primary: Colors.grey[500],
                  side: BorderSide(width: 2.0,color: Colors.grey[500]),
                  ),
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => EnquiryLNI()),
                  );},),
            ),

            Container(
              padding: EdgeInsets.fromLTRB(80.0, 3.0, 80.0, 3.0),
              child: ElevatedButton(
                  child: Text('Pasture Packs'),
                   onPressed: () {
                   Navigator.push(context,MaterialPageRoute(
                            builder: (context) => pasturepacks()),
                      );}),
            ),

            Container(
              padding: EdgeInsets.fromLTRB(80.0, 3.0, 80.0, 3.0),
              child: ElevatedButton(
                  child: Text('Perennial grass'),
                  onPressed: () {
                    Navigator.push(context,MaterialPageRoute(
                        builder: (context) => perennialgrasslni()),
                    );}),
            ),

            Container(
              padding: EdgeInsets.fromLTRB(80.0, 3.0, 80.0, 3.0),
              child: ElevatedButton(
                  child: Text('Italian ryegrass'),
                  onPressed: () {
                    Navigator.push(context,MaterialPageRoute(
                        builder: (context) => shorttermgrasslni()),
                    );}),
            ),

            Container(
              padding: EdgeInsets.fromLTRB(80.0, 3.0, 80.0, 3.0),
              child: ElevatedButton(
                  child: Text('Annual ryegrass'),
                  onPressed: () {
                    Navigator.push(context,MaterialPageRoute(
                        builder: (context) => annualgrasslni()),
                    );}),
            ),

            Container(
              padding: EdgeInsets.fromLTRB(80.0, 3.0, 80.0, 3.0),
              child: ElevatedButton(
                  child: Text('Legumes'),
                  onPressed: () {
                    Navigator.push(context,MaterialPageRoute(
                        builder: (context) => legumeslni()),
                    );}),
            ),

            Container(
              padding: EdgeInsets.fromLTRB(80.0, 3.0, 80.0, 3.0),
              child: ElevatedButton(
                  child: Text('Herbs'),
                  onPressed: () {
                    Navigator.push(context,MaterialPageRoute(
                        builder: (context) => herbslni()),
                    );}),
            ),

            Container(
              padding: EdgeInsets.fromLTRB(80.0, 3.0, 80.0, 3.0),
              child: ElevatedButton(
                  child: Text('Brassicas'),
                  onPressed: () {
                    Navigator.push(context,MaterialPageRoute(
                        builder: (context) => brassicaslni()),
                    );}),
            ),

            Container(
              padding: EdgeInsets.fromLTRB(80.0, 3.0, 80.0, 3.0),
              child: ElevatedButton(
                  child: Text('Fodder Beet'),
                  onPressed: () {
                    Navigator.push(context,MaterialPageRoute(
                        builder: (context) => fodderbeetlni()),
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