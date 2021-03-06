import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:crypt/crypt.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:whollet_app/routes/routes.dart';

class EnterPin extends StatefulWidget{
  @override
  _EnterPinState createState() => _EnterPinState();
}

class _EnterPinState extends State<EnterPin>{
  String _password = "", uid = '';


  Future<void> CheckPin() async {
    uid = FirebaseAuth.instance.currentUser!.uid;
    if (uid != '') {
      print(
          "HASH ${Crypt.sha256(_password, rounds: 10000, salt: 'anhdung').hash}");
      await FirebaseFirestore.instance.collection('user').doc(uid).get().then(
            (DocumentSnapshot documentSnapshot) async {
          if (documentSnapshot.exists) {
            if (Crypt.sha256(_password, rounds: 10000, salt: 'anhdung')
                .hash ==
                documentSnapshot.get('pin'))
              Navigator.pushNamed(context, Routes.Begin);
            else {
              await FirebaseAuth.instance.signOut();
              Navigator.pushNamed(context, Routes.Login);
            }
          }
        },
      );
    }
  }

  int _count = 0;
  Widget build(BuildContext context) {
    return Material(
      color: Color(0xFFEDF1F9),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 40),
            child: Stack(
              children: [
                Container(
                    padding: EdgeInsets.only(top: 5),
                    alignment: Alignment.center,
                    child: Text(
                      'Verification Required',
                      style: TextStyle(
                          fontFamily: 'Titillium Web',
                          fontSize: 26,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF0D1F3C)),
                    )),
                Container(
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(Icons.arrow_back_ios),
                  ),
                  alignment: Alignment.topLeft,
                )
              ],
            ),
          ),
          Container(
            child: Text('Please enter your PIN to proceed',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                    fontFamily: 'Titillium Web',
                    color: Color(0xFF485068))),
          ),
          if (_count == 0)
            Expanded(
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        height: 20,
                        width: 20,
                        child: Image(image:AssetImage('assets/Oval_NonTick.png'))),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                        height: 20,
                        width: 20,
                        child: Image(image:AssetImage('assets/Oval_NonTick.png'))),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                        height: 20,
                        width: 20,
                        child: Image(image:AssetImage('assets/Oval_NonTick.png'))),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                        height: 20,
                        width: 20,
                        child: Image(image:AssetImage('assets/Oval_NonTick.png'))),
                  ],
                ),
              ),
            ),
          if (_count == 1)
            Expanded(
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        height: 20,
                        width: 20,
                        child: Image(image:AssetImage('assets/Oval_Tick.png'))),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                        height: 20,
                        width: 20,
                        child: Image(image:AssetImage('assets/Oval_NonTick.png'))),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                        height: 20,
                        width: 20,
                        child: Image(image:AssetImage('assets/Oval_NonTick.png'))),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                        height: 20,
                        width: 20,
                        child: Image(image:AssetImage('assets/Oval_NonTick.png'))),
                  ],
                ),
              ),
            ),
          if (_count == 2)
            Expanded(
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        height: 20,
                        width: 20,
                        child: Image(image:AssetImage('assets/Oval_Tick.png'))),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                        height: 20,
                        width: 20,
                        child: Image(image:AssetImage('assets/Oval_Tick.png'))),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                        height: 20,
                        width: 20,
                        child: Image(image:AssetImage('assets/Oval_NonTick.png'))),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                        height: 20,
                        width: 20,
                        child: Image(image:AssetImage('assets/Oval_NonTick.png'))),
                  ],
                ),
              ),
            ),
          if (_count == 3)
            Expanded(
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        height: 20,
                        width: 20,
                        child: Image(image:AssetImage('assets/Oval_Tick.png'))),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                        height: 20,
                        width: 20,
                        child: Image(image:AssetImage('assets/Oval_Tick.png'))),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                        height: 20,
                        width: 20,
                        child: Image(image:AssetImage('assets/Oval_Tick.png'))),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                        height: 20,
                        width: 20,
                        child: Image(image:AssetImage('assets/Oval_NonTick.png'))),
                  ],
                ),
              ),
            ),
          if (_count == 4)
            Expanded(
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        height: 20,
                        width: 20,
                        child: Image(image:AssetImage('assets/Oval_Tick.png'))),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                        height: 20,
                        width: 20,
                        child: Image(image:AssetImage('assets/Oval_Tick.png'))),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                        height: 20,
                        width: 20,
                        child: Image(image:AssetImage('assets/Oval_Tick.png'))),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                        height: 20,
                        width: 20,
                        child: Image(image:AssetImage('assets/Oval_Tick.png'))),
                  ],
                ),
              ),
            ),
          Container(
            padding: EdgeInsets.only(left: 30, right: 30, bottom: 15),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 70,
                      width: 70,
                      child: Stack(
                        children: [
                          Container(
                              child: Center(
                                child: Text(
                                  '1',
                                  style: TextStyle(
                                      fontFamily: 'Titillium Web',
                                      fontSize: 40,
                                      fontWeight: FontWeight.w300,
                                      color: Color(0xFF003282)),
                                ),
                              )),
                          GestureDetector(
                            onTap: () {
                              setState(() async{
                                _count++;
                              });
                              if (_count == 4) {
                                CheckPin();
                                Navigator.pushNamedAndRemoveUntil(
                                    context, Routes.Begin, (route) => false);
                              }
                            },
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 70,
                      width: 70,
                      child: Stack(
                        children: [
                          Container(
                              child: Center(
                                child: Text(
                                  '2',
                                  style: TextStyle(
                                      fontFamily: 'Titillium Web',
                                      fontSize: 40,
                                      fontWeight: FontWeight.w300,
                                      color: Color(0xFF003282)),
                                ),
                              )),
                          GestureDetector(
                            onTap: () {
                              setState(() async{
                                _count++;
                              });
                              if (_count == 4) {
                                CheckPin();
                                Navigator.pushNamedAndRemoveUntil(
                                    context, Routes.Begin, (route) => false);
                              }
                            },
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 70,
                      width: 70,
                      child: Stack(
                        children: [
                          Container(
                              child: Center(
                                child: Text(
                                  '3',
                                  style: TextStyle(
                                      fontFamily: 'Titillium Web',
                                      fontSize: 40,
                                      fontWeight: FontWeight.w300,
                                      color: Color(0xFF003282)),
                                ),
                              )),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                _count++;
                              });
                              if (_count == 4){
                                CheckPin();
                                Navigator.pushNamedAndRemoveUntil(context,Routes.Begin,(route)=>false);
                              }
                            },
                          )
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 70,
                      width: 70,
                      child: Stack(
                        children: [
                          Container(
                              child: Center(
                                child: Text(
                                  '4',
                                  style: TextStyle(
                                      fontFamily: 'Titillium Web',
                                      fontSize: 40,
                                      fontWeight: FontWeight.w300,
                                      color: Color(0xFF003282)),
                                ),
                              )),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                _count++;
                              });
                              if (_count == 4){
                                CheckPin();
                                Navigator.pushNamedAndRemoveUntil(context,Routes.Begin,(route)=>false);
                              }
                            },
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 70,
                      width: 70,
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(35),
                              color: Colors.white,
                            ),
                          ),
                          Container(
                              child: Center(
                                child: Text(
                                  '5',
                                  style: TextStyle(
                                      fontFamily: 'Titillium Web',
                                      fontSize: 40,
                                      fontWeight: FontWeight.w300,
                                      color: Color(0xFF003282)),
                                ),
                              )),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                _count++;
                              });
                              if (_count == 4) {
                                CheckPin();
                                Navigator.pushNamedAndRemoveUntil(
                                    context, Routes.Begin, (route) => false);
                              }
                            },
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 70,
                      width: 70,
                      child: Stack(
                        children: [
                          Container(
                              child: Center(
                                child: Text(
                                  '6',
                                  style: TextStyle(
                                      fontFamily: 'Titillium Web',
                                      fontSize: 40,
                                      fontWeight: FontWeight.w300,
                                      color: Color(0xFF003282)),
                                ),
                              )),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                _count++;
                              });
                              if (_count == 4) {
                                CheckPin();
                                Navigator.pushNamedAndRemoveUntil(
                                    context, Routes.Begin, (route) => false);
                              }
                            },
                          )
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 70,
                      width: 70,
                      child: Stack(
                        children: [
                          Container(
                              child: Center(
                                child: Text(
                                  '7',
                                  style: TextStyle(
                                      fontFamily: 'Titillium Web',
                                      fontSize: 40,
                                      fontWeight: FontWeight.w300,
                                      color: Color(0xFF003282)),
                                ),
                              )),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                _count++;
                              });
                              if (_count == 4) {
                                CheckPin();
                                Navigator.pushNamedAndRemoveUntil(
                                    context, Routes.Begin, (route) => false);
                              }
                            },
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 70,
                      width: 70,
                      child: Stack(
                        children: [
                          Container(
                              child: Center(
                                child: Text(
                                  '8',
                                  style: TextStyle(
                                      fontFamily: 'Titillium Web',
                                      fontSize: 40,
                                      fontWeight: FontWeight.w300,
                                      color: Color(0xFF003282)),
                                ),
                              )),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                _count++;
                              });
                              if (_count == 4){
                                CheckPin();
                                 Navigator.pushNamedAndRemoveUntil(context,Routes.Begin,(route)=>false);
                                     }
                              }
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 70,
                      width: 70,
                      child: Stack(
                        children: [
                          Container(
                              child: Center(
                                child: Text(
                                  '9',
                                  style: TextStyle(
                                      fontFamily: 'Titillium Web',
                                      fontSize: 40,
                                      fontWeight: FontWeight.w300,
                                      color: Color(0xFF003282)),
                                ),
                              )),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                _count++;
                              });
                              if (_count == 4){
                                CheckPin();
                                Navigator.pushNamedAndRemoveUntil(context,Routes.Begin,(route)=>false);
                                }
                            },
                          )
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 70,
                      width: 70,
                      child: Stack(
                        children: [
                          Container(
                              child: Center(
                                child: Text(
                                  '\.',
                                  style: TextStyle(
                                      fontFamily: 'Titillium Web',
                                      fontSize: 40,
                                      fontWeight: FontWeight.w300,
                                      color: Color(0xFF003282)),
                                ),
                              )),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                _count++;
                              });
                              if (_count == 4){
                                CheckPin();
                                Navigator.pushNamedAndRemoveUntil(context,Routes.Begin,(route)=>false);
                              }
                            },
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 70,
                      width: 70,
                      child: Stack(
                        children: [
                          Container(
                              child: Center(
                                child: Text(
                                  '0',
                                  style: TextStyle(
                                      fontFamily: 'Titillium Web',
                                      fontSize: 40,
                                      fontWeight: FontWeight.w300,
                                      color: Color(0xFF003282)),
                                ),
                              )),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                _count++;
                              });
                              if (_count == 4){
                                CheckPin();
                                Navigator.pushNamedAndRemoveUntil(context,Routes.Begin,(route)=>false);
                              }
                            },
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 70,
                      width: 70,
                      child: Stack(
                        children: [
                          Container(
                              child: Center(
                                  child: Icon(
                                    Icons.backspace_outlined,
                                    size: 35,
                                    color: Color(0xFF003282),
                                  ))),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                _count--;
                              });
                            },
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
