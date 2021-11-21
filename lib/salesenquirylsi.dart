import 'package:flutter/material.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'main.dart';
import 'package:flutter/widgets.dart';


class EnquiryLSI extends StatefulWidget {
  EnquiryLSI({Key key, this.title}) : super(key: key);
  final String title;

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _EnquiryState();
  }
}

class _EnquiryState extends State<EnquiryLSI> {
  final _emailFormKey = GlobalKey<FormState>();
  final TextEditingController customerController = new TextEditingController();
  final TextEditingController addressController = new TextEditingController();
  final TextEditingController phoneController = new TextEditingController();
  final TextEditingController emailController = new TextEditingController();
  final TextEditingController paddockController = new TextEditingController();

  String farmtype = 'Dairy';
  String retailer = 'Ravensdown';
  String product1 = '';
  String product2 = '';
  String product3 = '';
  String product4 = '';
  String product5 = '';
  String seedmixed = 'YES';
  String seedtreatment = 'YES';
  var _productlist = ['',
    'Matrix Pasture Pack',
    'Avatar Pasture Pack',
    'Ultra/Avatar Pasture Pack',
    'Ultra AR1 diploid perennial ryegrass',
    'Matrix Nil  diploid perennial ryegrass',
    'Raider NEA2  diploid perennial ryegrass',
    'Avatar NEA tetraploid perennial ryegrass',
    'Kai  tetraploid perennial ryegrass',
    'Barrier U2 Festulolium grass',
    'Kainui cocksfoot',
    'Vision cocksfoot',
    'Appeal diploid Italian ryegrass',
    'Sonik diploid Italian ryegrass',
    'Vibe diploid Italian ryegrass',
    'Blade diploid Italian ryegrass',
    'Bullet tetraploid annual ryegrass',
    'Dash tetraploid annual ryegrass ',
    'Zoom tetraploid annual ryegrass',
    'Mantra white clover',
    'Demand white clover',
    'Reaper red clover',
    'Galaxie Max lucerne',
    'Chico chicory',
    'Oracle plantain',
    'Coleor kale',
    'Proteor kale',
    'Pillar rape',
    'Marco turnip',
    'Geronimo fodder beet',
    'Lactimo fodder beet',
    'Betimo fodder beet',
    'Laurena fodder beet',];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Sales Enquiry Lower S.I.'),
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
          ],
        ),

        body: Form(
          key: _emailFormKey,
          child: LayoutBuilder(
            builder:
                (BuildContext context, BoxConstraints viewportConstraints) {
              return SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
// customer name container
                    Container(
                      margin: EdgeInsets.fromLTRB(80, 10, 80, 0),
                      child: Text('* required fields'),
                    ),

                    Container(
                      margin:
                      EdgeInsets.fromLTRB(10,15,10,15),
                      child: TextFormField(
                        style: TextStyle(color: Colors.black),
                        controller: customerController,
                        validator: (value) {
                          if (value.isEmpty) {
                            return "please Enter your name";
                          }
                        },
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                              BorderSide(color: Colors.red, width: 2.0),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.lightGreen[600], width: 2.0),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            fillColor: Colors.lightGreen[600],
                            filled: true,
                            labelText: "Enter Customer Name *",
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.black,
                                  width: 2.0,
                                ))),
                      ),
                    ),

// Postal Address container
                    Container(
                      margin:
                      EdgeInsets.fromLTRB(10,15,10,15),
                      child: TextFormField(
                        style: TextStyle(color: Colors.black),
                        controller: addressController,
                        validator: (value) {
                          if (value.isEmpty) {
                            return "please Enter your address (required)";
                          }
                        },
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                              BorderSide(color: Colors.red, width: 2.0),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.lightGreen[600], width: 2.0),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            fillColor: Colors.lightGreen[600],
                            filled: true,
                            labelText: "Enter Postal Address *",
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.black,
                                  width: 2.0,
                                ))),
                      ),
                    ),

                    // Phone number container
                    Container(
                      margin:
                      EdgeInsets.fromLTRB(10,15,10,15),
                      child: TextFormField(
                        style: TextStyle(color: Colors.black),
                        controller: phoneController,
                        validator: (value) {
                          if (value.isEmpty) {
                            return "please Enter your phone number (required)";
                          }
                        },
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                              BorderSide(color: Colors.red, width: 2.0),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.lightGreen[600], width: 2.0),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            fillColor: Colors.lightGreen[600],
                            filled: true,
                            labelText: "Enter Phone Number *",
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.black,
                                  width: 2.0,
                                ))),
                      ),
                    ),

                    // email address container
                    Container(
                      margin:
                      EdgeInsets.fromLTRB(10,15,10,15),
                      child: TextFormField(
                        style: TextStyle(color: Colors.black),
                        controller: emailController,
                        validator: (value) {
                          if (value.isEmpty) {
                            return "please Enter your email address (required)";
                          }
                          if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                              .hasMatch(value)) {
                            return 'Please enter a valid Email';
                          }
                        },
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                              BorderSide(color: Colors.red, width: 2.0),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.lightGreen[600], width: 2.0),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            fillColor: Colors.lightGreen[600],
                            filled: true,
                            labelText: "Enter your email address *",
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.black,
                                  width: 2.0,
                                ))),
                      ),
                    ),

                    // Paddock area container
                    Container(
                      margin:
                      EdgeInsets.fromLTRB(10,15,10,15),
                      child: TextFormField(
                        style: TextStyle(color: Colors.black),
                        controller: paddockController,
                        validator: (value) {
                          if (value.isEmpty) {
                            return "please Enter your paddock area in hectares  (required)";
                          }
                        },
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                              BorderSide(color: Colors.red, width: 2.0),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.lightGreen[600], width: 2.0),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            fillColor: Colors.lightGreen[600],
                            filled: true,
                            labelText: "Enter Paddock Area (ha) *",
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.black,
                                  width: 2.0,
                                ))),
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.fromLTRB(100, 30, 100, 0),
                      child: Text('select farm type:'),
                    ),
                    // farm type container
                    Container(
                      height: 50,
                      margin: EdgeInsets.fromLTRB(50, 10, 50, 0),
                      decoration: BoxDecoration(
                        color: Colors.lightGreen[600],
                        borderRadius: BorderRadius.circular(15.0),
                        border: Border.all(
                            color: Colors.red,
                            style: BorderStyle.solid,
                            width: 1.80),
                      ),
                      child: DropdownButton<String>(
                        value: farmtype,
                        icon: const Icon(Icons.arrow_downward),
                        iconSize: 24,
                        elevation: 16,
                        style: const TextStyle(color: Colors.black),
                        onChanged: (String newValue1) {
                          setState(() {
                            farmtype = newValue1;
                          });
                        },
                        items: <String>[
                          '',
                          'Dairy',
                          'Sheep & Beef',
                          'Sheep',
                          'Beef',
                          'Horticulture',
                          'Viticulture',
                          'Orchard',
                          'Lifestyle Block',
                        ].map<DropdownMenuItem<String>>((String value1) {
                          return DropdownMenuItem<String>(
                            value: value1,
                            child: Text(value1),
                          );
                        }).toList(),
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.fromLTRB(100, 30, 100, 0),
                      child: Text('select a preferred retailer:'),
                    ),

                    // preferred retailer container
                    Container(
                      height: 50,
                      margin: EdgeInsets.fromLTRB(50, 10, 50, 0),
                      decoration: BoxDecoration(
                        color: Colors.lightGreen[600],
                        borderRadius: BorderRadius.circular(15.0),
                        border: Border.all(
                            color: Colors.red,
                            style: BorderStyle.solid,
                            width: 1.80),
                      ),
                      child: DropdownButton<String>(
                        value: retailer,
                        icon: const Icon(Icons.arrow_downward),
                        iconSize: 24,
                        elevation: 16,
                        style: const TextStyle(color: Colors.black),
                        onChanged: (String newValue) {
                          setState(() {
                            retailer = newValue;
                          });
                        },
                        items: <String>[
                          '',
                          'Ravensdown',
                          'Farmlands',
                          'PGG Wrightson',
                          'Wholesale Seeds',
                          'New Zealand Farm Source',
                          'North Otago Pastoral Services',
                          'Advance Agriculture',
                          'Kubala Seeds',

                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.fromLTRB(10, 30, 10, 0),
                      child: Text('select products, then click proceed:'),
                    ),

// product1 container
                    Container(
                      height: 50,
                      margin: EdgeInsets.fromLTRB(30, 10, 30, 0),
                      decoration: BoxDecoration(
                        color: Colors.lightGreen[600],
                        borderRadius: BorderRadius.circular(15.0),
                        border: Border.all(
                            color: Colors.red,
                            style: BorderStyle.solid,
                            width: 1.80),
                      ),
                      child: DropdownButton<String>(
                        value: product1,
                        icon: const Icon(Icons.arrow_downward),
                        iconSize: 24,
                        elevation: 16,
                        style: const TextStyle(color: Colors.black),
                        onChanged: (String newValue1) {
                          setState(() {
                            product1 = newValue1;
                          });
                        },
                        items: _productlist.map<DropdownMenuItem<String>>((String value1) {
                          return DropdownMenuItem<String>(
                            value: value1,
                            child: Text(value1),
                          );
                        }).toList(),
                      ),
                    ),

                    // product2 container
                    Container(
                      height: 50,
                      margin: EdgeInsets.fromLTRB(30, 20, 30, 0),
                      decoration: BoxDecoration(
                        color: Colors.lightGreen[600],
                        borderRadius: BorderRadius.circular(15.0),
                        border: Border.all(
                            color: Colors.red,
                            style: BorderStyle.solid,
                            width: 1.80),
                      ),
                      child: DropdownButton<String>(
                        value: product2,
                        icon: const Icon(Icons.arrow_downward),
                        iconSize: 24,
                        elevation: 16,
                        style: const TextStyle(color: Colors.black),
                        onChanged: (String newValue1) {
                          setState(() {
                            product2 = newValue1;
                          });
                        },
                        items: _productlist.map<DropdownMenuItem<String>>((String value1) {
                          return DropdownMenuItem<String>(
                            value: value1,
                            child: Text(value1),
                          );
                        }).toList(),
                      ),
                    ),

                    // product3 container
                    Container(
                      height: 50,
                      margin: EdgeInsets.fromLTRB(30, 20, 30, 0),
                      decoration: BoxDecoration(
                        color: Colors.lightGreen[600],
                        borderRadius: BorderRadius.circular(15.0),
                        border: Border.all(
                            color: Colors.red,
                            style: BorderStyle.solid,
                            width: 1.80),
                      ),
                      child: DropdownButton<String>(
                        value: product3,
                        icon: const Icon(Icons.arrow_downward),
                        iconSize: 24,
                        elevation: 16,
                        style: const TextStyle(color: Colors.black),
                        onChanged: (String newValue1) {
                          setState(() {
                            product3 = newValue1;
                          });
                        },
                        items: _productlist.map<DropdownMenuItem<String>>((String value1) {
                          return DropdownMenuItem<String>(
                            value: value1,
                            child: Text(value1),
                          );
                        }).toList(),
                      ),
                    ),

                    // product4 container
                    Container(
                      height: 50,
                      margin: EdgeInsets.fromLTRB(30, 20, 30, 0),
                      decoration: BoxDecoration(
                        color: Colors.lightGreen[600],
                        borderRadius: BorderRadius.circular(15.0),
                        border: Border.all(
                            color: Colors.red,
                            style: BorderStyle.solid,
                            width: 1.80),
                      ),
                      child: DropdownButton<String>(
                        value: product4,
                        icon: const Icon(Icons.arrow_downward),
                        iconSize: 24,
                        elevation: 16,
                        style: const TextStyle(color: Colors.black),
                        onChanged: (String newValue1) {
                          setState(() {
                            product4 = newValue1;
                          });
                        },
                        items: _productlist.map<DropdownMenuItem<String>>((String value1) {
                          return DropdownMenuItem<String>(
                            value: value1,
                            child: Text(value1),
                          );
                        }).toList(),
                      ),
                    ),

                    // product5 container
                    Container(
                      height: 50,
                      margin: EdgeInsets.fromLTRB(30, 20, 30, 0),
                      decoration: BoxDecoration(
                        color: Colors.lightGreen[600],
                        borderRadius: BorderRadius.circular(15.0),
                        border: Border.all(
                            color: Colors.red,
                            style: BorderStyle.solid,
                            width: 1.80),
                      ),
                      child: DropdownButton<String>(
                        value: product5,
                        icon: const Icon(Icons.arrow_downward),
                        iconSize: 24,
                        elevation: 16,
                        style: const TextStyle(color: Colors.black),
                        onChanged: (String newValue1) {
                          setState(() {
                            product5 = newValue1;
                          });
                        },
                        items: _productlist.map<DropdownMenuItem<String>>((String value1) {
                          return DropdownMenuItem<String>(
                            value: value1,
                            child: Text(value1),
                          );
                        }).toList(),
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.fromLTRB(100, 30, 100, 0),
                      child: Text('Seed to be mixed ?'),
                    ),
                    // seed to be mixed container
                    Container(
                      height: 50,
                      margin: EdgeInsets.fromLTRB(130, 10, 130, 0),
                      decoration: BoxDecoration(
                        color: Colors.lightGreen[600],
                        borderRadius: BorderRadius.circular(15.0),
                        border: Border.all(
                            color: Colors.red,
                            style: BorderStyle.solid,
                            width: 1.80),
                      ),
                      child: DropdownButton<String>(
                        value: seedmixed,
                        icon: const Icon(Icons.arrow_downward),
                        iconSize: 24,
                        elevation: 16,
                        style: const TextStyle(color: Colors.black),
                        onChanged: (String newValue1) {
                          setState(() {
                            seedmixed = newValue1;
                          });
                        },
                        items: <String>[
                          'YES',
                          'NO',
                        ].map<DropdownMenuItem<String>>((String value1) {
                          return DropdownMenuItem<String>(
                            value: value1,
                            child: Text(value1),
                          );
                        }).toList(),
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.fromLTRB(100, 30, 100, 0),
                      child: Text('Seed to be treated?'),
                    ),
                    // seed to be treated container
                    Container(
                      height: 50,
                      margin: EdgeInsets.fromLTRB(130, 10, 130, 0),
                      decoration: BoxDecoration(
                        color: Colors.lightGreen[600],
                        borderRadius: BorderRadius.circular(15.0),
                        border: Border.all(
                            color: Colors.red,
                            style: BorderStyle.solid,
                            width: 1.80),
                      ),
                      child: DropdownButton<String>(
                        value: seedtreatment,
                        icon: const Icon(Icons.arrow_downward),
                        iconSize: 24,
                        elevation: 16,
                        style: const TextStyle(color: Colors.black),
                        onChanged: (String newValue1) {
                          setState(() {
                            seedtreatment = newValue1;
                          });
                        },
                        items: <String>[
                          'YES',
                          'NO',
                        ].map<DropdownMenuItem<String>>((String value1) {
                          return DropdownMenuItem<String>(
                            value: value1,
                            child: Text(value1),
                          );
                        }).toList(),
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.fromLTRB(100, 20, 100, 20),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.grey[500],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                          ),
                          child: Text("Proceed"),
                          onPressed: () {
                            if (_emailFormKey.currentState.validate()) {
                              sendMessage();
                            }
                          }),
                    ),
                  ],
                ),
              );
            },
          ),
        ));
  }

  void sendMessage() {
    var _nameText = customerController.text;
    var _addressText = addressController.text;
    var _phoneText = phoneController.text;
    var _emailText = emailController.text;
    var _farmtype = farmtype;
    var _paddockText = paddockController.text;
    var _retailer = retailer;
    var _product1 = product1;
    var _product2 = product2;
    var _product3 = product3;
    var _product4 = product4;
    var _product5 = product5;
    var _seedmixed = seedmixed;
    var _seedtreatment = seedtreatment;

    var inputMessage = 'Name:  '
        '$_nameText\n\n'
        'Address:  '
        '$_addressText\n\n'
        'Phone:  '
        '$_phoneText\n\n'
        'Email:  '
        '$_emailText\n\n'
        'Farm Type: '
        '$_farmtype\n\n'
        'Paddock size (ha):  '
        '$_paddockText\n\n'
        'Preferred Retailer:\n  '
        '$_retailer\n\n'
        'Seed Products:\n  '
        '$_product1\n  '
        '$_product2\n  '
        '$_product3\n  '
        '$_product4\n  '
        '$_product5\n\n'
        'Seed to be mixed:  '
        '$_seedmixed\n\n'
        'Seed to be treated:  '
        '$_seedtreatment\n\n';

    String inputEmail;

    Email email;
    setState(() {
      //   inputEmail = emailController.text;
      inputEmail = 'sales@cropmark.co.nz';

      if (inputMessage.isNotEmpty && inputEmail.isNotEmpty) {
        email = Email(
          body: inputMessage,
          subject: 'Sales Enquiry',
          recipients: [inputEmail],
          cc: [emailController.text],
        );
        send(email);
      }
    });
    debugPrint('email - > $inputEmail  message -> $inputMessage');
  }

  void send(Email email) async {
    await FlutterEmailSender.send(email);
  }
}