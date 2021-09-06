import 'package:flutter/material.dart';

import 'dashboard.dart';

class FormScreen extends StatefulWidget {
  @override
  _FormScreenState createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  var formKey = GlobalKey<FormState>();
  late String level, name, phone, type, desc;
  var obtMarks = '';
  var percentage = '';
  var grade = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form'),
        leading:
        IconButton( onPressed: (){
          Navigator.push(context, new MaterialPageRoute(
              builder: (context) => new Dashboard()));
        },icon:Icon(Icons.arrow_back_ios,size: 20,color: Colors.black,)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      hintText: 'Level',
                      labelText: 'Level ',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      )),
                  validator: (text) {
                    if (text!.isEmpty) {
                      return 'please provide level';
                    } else {
                      level = int.parse(text) as String;
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: 16,
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      hintText: 'FullName',
                      labelText: 'Full Name',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      )),
                  validator: (text) {
                    if (text!.isEmpty) {
                      return 'please provide fullname';
                    } else {
                      name = int.parse(text) as String;
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: 16,
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      hintText: 'phonenumber',
                      labelText: 'Phone Number',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      )),
                  validator: (text) {
                    if (text!.isEmpty) {
                      return 'please provide phone number';
                    } else {
                      phone = int.parse(text) as String;
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: 16,
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      hintText: 'Type',
                      labelText: 'Type',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      )),
                  validator: (text) {
                    if (text!.isEmpty) {
                      return 'please provide type';
                    } else {
                      type = int.parse(text) as String;
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: 16,
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      hintText: 'Description',
                      labelText: 'Description',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      )),
                  validator: (text) {
                    if (text!.isEmpty) {
                      return 'please provide a description';
                    } else {
                      desc = int.parse(text) as String;
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Expanded(
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.red,
                            ),
                            onPressed: () {
                              formKey.currentState!.reset();
                              obtMarks = '';
                              percentage = '';
                              grade = '';
                              setState(() {

                              });
                            },
                            child: Text('Clear'))),
                    SizedBox(
                      width: 16,
                    ),
                    Expanded(
                        child: ElevatedButton(
                            onPressed: () {
                              if (formKey.currentState!.validate()) {
                               /* int obt = eng + phy + math + sci + geo;
                                double per = obt * 100 / 500;

                                if (per >= 80) {
                                  grade = 'A1';
                                } else if (per >= 70) {
                                  grade = 'A';
                                } else if (per >= 60) {
                                  grade = 'B';
                                } else if (per >= 40) {
                                  grade = 'C';
                                } else {
                                  grade = 'Fail';
                                }*/

                                setState(() {
                                 // obtMarks = obt.toString();
                                 // percentage = per.toString();
                                });
                              }
                            },
                            child: Text('Submit'))),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}