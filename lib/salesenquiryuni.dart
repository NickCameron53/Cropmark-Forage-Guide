import 'package:flutter/material.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'main.dart';
import 'package:flutter/widgets.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';

class Seeds {
  final int id;
  final String name;

  Seeds({
    this.id,
    this.name,
  });
}

class EnquiryUNI extends StatefulWidget {
  EnquiryUNI({Key key, this.title}) : super(key: key);
  final String title;

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _EnquiryState();
  }
}

class _EnquiryState extends State<EnquiryUNI> {

  static List<Seeds> _Seeds = [
    Seeds(id: 1, name: "Ultra"),
    Seeds(id: 2, name: "Matrix"),
    Seeds(id: 3, name: "Raider"),
    Seeds(id: 4, name: "Avatar"),
    Seeds(id: 5, name: "Kai"),
    Seeds(id: 6, name: "Barrier"),
    Seeds(id: 7, name: "Kainui"),
    Seeds(id: 8, name: "Vision"),
    Seeds(id: 9, name: "Appeal"),
    Seeds(id: 10, name: "Sonik"),
    Seeds(id: 11, name: "Vibe"),
    Seeds(id: 12, name: "Blade"),
    Seeds(id: 13, name: "Bullet"),
    Seeds(id: 14, name: "Dash"),
    Seeds(id: 15, name: "Zoom"),
    Seeds(id: 16, name: "Mantra"),
    Seeds(id: 17, name: "Demand"),
    Seeds(id: 18, name: "Reaper"),
    Seeds(id: 19, name: "Galaxie Max"),
    Seeds(id: 20, name: "Chico"),
    Seeds(id: 21, name: "Oracle"),
    Seeds(id: 22, name: "Coleor"),
    Seeds(id: 23, name: "Proteor"),
    Seeds(id: 24, name: "Pillar"),
    Seeds(id: 25, name: "Marco"),
    Seeds(id: 26, name: "Geronimo"),
    Seeds(id: 27, name: "Lactimo"),
    Seeds(id: 28, name: "Betimo"),
    Seeds(id: 29, name: "Laurena"),
    Seeds(id: 30, name: "Avatar Pasture Pack"),
    Seeds(id: 31, name: "Matrix Pasture Pack"),
    Seeds(id: 32, name: "Ultra & Avatar Pasture Pack"),
  ];
  var _cultivars = _Seeds
      .map((product) => MultiSelectItem<Seeds>(product, product.name))
      .toList();

  //List<Product> _selectedSeeds = [];

  //final List<String> _cultivars = _Seeds.map((product) => product.name).toList();
  List<Seeds>_selectedSeeds1 = [];

  final _multiSelectKey = GlobalKey<FormFieldState>();

  @override
  void initState() {
    _selectedSeeds1 = _Seeds;
    super.initState();
  }

  @override

  final _emailFormKey = GlobalKey<FormState>();
  final TextEditingController customerController = new TextEditingController();
  final TextEditingController addressController = new TextEditingController();
  final TextEditingController phoneController = new TextEditingController();
  final TextEditingController emailController = new TextEditingController();
  final TextEditingController paddockController = new TextEditingController();

  String farmtype = 'Dairy';
  String retailer = 'Ravensdown';
  String seedmixed = 'YES';
  String seedtreatment = 'YES';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Sales Enquiry Upper N.I.'),
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
                        style: TextStyle(color: Colors.white),
                        controller: customerController,
                        validator: (value) {
                          if (value.isEmpty) {
                            return "please Enter your name (required)";
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
                                  color: Colors.red, width: 2.0),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            fillColor: Colors.lightGreen[600],
                            filled: true,
                            labelText: "Enter Customer Name *",
                            labelStyle: TextStyle(color: Colors.white),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.white,
                                  width: 2.0,
                                ))),

                      ),
                    ),

// Postal Address container
                    Container(
                      margin:
                      EdgeInsets.fromLTRB(10,15,10,15),
                      child: TextFormField(
                        style: TextStyle(color: Colors.white),
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
                                  color: Colors.red, width: 2.0),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            fillColor: Colors.lightGreen[600],
                            filled: true,
                            labelText: "Enter Postal Address *",
                            labelStyle: TextStyle(color: Colors.white),
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
                        style: TextStyle(color: Colors.white),
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
                                  color: Colors.red, width: 2.0),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            fillColor: Colors.lightGreen[600],
                            filled: true,
                            labelText: "Enter Phone Number *",
                            labelStyle: TextStyle(color: Colors.white),
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
                        style: TextStyle(color: Colors.white),
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
                                  color: Colors.red, width: 2.0),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            fillColor: Colors.lightGreen[600],
                            filled: true,
                            labelText: "Enter your email address *",
                            labelStyle: TextStyle(color: Colors.white),
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
                        style: TextStyle(color: Colors.white),
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
                                  color: Colors.red, width: 2.0),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            fillColor: Colors.lightGreen[600],
                            filled: true,
                            labelText: "Enter Paddock Area (ha) *",
                            labelStyle: TextStyle(color: Colors.white),
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
                        dropdownColor: Colors.lightGreen,
                        value: farmtype,
                        icon: const Icon(Icons.arrow_downward),
                        iconSize: 24,
                        elevation: 16,
                        style: const TextStyle(color: Colors.white),
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
                      margin: EdgeInsets.fromLTRB(50, 10, 50, 30),
                      decoration: BoxDecoration(
                        color: Colors.lightGreen[600],
                        borderRadius: BorderRadius.circular(15.0),
                        border: Border.all(
                            color: Colors.red,
                            style: BorderStyle.solid,
                            width: 1.80),
                      ),
                      child: DropdownButton<String>(
                        dropdownColor: Colors.lightGreen,
                        value: retailer,
                        icon: const Icon(Icons.arrow_downward),
                        iconSize: 24,
                        elevation: 16,
                        style: const TextStyle(color: Colors.white),
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
                          'Smart Forage and Pasture Solutions',
                          'Northland Seed & Supplies',
                          'New Zealand Farm Source',
                          ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.fromLTRB(50, 20, 50, 0),
                      child: Text('select products, then click proceed:'),
                    ),

                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.fromLTRB(50,0,50,0),
                      child: Column(
                        children: <Widget>[
                          SizedBox(height: 40),

                          MultiSelectDialogField(
                            items: _cultivars,
                            title: Text("Scroll down to see and select products"),
                            backgroundColor: Colors.lightGreen,
                            selectedColor: Colors.black,
                            decoration: BoxDecoration(
                              color: Colors.lightGreen[600],
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                              border: Border.all(
                                color: Colors.red[700],
                                width: 2,
                              ),
                            ),

                            buttonText: Text(
                              "Select Products",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                            onConfirm: (results) {
                              print(results);
                              _selectedSeeds1 = results;

                            },
                          ),


                        ],
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
                        dropdownColor: Colors.lightGreen,
                        value: seedmixed,
                        icon: const Icon(Icons.arrow_downward),
                        iconSize: 24,
                        elevation: 16,
                        style: const TextStyle(color: Colors.white),
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
                        dropdownColor: Colors.lightGreen,
                        value: seedtreatment,
                        icon: const Icon(Icons.arrow_downward),
                        iconSize: 24,
                        elevation: 16,
                        style: const TextStyle(color: Colors.white),
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
    var _seedmixed = seedmixed;
    var _seedtreatment = seedtreatment;

    var _selectedProducts = _selectedSeeds1
        .map((product) => product.name)
        .toList()
        .join(", ");

    final _multiSelectKey = GlobalKey<FormFieldState>();


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
        //'------ Products ------\n'
        '$_selectedProducts\n\n\n'

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
      if(_selectedSeeds1.length == 32) {
        _selectedSeeds1.clear();
      }
    });
    debugPrint('email - > $inputEmail  message -> $inputMessage');
  }

  void send(Email email) async {
    await FlutterEmailSender.send(email);
  }
}