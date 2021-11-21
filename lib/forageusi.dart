import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'pasturepacks.dart';
import 'perennialgrassusi.dart';
import 'shorttermgrassusi.dart';
import 'annualgrassusi.dart';
import 'legumesusi.dart';
import 'herbsusi.dart';
import 'brassicasusi.dart';
import 'fodderbeetusi.dart';
import 'salesenquiryusi.dart';

_makingPhoneCall() async {
  const url = 'tel:0275556813';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

class forageusi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Upper South Island'),
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
                label: Text('call Liam Martin'),
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
                        builder: (context) => EnquiryUSI()),
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
                        builder: (context) => perennialgrassusi()),
                    );}),
            ),

            Container(
              padding: EdgeInsets.fromLTRB(80.0, 3.0, 80.0, 3.0),
              child: ElevatedButton(
                  child: Text('Italian ryegrass'),
                  onPressed: () {
                    Navigator.push(context,MaterialPageRoute(
                        builder: (context) => shorttermgrassusi()),
                    );}),
            ),

            Container(
              padding: EdgeInsets.fromLTRB(80.0, 3.0, 80.0, 3.0),
              child: ElevatedButton(
                  child: Text('Annual ryegrass'),
                  onPressed: () {
                    Navigator.push(context,MaterialPageRoute(
                        builder: (context) => annualgrassusi()),
                    );}),
            ),

            Container(
              padding: EdgeInsets.fromLTRB(80.0, 3.0, 80.0, 3.0),
              child: ElevatedButton(
                  child: Text('Legumes'),
                  onPressed: () {
                    Navigator.push(context,MaterialPageRoute(
                        builder: (context) => legumesusi()),
                    );}),
            ),

            Container(
              padding: EdgeInsets.fromLTRB(80.0, 3.0, 80.0, 3.0),
              child: ElevatedButton(
                  child: Text('Herbs'),
                  onPressed: () {
                    Navigator.push(context,MaterialPageRoute(
                        builder: (context) => herbsusi()),
                    );}),
            ),

            Container(
              padding: EdgeInsets.fromLTRB(80.0, 3.0, 80.0, 3.0),
              child: ElevatedButton(
                  child: Text('Brassicas'),
                  onPressed: () {
                    Navigator.push(context,MaterialPageRoute(
                        builder: (context) => brassicasusi()),
                    );}),
            ),

            Container(
              padding: EdgeInsets.fromLTRB(80.0, 3.0, 80.0, 3.0),
              child: ElevatedButton(
                  child: Text('Fodder Beet'),
                  onPressed: () {
                    Navigator.push(context,MaterialPageRoute(
                        builder: (context) => fodderbeetusi()),
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