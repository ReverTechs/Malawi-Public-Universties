// ignore_for_file: deprecated_member_use

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mapu_mw/main.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class LuarnaMainPage extends StatefulWidget {
  const LuarnaMainPage({super.key});

  @override
  State<LuarnaMainPage> createState() => _LuarnaMainPageState();
}

class _LuarnaMainPageState extends State<LuarnaMainPage> {
  bool _isTextVisible = false;

  void _incrementCounter() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 1, 11, 19),
        title: const Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'L U A N A R',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
            // Text(
            //   'Excellence For Life',
            //   style: TextStyle(fontSize: 18, color: Colors.white),
            // ),
          ],
        ),
      ),
      // body: const Center(
      //   child: Text(
      //     'You are on the second page now - LUANAR\nUnder Construction ! @reverTech',
      //     style: TextStyle(fontSize: 20.0),
      //   ),
      // ),
      body: ListView(
        children: <Widget>[
          //----------------------------------

          //---------------------------------
          const SizedBox(
            height: 45.0,
            // child: Text(
            //   'EXPLORE\nTHE PUBLIC UNIVERSITIES IN MALAWI !',
            //   style: TextStyle(
            //       fontStyle: FontStyle.italic,
            //       fontWeight: FontWeight.bold,
            //       fontSize: 12,
            //       color: Color.fromARGB(255, 2, 70, 22)),
            //   textAlign: TextAlign.center,
            // ),
          ),
          //1st

          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Luanar_schools()),
              );
            },
            child: Container(
              margin: const EdgeInsets.all(8),
              width: 100.w,
              height: 80.0.h,
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(2, 11, 28, 1),
                  //borderRadius: BorderRadius.circular(0.0),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.white,
                        blurRadius: 110,
                        offset: Offset(-5, 5))
                  ]),
              child: Row(
                children: [
                  const CircleAvatar(
                    //borderRadius: BorderRadius.circular(50),
                    backgroundImage: AssetImage('lib/Images/Luarnar.jpg'),
                    radius: 45,
                    child: FittedBox(
                      fit: BoxFit.cover,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        ' Current',
                        style: TextStyle(
                          fontSize: 14.0.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.start,
                      ),
                      Text(
                        ' F A C U L T I E S / S C H O O L S',
                        style: GoogleFonts.roboto(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.bold,
                            color: const Color.fromARGB(255, 221, 171, 21)),
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          SizedBox(
            height: 16.h,
          ),
          //2nd
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                //need to change website
                MaterialPageRoute(builder: (context) => const AllProgs()),
              );
            },
            child: Container(
              margin: const EdgeInsets.all(8),
              width: 100.w,
              height: 80.0.h,
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(2, 11, 28, 1),
                  borderRadius: BorderRadius.circular(10.0),
                  // borderRadius: const BorderRadius.only(
                  //   topRight: Radius.circular(50),
                  // ),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.white,
                        blurRadius: 10,
                        offset: Offset(-10, 10))
                  ]),
              child: const Row(
                children: [
                  CircleAvatar(
                    //borderRadius: BorderRadius.circular(50),
                    backgroundImage: AssetImage('lib/Images/Luarnar.jpg'),
                    radius: 45,
                    child: FittedBox(
                      fit: BoxFit.cover,
                    ),
                  ),
                  // ClipRRect(
                  //   borderRadius: BorderRadius.circular(50),
                  //   child: Image.asset(
                  //     //'lib/Images/Luarnar.jpg',
                  //     'lib/Images/Luarnar.jpg',
                  //     width: 100.0,
                  //     height: 100.0,
                  //   ),
                  // ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Current\n A L L  P R O G R A M S',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 16.h,
          ),
          //3rd
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LuanarLocation()),
              );
            },
            child: Container(
              margin: const EdgeInsets.all(8),
              width: 100.w,
              height: 80.0.h,
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(2, 11, 28, 1),
                  //borderRadius: BorderRadius.circular(0.0),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.white,
                        blurRadius: 10,
                        offset: Offset(-10, 10))
                  ]),
              child: Row(
                children: [
                  const CircleAvatar(
                    //borderRadius: BorderRadius.circular(50),
                    backgroundImage: AssetImage('lib/Images/Luarnar.jpg'),
                    radius: 45,
                    child: FittedBox(
                      fit: BoxFit.cover,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Current\n L O C A T I O N',
                        style: GoogleFonts.akshar(
                            fontWeight: FontWeight.bold,
                            fontSize: 17.sp,
                            color: Colors.white),
                        // style: TextStyle(
                        //   fontSize: 20.0,
                        //   fontWeight: FontWeight.bold,
                        //   color: Colors.white,
                        // ),
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          SizedBox(
            height: 16.h,
          ),
          //4th
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AllProgs()),
              );
            },
            child: Container(
              margin: const EdgeInsets.all(8),
              width: 100.w,
              height: 80.0.h,
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(2, 11, 28, 1),
                  //borderRadius: BorderRadius.circular(0.0),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.white,
                        blurRadius: 10,
                        offset: Offset(-10, 10))
                  ]),
              child: Row(
                children: [
                  const CircleAvatar(
                    //borderRadius: BorderRadius.circular(50),
                    backgroundImage: AssetImage('lib/Images/Luarnar.jpg'),
                    radius: 45,
                    child: FittedBox(
                      fit: BoxFit.cover,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'HOW TO APPLY \n Click to vist the Website',
                        style: TextStyle(
                          fontSize: 16.0.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 16.0.h),
          //5th
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LuanarHistory()),
              );
            },
            child: Container(
              margin: const EdgeInsets.all(8),
              width: 100.w,
              height: 80.0.h,
              decoration: BoxDecoration(
                  //color: const Color.fromRGBO(2, 11, 28, 1).withOpacity(0.5),
                  color: const Color.fromARGB(255, 1, 13, 24),
                  // borderRadius: BorderRadius.circular(0.0),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.white,
                        blurRadius: 10,
                        offset: Offset(-10, 10))
                  ]),
              child: Row(
                children: [
                  const CircleAvatar(
                    //borderRadius: BorderRadius.circular(50),
                    backgroundImage: AssetImage('lib/Images/Luarnar.jpg'),
                    radius: 45,
                    child: FittedBox(
                      fit: BoxFit.cover,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'LUANAR\nBrief History',
                        style: GoogleFonts.roboto(
                            fontSize: 17.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      //----------------------------------------floating
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          if (_isTextVisible)
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                const SizedBox(height: 10),
                GestureDetector(
                    onTap: () {
                      // ignore: deprecated_member_use
                      launch(
                          "https://www.google.com/maps/search/?api=1&query=luanar-bunda-campus");
                    },
                    child: Text(
                      'Administration',
                      style: GoogleFonts.roboto(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                        //color: const Color.fromARGB(255, 221, 213, 213)
                        color: const Color.fromARGB(255, 4, 62, 221),
                      ),
                      textAlign: TextAlign.end,
                    )),
                SizedBox(
                  height: 6.h,
                  child: const Column(
                    children: [Padding(padding: EdgeInsets.all(1.5))],
                  ),
                ),
                GestureDetector(
                    onTap: () {
                      // ignore: deprecated_member_use
                      launch(
                          "https://www.google.com/maps/search/?api=1&query=luanar-cumpuses");
                    },
                    child: Text(
                      'Campuses',
                      style: GoogleFonts.roboto(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                        //color: const Color.fromARGB(255, 224, 212, 212)
                        color: const Color.fromARGB(255, 223, 111, 6),
                      ),
                      // textAlign: TextAlign.end,
                    )),
                //3rd
                SizedBox(
                  height: 6.h,
                  child: const Column(
                    children: [Padding(padding: EdgeInsets.all(1.5))],
                  ),
                ),
                GestureDetector(
                    onTap: () {},
                    child: Text(
                      'Contacts',
                      style: GoogleFonts.roboto(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.normal,
                        //color: Color.fromARGB(255, 235, 231, 231)
                        color: const Color.fromARGB(255, 209, 80, 5),
                      ),
                      textAlign: TextAlign.end,
                    )),
                //4th
                const SizedBox(
                  height: 5,
                  child: Column(
                    children: [Padding(padding: EdgeInsets.all(1.5))],
                  ),
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MyHomePage1(
                                backgroundColor:
                                    Colors.blueGrey) //Kuhes_schools()
                            ),
                      );
                    },
                    child: Text(
                      'Home',
                      style: GoogleFonts.roboto(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.normal,
                        //color: Color.fromARGB(255, 235, 231, 231)
                        color: const Color.fromARGB(255, 235, 131, 12),
                      ),
                      textAlign: TextAlign.end,
                    )),
              ],
            ),
          const SizedBox(height: 10),
          FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () {
              setState(() {
                _isTextVisible = !_isTextVisible;
              });
            },
          )
        ],
      ),
      //-----------------------------------------floating
    );
  }
}

//luarnar faculties
class Luanar_schools extends StatelessWidget {
  const Luanar_schools({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 1, 11, 19),
        title: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Knowledge Innovation Excellence ',
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.sp,
                    color: Colors.orange)),
            // Text(
            //   'Excellence For Life',
            //   style: TextStyle(fontSize: 18, color: Colors.white),
            // ),
          ],
        ),
      ),
      body: SizedBox(
        // decoration: const BoxDecoration(
        //   image: DecorationImage(
        //     image: AssetImage('lib/Images/gala_TEST_01.jpg'),
        //     fit: BoxFit.cover,
        //   ),
        // ),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 1.h,
            ),
            //1st
            Container(
                margin: const EdgeInsets.all(2),
                height: 120.h,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(50),
                      bottomLeft: Radius.circular(10),
                    ),
                    //color: Color(0xFF363f93),
                    color: Color.fromARGB(255, 2, 77, 3)),
                child: Center(
                  child: Stack(
                    children: [
                      Positioned(
                        top: 20.h,
                        left: 0.w,
                        child: Container(
                          margin: const EdgeInsets.all(10),
                          height: 70.h,
                          width: 290.w,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(50)),
                        ),
                      ),
                      Positioned(
                          top: 50.h,
                          left: 30.w,
                          child: Text(
                            'LUANAR FACULTIES',
                            style: GoogleFonts.roboto(
                                fontSize: 18.sp,
                                color: const Color(0xFF363f93),
                                fontWeight: FontWeight.bold),
                          ))
                    ],
                  ),
                )),
            SizedBox(
              height: 5.h,
            ),
            //2nd
            //1st school
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SchoolAgri()),
                );
              },
              child: Container(
                margin: const EdgeInsets.all(6),
                width: 150.0.h,
                height: 80.0.h,
                decoration: BoxDecoration(
                    //color: Color(0xFF363f93).withOpacity(0.8),
                    color: const Color.fromARGB(255, 2, 77, 3).withOpacity(0.8),
                    borderRadius: const BorderRadius.only(
                        bottomRight: Radius.circular(50),
                        topRight: Radius.circular(50)),
                    boxShadow: const [
                      BoxShadow(
                          color: Color(0xFF363f93),
                          blurRadius: 10,
                          offset: Offset(1, 5))
                    ]),
                child: Row(
                  children: [
                    // ClipRRect(
                    //   borderRadius: BorderRadius.circular(50),
                    //   child: Image.asset(
                    //     //'lib/Images/Luarnar.jpg',
                    //     'lib/Images/Kuhes.jpg',
                    //     width: 100.0,
                    //     height: 100.0,
                    //   ),
                    // ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          ' Faculty of ',
                          style: TextStyle(
                            fontSize: 16.0.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.white.withOpacity(0.9),
                          ),
                          textAlign: TextAlign.start,
                        ),
                        Text(
                          ' AGRICULTURE',
                          style: GoogleFonts.roboto(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.bold,
                              color: const Color.fromARGB(255, 232, 139, 17)
                                  .withOpacity(0.9)),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 5.0.h,
            ),
            //2nd school
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SchoolDevelop()),
                );
              },
              child: Container(
                margin: const EdgeInsets.all(6),
                width: 150.0.h,
                height: 80.0.w,
                decoration: BoxDecoration(
                    //color: Color(0xFF363f93).withOpacity(0.8),
                    color: const Color.fromARGB(255, 2, 77, 3).withOpacity(0.8),
                    borderRadius: const BorderRadius.only(
                        bottomRight: Radius.circular(50),
                        topRight: Radius.circular(50)),
                    boxShadow: const [
                      BoxShadow(
                          color: Color(0xFF363f93),
                          blurRadius: 10,
                          offset: Offset(1, 5))
                    ]),
                child: Row(
                  children: [
                    // ClipRRect(
                    //   borderRadius: BorderRadius.circular(50),
                    //   child: Image.asset(
                    //     //'lib/Images/Luarnar.jpg',
                    //     'lib/Images/Kuhes.jpg',
                    //     width: 100.0,
                    //     height: 100.0,
                    //   ),
                    // ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          ' Faculty of ',
                          style: TextStyle(
                            fontSize: 16.0.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.white.withOpacity(0.9),
                          ),
                          textAlign: TextAlign.start,
                        ),
                        Text(
                          ' DEVELOPMENT STUDIES',
                          style: GoogleFonts.adamina(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.bold,
                              color: const Color.fromARGB(255, 232, 139, 17)
                                  .withOpacity(0.9)),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            //3rd school
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SchoolFood()),
                );
              },
              child: Container(
                margin: const EdgeInsets.all(6),
                width: 150.0.w,
                height: 80.0.h,
                decoration: BoxDecoration(
                    //color: Color(0xFF363f93).withOpacity(0.8),
                    color: const Color.fromARGB(255, 2, 77, 3).withOpacity(0.8),
                    borderRadius: const BorderRadius.only(
                        bottomRight: Radius.circular(50),
                        topRight: Radius.circular(50)),
                    boxShadow: const [
                      BoxShadow(
                          color: Color(0xFF363f93),
                          blurRadius: 10,
                          offset: Offset(1, 5))
                    ]),
                child: Row(
                  children: [
                    // ClipRRect(
                    //   borderRadius: BorderRadius.circular(50),
                    //   child: Image.asset(
                    //     //'lib/Images/Luarnar.jpg',
                    //     'lib/Images/Kuhes.jpg',
                    //     width: 100.0,
                    //     height: 100.0,
                    //   ),
                    // ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          ' Factulty of ',
                          style: TextStyle(
                            fontSize: 16.0.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.white.withOpacity(0.9),
                          ),
                          textAlign: TextAlign.start,
                        ),
                        Text(
                          ' FOOD AND HUMAN SCIENCES',
                          style: GoogleFonts.roboto(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.bold,
                              color: const Color.fromARGB(255, 232, 139, 17)
                                  .withOpacity(0.9)),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            //4th school
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SchoolNatural()),
                );
              },
              child: Container(
                margin: const EdgeInsets.all(6),
                width: 150.0.h,
                height: 80.0.w,
                decoration: BoxDecoration(
                    //color: Color(0xFF363f93).withOpacity(0.8),
                    color: const Color.fromARGB(255, 2, 77, 3).withOpacity(0.8),
                    borderRadius: const BorderRadius.only(
                        bottomRight: Radius.circular(50),
                        topRight: Radius.circular(50)),
                    boxShadow: const [
                      BoxShadow(
                          color: Color(0xFF363f93),
                          blurRadius: 10,
                          offset: Offset(1, 5))
                    ]),
                child: Row(
                  children: [
                    // ClipRRect(
                    //   borderRadius: BorderRadius.circular(50),
                    //   child: Image.asset(
                    //     //'lib/Images/Luarnar.jpg',
                    //     'lib/Images/Kuhes.jpg',
                    //     width: 100.0,
                    //     height: 100.0,
                    //   ),
                    // ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          ' Faculty of ',
                          style: TextStyle(
                            fontSize: 16.0.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.white.withOpacity(0.9),
                          ),
                          textAlign: TextAlign.start,
                        ),
                        Text(
                          ' NATURAL RESOURCES',
                          style: GoogleFonts.roboto(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.bold,
                              color: const Color.fromARGB(255, 232, 139, 17)
                                  .withOpacity(0.9)),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(
              height: 5.0.h,
            ),
            //1st NRC
            Container(
              height: 170,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(50),
                      topLeft: Radius.circular(50)),
                  //color: Color(0xFF363f93),
                  color: Color.fromARGB(255, 2, 77, 3)),
              child: Stack(
                children: [
                  Positioned(
                    top: 20,
                    left: 0,
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      height: 80.h,
                      width: 300.w,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(50),
                              bottomRight: Radius.circular(50),
                              bottomLeft: Radius.circular(50),
                              topLeft: Radius.circular(50))),
                    ),
                  ),
                  Positioned(
                      top: 80,
                      left: 50,
                      child: Text(
                        'NATURAL RESOURCES COLLEGE',
                        style: GoogleFonts.roboto(
                            fontSize: 14.sp,
                            color: const Color(0xFF363f93),
                            fontWeight: FontWeight.bold),
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SchoolVete()),
                );
              },
              child: Container(
                margin: const EdgeInsets.all(6),
                width: 100.0.w,
                height: 80.0.w,
                decoration: BoxDecoration(
                    //color: Color(0xFF363f93).withOpacity(0.8),
                    color: const Color.fromARGB(255, 2, 77, 3).withOpacity(0.8),
                    borderRadius: const BorderRadius.only(
                        bottomRight: Radius.circular(50),
                        topRight: Radius.circular(50)),
                    boxShadow: const [
                      BoxShadow(
                          color: Color(0xFF363f93),
                          blurRadius: 10,
                          offset: Offset(1, 5))
                    ]),
                child: Row(
                  children: [
                    // ClipRRect(
                    //   borderRadius: BorderRadius.circular(50),
                    //   child: Image.asset(
                    //     //'lib/Images/Luarnar.jpg',
                    //     'lib/Images/Kuhes.jpg',
                    //     width: 100.0,
                    //     height: 100.0,
                    //   ),
                    // ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          ' Factulty of ',
                          style: TextStyle(
                            fontSize: 16.0.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.white.withOpacity(0.9),
                          ),
                          textAlign: TextAlign.start,
                        ),
                        Text(
                          ' VETERINARY MEDICINE ',
                          style: GoogleFonts.roboto(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.bold,
                              color: const Color.fromARGB(255, 232, 139, 17)
                                  .withOpacity(0.9)),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 5.0.h,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SchoolLife()),
                );
              },
              child: Container(
                margin: const EdgeInsets.all(6),
                width: 100.0.w,
                height: 80.0.h,
                decoration: BoxDecoration(
                    //color: Color(0xFF363f93).withOpacity(0.8),
                    color: const Color.fromARGB(255, 2, 77, 3).withOpacity(0.8),
                    borderRadius: const BorderRadius.only(
                        bottomRight: Radius.circular(50),
                        topRight: Radius.circular(50)),
                    boxShadow: const [
                      BoxShadow(
                          color: Color(0xFF363f93),
                          blurRadius: 10,
                          offset: Offset(1, 5))
                    ]),
                child: Row(
                  children: [
                    // ClipRRect(
                    //   borderRadius: BorderRadius.circular(50),
                    //   child: Image.asset(
                    //     //'lib/Images/Luarnar.jpg',
                    //     'lib/Images/Kuhes.jpg',
                    //     width: 100.0,
                    //     height: 100.0,
                    //   ),
                    // ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          ' Factulty of ',
                          style: TextStyle(
                            fontSize: 15.0.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.white.withOpacity(0.9),
                          ),
                          textAlign: TextAlign.start,
                        ),
                        Text(
                          ' LIFE SCIENCES AND NATURAL RESOURCES ',
                          style: GoogleFonts.roboto(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.bold,
                              color: const Color.fromARGB(255, 232, 139, 17)
                                  .withOpacity(0.9)),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            )
          ],
        ),
      ),
    );
  }
}

//fac of agri
class SchoolAgri extends StatelessWidget {
  const SchoolAgri({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 245, 194, 118),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 1, 20, 36),
        title: Column(
          children: [
            Text(
              'FACULTY OF AGRICULTURE',
              style: GoogleFonts.roboto(color: Colors.orange, fontSize: 11.sp),
            )
          ],
        ),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            // SizedBox(
            //   height: 30,
            // ),
            //1st
            Padding(
              padding: const EdgeInsets.all(7),
              child: Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                  color: Colors.white.withOpacity(0.5),
                  width: 2,
                ))),
                child: Text(
                  'Bachelor of Science in Agricultural \nEngineering (Honors)',
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.roboto(
                      fontSize: 15.sp, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(7),
              child: Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                  color: Colors.white.withOpacity(0.5),
                  width: 2,
                ))),
                child: Text(
                  'Bachelor of Science in Irrigation \nEngineering (Honors)',
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.roboto(
                      fontSize: 15.sp, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            //2nd
            Padding(
              padding: const EdgeInsets.all(7),
              child: Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                  color: Colors.white.withOpacity(0.5),
                  width: 2,
                ))),
                child: Text(
                  'Bachelor of Science in Environmental \nEngineering (Honors)',
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.roboto(
                      fontSize: 15.sp, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            //3rd
            Padding(
              padding: const EdgeInsets.all(7),
              child: Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                  color: Colors.white.withOpacity(0.5),
                  width: 2,
                ))),
                child: Text(
                  'Bachelor of Science in Animal Science',
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.roboto(
                      fontSize: 15.sp, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            //4th
            Padding(
              padding: const EdgeInsets.all(7),
              child: Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                  color: Colors.white.withOpacity(0.5),
                  width: 2,
                ))),
                child: Text(
                  'Bachelor of Science in Agriculture',
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.roboto(
                      fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            //5th
            Padding(
              padding: const EdgeInsets.all(5),
              child: Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                  color: Colors.white.withOpacity(0.5),
                  width: 2,
                ))),
                child: Text(
                  'Bachelor of Science in Crop Sciences',
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.roboto(
                      fontSize: 15.sp, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            //6th
            Padding(
              padding: const EdgeInsets.all(7),
              child: Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                  color: Colors.white.withOpacity(0.5),
                  width: 2,
                ))),
                child: Text(
                  'Bachelor of Science in Biotechnology',
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.roboto(
                      fontSize: 15.sp, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            //7th
            Padding(
              padding: const EdgeInsets.all(7),
              child: Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                  color: Colors.white.withOpacity(0.5),
                  width: 2,
                ))),
                child: Text(
                  'Bachelor of Science in Horticultural \nSciences and Landscape Design',
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.roboto(
                      fontSize: 15.sp, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            //9th
            Padding(
              padding: const EdgeInsets.all(7),
              child: Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                  color: Colors.white.withOpacity(0.5),
                  width: 2,
                ))),
                child: Text(
                  'Bachelor of Science in Biostatistics',
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.roboto(
                      fontSize: 15.sp, fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

//fac of devel studies
class SchoolDevelop extends StatelessWidget {
  const SchoolDevelop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 245, 194, 118),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 1, 20, 36),
        title: Column(
          children: [
            Text(
              'FACULTY OF DEVELOPMENT STUDIES',
              style: GoogleFonts.roboto(color: Colors.orange, fontSize: 11.sp),
            )
          ],
        ),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            // SizedBox(
            //   height: 30,
            // ),
            //1st
            Padding(
              padding: const EdgeInsets.all(7),
              child: Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                  color: Colors.white.withOpacity(0.5),
                  width: 2,
                ))),
                child: Text(
                  'Bachelor of Science in Agribusiness \nManagement',
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.roboto(
                      fontSize: 15.sp, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(7),
              child: Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                  color: Colors.white.withOpacity(0.5),
                  width: 2,
                ))),
                child: Text(
                  'Bachelor of Science in Agricultural \nEconomics',
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.roboto(
                      fontSize: 15.sp, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            //1st
            Padding(
              padding: const EdgeInsets.all(7),
              child: Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                  color: Colors.white.withOpacity(0.5),
                  width: 2,
                ))),
                child: Text(
                  'Bachelor of Science in Education Science',
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.roboto(
                      fontSize: 15.sp, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            //2nd
            Padding(
              padding: const EdgeInsets.all(7),
              child: Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                  color: Colors.white.withOpacity(0.5),
                  width: 2,
                ))),
                child: Text(
                  'Bachelor of Science in Communication\n and Journalism',
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.roboto(
                      fontSize: 15.sp, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            //3rd
            Padding(
              padding: const EdgeInsets.all(7),
              child: Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                  color: Colors.white.withOpacity(0.5),
                  width: 2,
                ))),
                child: Text(
                  'Bachelor of Science in Agricultural \nExtension',
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.roboto(
                      fontSize: 15.sp, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            //5th
            Padding(
              padding: const EdgeInsets.all(7),
              child: Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                  color: Colors.white.withOpacity(0.5),
                  width: 2,
                ))),
                child: Text(
                  'Bachelor of Science in Biostatistics',
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.roboto(
                      fontSize: 15.sp, fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

//fact of food
class SchoolFood extends StatelessWidget {
  const SchoolFood({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 245, 194, 118),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 1, 20, 36),
        title: Column(
          children: [
            Text(
              'ACULTY OF FOOD AND HUMAN SCIENCES',
              style: GoogleFonts.roboto(color: Colors.orange, fontSize: 11.sp),
            )
          ],
        ),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            // SizedBox(
            //   height: 30,
            // ),
            //1st
            Padding(
              padding: const EdgeInsets.all(8),
              child: Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                  color: Colors.white.withOpacity(0.5),
                  width: 2,
                ))),
                child: Text(
                  'Bachelor of Science in Food Science and \nTechnology',
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.roboto(
                      fontSize: 15.sp, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                  color: Colors.white.withOpacity(0.5),
                  width: 2,
                ))),
                child: Text(
                  'Bachelor of Science in Gender and \nDevelopment',
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.roboto(
                      fontSize: 15.sp, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            //1st
            Padding(
              padding: const EdgeInsets.all(8),
              child: Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                  color: Colors.white.withOpacity(0.5),
                  width: 2,
                ))),
                child: Text(
                  'Bachelor of Human Sciences and \nCommunity Services',
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.roboto(
                      fontSize: 15.sp, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            //2nd
            Padding(
              padding: const EdgeInsets.all(7),
              child: Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                  color: Colors.white.withOpacity(0.5),
                  width: 2,
                ))),
                child: Text(
                  'Bachelor of Science in Nutrition \nand Food Science',
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.roboto(
                      fontSize: 15.sp, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            //3rd
          ],
        ),
      ),
    );
  }
}

//fact of natural resources
class SchoolNatural extends StatelessWidget {
  const SchoolNatural({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 245, 194, 118),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 1, 20, 36),
        title: Column(
          children: [
            Text(
              'FACULTY OF NATURAL RESOURCES',
              style: GoogleFonts.roboto(color: Colors.orange, fontSize: 11.sp),
            )
          ],
        ),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            // SizedBox(
            //   height: 30,
            // ),
            //1st
            Padding(
              padding: const EdgeInsets.all(7),
              child: Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                  color: Colors.white.withOpacity(0.5),
                  width: 2,
                ))),
                child: Text(
                  'Bachelor of Science in Aquaculture and \nFisheries Science',
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.roboto(
                      fontSize: 15.sp, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(7),
              child: Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                  color: Colors.white.withOpacity(0.5),
                  width: 2,
                ))),
                child: Text(
                  'Bachelor of Science in Environmental \nSciences',
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.roboto(
                      fontSize: 15.sp, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            //1st
            Padding(
              padding: const EdgeInsets.all(7),
              child: Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                  color: Colors.white.withOpacity(0.5),
                  width: 2,
                ))),
                child: Text(
                  'Bachelor of Science in Forestry',
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.roboto(
                      fontSize: 15.sp, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            //2nd
            Padding(
              padding: const EdgeInsets.all(7),
              child: Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                  color: Colors.white.withOpacity(0.5),
                  width: 2,
                ))),
                child: Text(
                  'Bachelor of Science in Natural Resources Management ',
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.roboto(
                      fontSize: 15.sp, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            //3rd
          ],
        ),
      ),
    );
  }
}

//N R C
//fact of vetenary
class SchoolVete extends StatelessWidget {
  const SchoolVete({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 245, 194, 118),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 1, 20, 36),
        title: Column(
          children: [
            Text(
              'FACULTY OF VETERINARY MEDICINE ',
              style: GoogleFonts.roboto(color: Colors.orange, fontSize: 11.sp),
            )
          ],
        ),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            // SizedBox(
            //   height: 30,
            // ),
            //1st
            Padding(
              padding: const EdgeInsets.all(7),
              child: Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                  color: Colors.white.withOpacity(0.5),
                  width: 2,
                ))),
                child: Text(
                  'Bachelor of Veterinary Medicine *',
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.roboto(
                      fontSize: 16.sp, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//fact of life sciences
class SchoolLife extends StatelessWidget {
  const SchoolLife({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 245, 194, 118),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 1, 20, 36),
        title: Column(
          children: [
            Text(
              'FACULTY OF LIFE SCIENCES AND NATURAL RESOURCES',
              style: GoogleFonts.roboto(color: Colors.orange, fontSize: 11.sp),
            )
          ],
        ),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            // SizedBox(
            //   height: 30,
            // ),
            //1st
            Padding(
              padding: const EdgeInsets.all(7),
              child: Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                  color: Colors.white.withOpacity(0.5),
                  width: 2,
                ))),
                child: Text(
                  'Bachelor of Science in Food Technology',
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.roboto(
                      fontSize: 15.sp, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(7),
              child: Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                  color: Colors.white.withOpacity(0.5),
                  width: 2,
                ))),
                child: Text(
                  'Bachelor of Textile and Fashion Design',
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.roboto(
                      fontSize: 15.sp, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            //1st
            Padding(
              padding: const EdgeInsets.all(7),
              child: Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                  color: Colors.white.withOpacity(0.5),
                  width: 2,
                ))),
                child: Text(
                  'Bachelor of Science in Computer Science ',
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.roboto(
                      fontSize: 15.sp, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            //2nd
            Padding(
              padding: const EdgeInsets.all(7),
              child: Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                  color: Colors.white.withOpacity(0.5),
                  width: 2,
                ))),
                child: Text(
                  'Bachelor of Science  ',
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.roboto(
                      fontSize: 15.sp, fontWeight: FontWeight.bold),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(7),
              child: Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                  color: Colors.white.withOpacity(0.5),
                  width: 2,
                ))),
                child: Text(
                  'Bachelor of Science in Agriculture',
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.roboto(
                      fontSize: 15.sp, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(7),
              child: Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                  color: Colors.white.withOpacity(0.5),
                  width: 2,
                ))),
                child: Text(
                  'Bachelor of Agricultural Technology',
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.roboto(
                      fontSize: 15.sp, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                  color: Colors.white.withOpacity(0.5),
                  width: 2,
                ))),
                child: Text(
                  'Bachelor of Education Science',
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.roboto(
                      fontSize: 15.sp, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(7),
              child: Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                  color: Colors.white.withOpacity(0.5),
                  width: 2,
                ))),
                child: Text(
                  'Bachelor of Science in Environmental \nScience',
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.roboto(
                      fontSize: 15.sp, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            //3rd
          ],
        ),
      ),
    );
  }
}

//all progs
class AllProgs extends StatefulWidget {
  const AllProgs({super.key});

  @override
  State<AllProgs> createState() => _AllProgramsState();
}

class _AllProgramsState extends State<AllProgs> {
  bool _isOnline = true;
  String _connectionStatus = 'Unknown';

  @override
  void initState() {
    super.initState();
    _checkConnectivity();
  }

  Future<void> _checkConnectivity() async {
    ConnectivityResult result = await Connectivity().checkConnectivity();
    if (result == ConnectivityResult.mobile ||
        result == ConnectivityResult.wifi) {
      setState(() {
        _isOnline = true;
        _connectionStatus = 'Connected';
      });
    } else {
      setState(() {
        _isOnline = false;
        _connectionStatus = 'Offline';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        title: const Text('LUANAR Website Navigation'),
      ),
      body: Center(
        child: GestureDetector(
          // Wrap Text in GestureDetector
          onTap: _launchWebsite,
          child: Text(
            _isOnline ? 'Click to Vist LUANAR ' : 'You are offline',
            style: TextStyle(
                color: _isOnline ? Colors.blue : Colors.grey,
                decoration:
                    _isOnline ? TextDecoration.underline : TextDecoration.none,
                fontSize: 30.sp,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }

  void _launchWebsite() async {
    if (_isOnline) {
      try {
        await launch('https://www.luanar.ac.mw/');
      } catch (error) {
        // ignore: use_build_context_synchronously
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Failed to launch website')),
        );
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('You are offline')),
      );
    }
  }
}
//luanar location

class LuanarLocation extends StatelessWidget {
  const LuanarLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(50),
          padding: const EdgeInsets.all(50),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Colors.blue,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                child: const Icon(
                  Icons.copy,
                  color: Colors.blue,
                ),
                onTap: () {
                  Clipboard.setData(ClipboardData(text: longText));
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text('Text copied to clipboard')));
                },
              ),
              Text(
                longText,
                style: GoogleFonts.roboto(fontSize: 16),
              )
            ],
          ),
        ),
      ),
    );
  }

  final String longText =
      "Currently...\n\n01 277 222/1016. dvc@luanar.ac.mw. The Deputy Vice Chancellor Lilongwe University of Agriculture and Natural Resources (LUANAR) Post Office Box 219, Lilongwe";
}

// history
class LuanarHistory extends StatelessWidget {
  const LuanarHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(25),
          padding: const EdgeInsets.all(25.0),
          decoration: BoxDecoration(
            color: Colors.yellow,
            border: Border.all(
              color: Colors.blue,
              width: 2.w,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                child: const Icon(
                  Icons.copy,
                  color: Colors.blue,
                ),
                onTap: () {
                  Clipboard.setData(ClipboardData(text: longText));
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text('Text copied to clipboard')));
                },
              ),
              Text(
                longText,
                style: GoogleFonts.roboto(
                    fontSize: 15.sp,
                    color: const Color.fromARGB(255, 0, 16, 29),
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }

  final String longText =
      "The Lilongwe University of Agriculture and Natural Resources (LUANAR) was established by an Act of Parliament No. 22 of 2011. LUANAR was created by delinking Bunda College of Agriculture from the University of Malawi and the integration of the Natural Resources College (NRC). Bunda College was established in 1967 as a constituent college of the University of Malawi. ";
}
