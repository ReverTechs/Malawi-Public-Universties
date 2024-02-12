// ignore_for_file: use_build_context_synchronously, deprecated_member_use

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mapu_mw/main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class KuhesMainPage extends StatefulWidget {
  const KuhesMainPage({super.key});

  @override
  State<KuhesMainPage> createState() => _KuhesMainPageState();
}

class _KuhesMainPageState extends State<KuhesMainPage> {
  //--------------------------------------------
  bool _isTextVisible = false;
//-----------------------------------------------

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(360, 690));
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 1, 11, 19),
        title: const Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'K U H e S',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
            // Text(
            //   'Excellence For Life',
            //   style: TextStyle(fontSize: 18, color: Colors.white),
            // ),
          ],
        ),
        // actions: [
        //   const ImageIcon(
        //     AssetImage('lib/Images/Kuhes.jpg'),
        //     size: 40,
        //     //color: Color.fromARGB(255, 5, 129, 42),
        //   ),
        //   IconButton(
        //     icon: Icon(Icons.close),
        //     tooltip: 'Closes App',
        //     onPressed: () => exit(0),
        //   )
        // ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,

        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/KUHES/Pg_photos/Kuhes_cover.jpg'),
            fit: BoxFit.cover,
          ),
        ),
//-------------------------------

//-------------------------------

        child: ListView(
          children: <Widget>[
            //----------------------------------

            //---------------------------------
            SizedBox(
              height: 45.0.h,
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
                  MaterialPageRoute(
                      builder: (context) => const Kuhes_schools()),
                );
              },
              child: Container(
                margin: const EdgeInsets.all(8),
                width: 100.0.w,
                height: 80.0.h,
                decoration: BoxDecoration(
                    // color: Color.fromRGBO(2, 11, 28, 1).withOpacity(0.5),
                    color: const Color.fromRGBO(2, 11, 28, 1),
                    //borderRadius: BorderRadius.circular(0.0),
                    // borderRadius: const BorderRadius.only(
                    //   topRight: Radius.circular(50),
                    //),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                          color: Color.fromARGB(255, 228, 226, 233),
                          blurRadius: 150,
                          offset: Offset(-5, 5))
                    ]),
                child: Row(
                  children: [
                    const CircleAvatar(
                      //borderRadius: BorderRadius.circular(50),
                      backgroundImage: AssetImage('lib/Images/Kuhes.jpg'),
                      radius: 45,
                      child: FittedBox(
                        fit: BoxFit.cover,
                      ),
                    ),
                    //ClipRRect(
                    // borderRadius: BorderRadius.circular(50),
                    // child: Image.asset(
                    //   //'lib/Images/Luarnar.jpg',
                    //   'lib/Images/Kuhes.jpg',
                    //   width: 100.0,
                    //   height: 100.0,
                    // ),
                    //  ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 5.h,
                        ),
                        Center(
                          child: Text(
                            ' Current',
                            style: TextStyle(
                              fontSize: 16.0.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.white.withOpacity(0.7),
                            ),
                            textAlign: TextAlign.start,
                          ),
                        ),
                        Center(
                          child: Text(
                            ' F A C U L T I E S / S C H O O L S',
                            style: GoogleFonts.roboto(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.bold,
                                color: const Color.fromARGB(255, 231, 121, 3)),
                            textAlign: TextAlign.start,
                            overflow: TextOverflow.clip,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(
              height: 6.h,
            ),
            //2nd
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  //need to change website
                  MaterialPageRoute(builder: (context) => const AllPrograms()),
                );
              },
              child: Container(
                margin: const EdgeInsets.all(8),
                width: 100.0.w,
                height: 80.0.h,
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(2, 11, 28, 1),
                    // borderRadius: BorderRadius.circular(0.0),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.white,
                          blurRadius: 15,
                          offset: Offset(-5, 5))
                    ]),
                child: Row(
                  children: [
                    const CircleAvatar(
                      //borderRadius: BorderRadius.circular(50),
                      backgroundImage: AssetImage('lib/Images/Kuhes.jpg'),
                      radius: 45,
                      child: FittedBox(
                        fit: BoxFit.cover,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Current\n A L L  P R O G R A M S',
                          style: TextStyle(
                            fontSize: 18.0.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.white.withOpacity(0.5),
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
              height: 6.h,
            ),
            //3rd
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const KuhesLocation()),
                );
              },
              child: Container(
                margin: const EdgeInsets.all(8),
                width: 100.0.w,
                height: 80.0.h,
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(2, 11, 28, 1),
                    //borderRadius: BorderRadius.circular(0.0),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.white,
                          blurRadius: 150,
                          offset: Offset(-5, 5))
                    ]),
                child: Row(
                  children: [
                    const CircleAvatar(
                      //borderRadius: BorderRadius.circular(50),
                      backgroundImage: AssetImage('lib/Images/Kuhes.jpg'),
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
                              fontSize: 18.sp,
                              color: Colors.white.withOpacity(0.5)),
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
              height: 6.h,
            ),
            //4th
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MyHomePage()),
                );
                // String uri = "hhtps://kuhes.ac.mw";
                // launchUrl(uri as Uri);
              },
              child: Container(
                margin: const EdgeInsets.all(8),
                width: 100.0.w,
                height: 80.0.h,
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(2, 11, 28, 1),
                    //borderRadius: BorderRadius.circular(0.0),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.white,
                          blurRadius: 150,
                          offset: Offset(-5, 5))
                    ]),
                child: Row(
                  children: [
                    const CircleAvatar(
                      //borderRadius: BorderRadius.circular(50),
                      backgroundImage: AssetImage('lib/Images/Kuhes.jpg'),
                      radius: 45,
                      child: FittedBox(
                        fit: BoxFit.cover,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          ' H O W  T O  A P P L Y \n Click to vist the Website',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white.withOpacity(0.5),
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
              height: 6.h,
            ),
            //5th
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const KuhesHistory()),
                );
              },
              child: Container(
                margin: const EdgeInsets.all(8),
                width: 100.0.w,
                height: 80.0.h,
                decoration: BoxDecoration(
                    //color: const Color.fromRGBO(2, 11, 28, 1).withOpacity(0.5),
                    color: const Color.fromRGBO(2, 11, 28, 1),
                    // borderRadius: BorderRadius.circular(0.0),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.white,
                          blurRadius: 150,
                          offset: Offset(-5, 5))
                    ]),
                child: Row(
                  children: [
                    const CircleAvatar(
                      //borderRadius: BorderRadius.circular(50),
                      backgroundImage: AssetImage('lib/Images/Kuhes.jpg'),
                      radius: 45,
                      child: FittedBox(
                        fit: BoxFit.cover,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'K U H e S\nBrief History',
                          style: GoogleFonts.roboto(
                              fontSize: 18.0.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.white.withOpacity(0.5)),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            )
          ],
        ),
      ),
      //---------------------------------------------------------------------------------
      //floating action button ONLY
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          if (_isTextVisible)
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                const SizedBox(height: 10),
                GestureDetector(
                    // ignore: duplicate_ignore
                    onTap: () {
                      // ignore: deprecated_member_use
                      launch(
                          'https://www.google.com/maps/search/?api=1&query=kuhes');
                    },
                    child: Text(
                      'Administration',
                      style: GoogleFonts.roboto(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                        //color: const Color.fromARGB(255, 221, 213, 213)
                        color: const Color.fromARGB(255, 219, 13, 13),
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
                        'https://www.google.com/maps/search/?api=1&query=kuhes-campus');
                  },
                  child: Text(
                    'Campuses',
                    style: GoogleFonts.roboto(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      //color: const Color.fromARGB(255, 224, 212, 212)
                      color: const Color.fromARGB(255, 221, 14, 14),
                    ),
                    textAlign: TextAlign.end,
                  ),
                ),
                //3rd
                SizedBox(
                  height: 6.0.h,
                  child: const Column(
                    children: [Padding(padding: EdgeInsets.all(1.5))],
                  ),
                ),
                GestureDetector(
                    onTap: () {},
                    child: Text(
                      'Contacts',
                      style: GoogleFonts.roboto(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                        // color: Color.fromARGB(255, 238, 229, 229)
                        color: const Color.fromARGB(255, 217, 7, 7),
                      ),
                      textAlign: TextAlign.end,
                    )),
                //4th
                SizedBox(
                  height: 6.h,
                  child: const Column(
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
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      //color: Color.fromARGB(255, 235, 231, 231)
                      color: const Color.fromARGB(255, 216, 5, 5),
                    ),
                    textAlign: TextAlign.end,
                  ),
                ),
                SizedBox(
                  height: 7.h,
                )
              ],
            ),
          //const SizedBox(height: 10),
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

      bottomNavigationBar: BottomAppBar(
        color: const Color.fromARGB(255, 196, 154, 4),
        child: Container(
          height: 2.0,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
//--------------------------------------------------------------------------------------
    );
  }
}

// KUHES SHOOLS Display
// ignore: camel_case_types
class Kuhes_schools extends StatelessWidget {
  const Kuhes_schools({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 1, 11, 19),
        title: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Excellence For Life',
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.bold, color: Colors.orange)),
            // Text(
            //   'Excellence For Life',
            //   style: TextStyle(fontSize: 18, color: Colors.white),
            // ),
          ],
        ),
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 1.0.h,
          ),
          //1st
          Container(
            height: 120.h,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(50),
              ),
              color: Color(0xFF363f93),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 20.h,
                  left: 0.w,
                  child: Container(
                    height: 70.h,
                    width: 270.w,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(50),
                            bottomRight: Radius.circular(50))),
                  ),
                ),
                Positioned(
                    top: 50.h,
                    left: 50.w,
                    child: Center(
                      child: Text(
                        'KUHeS SCHOOLS',
                        style: GoogleFonts.roboto(
                            fontSize: 20.sp,
                            color: Color(0xFF363f93),
                            fontWeight: FontWeight.bold),
                      ),
                    ))
              ],
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          //2nd
          //1st school
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SchoolMedicine()),
              );
            },
            child: Container(
              margin: const EdgeInsets.all(6),
              width: 100.0.w,
              height: 80.0.h,
              decoration: BoxDecoration(
                  color: const Color(0xFF363f93).withOpacity(0.8),
                  borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(50),
                      topRight: Radius.circular(50),
                      bottomLeft: Radius.circular(10),
                      topLeft: Radius.circular(10)),
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
                        ' School of ',
                        style: TextStyle(
                          fontSize: 14.0.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.start,
                      ),
                      Text(
                        ' MEDICINE AND ORAL HEARTH',
                        style: GoogleFonts.roboto(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.orange),
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10.0.h,
          ),
          //2nd school
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
                  color: const Color(0xFF363f93).withOpacity(0.8),
                  borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(50),
                      topRight: Radius.circular(50),
                      bottomLeft: Radius.circular(10),
                      topLeft: Radius.circular(10)),
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
                        ' School of ',
                        style: TextStyle(
                          fontSize: 14.0.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.start,
                      ),
                      Text(
                        ' LIFE SCIENCES & ALLIED HEALTH \n PROFESSIONS',
                        style: GoogleFonts.roboto(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.orange),
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          //3rd school
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SchoolGloble()),
              );
            },
            child: Container(
              margin: const EdgeInsets.all(6),
              width: 100.0.w,
              height: 80.0.h,
              decoration: BoxDecoration(
                  color: const Color(0xFF363f93).withOpacity(0.8),
                  borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(50),
                      topRight: Radius.circular(50),
                      bottomLeft: Radius.circular(10),
                      topLeft: Radius.circular(10)),
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
                        ' School of ',
                        style: TextStyle(
                          fontSize: 14.0.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.start,
                      ),
                      Text(
                        ' GLOBLE AND PUBLIC HEALTH',
                        style: GoogleFonts.roboto(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.orange),
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10.0.h,
          ),
          //4th school
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SchoolNursing()),
              );
            },
            child: Container(
              margin: const EdgeInsets.all(6),
              width: 100.0.w,
              height: 80.0.h,
              decoration: BoxDecoration(
                  color: const Color(0xFF363f93).withOpacity(0.8),
                  borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(50),
                      topRight: Radius.circular(50),
                      bottomLeft: Radius.circular(10),
                      topLeft: Radius.circular(10)),
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
                        ' School of ',
                        style: TextStyle(
                          fontSize: 14.0.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.start,
                      ),
                      Text(
                        ' NURSING',
                        style: GoogleFonts.roboto(
                            fontSize: 16.0.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.orange),
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          SizedBox(
            height: 10.0.h,
          ),
          // 5th school
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SchoolMaternal()),
              );
            },
            child: Container(
              margin: const EdgeInsets.all(6),
              width: 100.0.w,
              height: 80.0.h,
              decoration: BoxDecoration(
                  color: const Color(0xFF363f93).withOpacity(0.8),
                  borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(50),
                      topRight: Radius.circular(50),
                      bottomLeft: Radius.circular(10),
                      topLeft: Radius.circular(10)),
                  boxShadow: const [
                    BoxShadow(
                        color: Color(0xFF363f93),
                        blurRadius: 10,
                        offset: Offset(-1, 5))
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
                        ' School of ',
                        style: TextStyle(
                          fontSize: 14.0.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.start,
                      ),
                      Text(
                        ' MATERNAL NEONATAL & REPRODUCTIVE \n HEALTH',
                        style: GoogleFonts.roboto(
                            fontSize: 16.0.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.orange),
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

//school of medicene

class SchoolMedicine extends StatelessWidget {
  const SchoolMedicine({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 231, 189, 125),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 1, 20, 36),
        title: Column(
          children: [
            Text(
              'SCHOOL OF MEDICINE AND ORAL HEALTH',
              style: GoogleFonts.roboto(color: Colors.orange, fontSize: 15.sp),
            )
          ],
        ),
      ),
      // ignore: avoid_unnecessary_containers
      body: Container(
        child: ListView(
          children: <Widget>[
            // SizedBox(
            //   height: 30,
            // ),
            //1st
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
                  'Bachelor of Medicine/Bachelor of Surgery',
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.roboto(
                      fontSize: 15.sp, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            //2nd
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
                  'Bachelor of Dental Surgery',
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

//school of OF LIFE SCIENCES
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
              'SCHOOL OF LIFE SCIENCES & ALLIED HEALTH PROFESSIONS',
              style: GoogleFonts.roboto(color: Colors.orange, fontSize: 11.sp),
            )
          ],
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ListView(
          children: <Widget>[
            // SizedBox(
            //   height: 30,
            // ),
            //1st
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                // width: MediaQuery.of(context).size.width,
                // height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                  color: Colors.white.withOpacity(0.5),
                  width: 2,
                ))),
                child: Text(
                  'Bachelor of Medical laboratory Sciences \n(Honours)',
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.roboto(
                      fontSize: 15.sp, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            //2nd
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
                  'Bachelor of Pharmacy (Honours)',
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.roboto(
                      fontSize: 15.sp, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            //3rd
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
                  'Bachelor of Physiotherapy (Honours)',
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.roboto(
                      fontSize: 15.sp, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            //4th
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
                  'Bachelor of Biomedical Sciences \n(Honours)',
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.roboto(
                      fontSize: 15.sp, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            //5th
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
                  'Bachelor of Occupational Therapy \n(Honours)',
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

//school of Globle
class SchoolGloble extends StatelessWidget {
  const SchoolGloble({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 231, 189, 125),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 1, 20, 36),
        title: Column(
          children: [
            Text(
              'SCHOOL OF GLOBAL & PUBLIC HEALTH',
              style: GoogleFonts.roboto(color: Colors.orange, fontSize: 15.sp),
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
              padding: const EdgeInsets.all(10),
              child: Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                  color: Colors.white.withOpacity(0.5),
                  width: 2,
                ))),
                child: Text(
                  'Bachelor of Science in Nutrition and \nDietetics (Honours)',
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.roboto(
                      fontSize: 15.sp, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//school of Nursing

class SchoolNursing extends StatelessWidget {
  const SchoolNursing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 245, 194, 118),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 1, 20, 36),
        title: Column(
          children: [
            Text(
              'SCHOOL OF NURSING',
              style: GoogleFonts.roboto(color: Colors.orange, fontSize: 15.sp),
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
              padding: const EdgeInsets.all(10),
              child: Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                  color: Colors.white.withOpacity(0.5),
                  width: 2,
                ))),
                child: Text(
                  'Bachelor of Science in Adult Health \nNursing',
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.roboto(
                      fontSize: 15.sp, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            //2nd
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
                  'Bachelor of Science in Child Health \nNursing',
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.roboto(
                      fontSize: 15.sp, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            //3rd
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
                  'Bachelor of Science in Nursing and \nMidwifery',
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.roboto(
                      fontSize: 15.sp, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            //4th
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
                  'Bachelor of Science in Community Health \nNursing',
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.roboto(
                      fontSize: 15.sp, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            //5th
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
                  'Bachelor of Science in Mental Health and \nPsychiatric Nursing',
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

// SCHOOL OF MATERNAL

class SchoolMaternal extends StatelessWidget {
  const SchoolMaternal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 231, 189, 125),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 1, 20, 36),
        title: Column(
          children: [
            Text(
              'SCHOOL OF MATERNAL, NEONATAL & REPRODUCTIVE HEALTH',
              style: GoogleFonts.roboto(color: Colors.orange, fontSize: 11),
            )
          ],
        ),
      ),
      body: ListView(
        children: <Widget>[
          // SizedBox(
          //   height: 30,
          // ),
          //1st
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
                'Bachelor of Science in Midwifery',
                overflow: TextOverflow.ellipsis,
                style: GoogleFonts.roboto(
                    fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          //2nd
        ],
      ),
    );
  }
}

//how to apply
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _isOnline = true;

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
      });
    } else {
      setState(() {
        _isOnline = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.yellow.withOpacity(0.5),
        appBar: AppBar(
          title: const Text('KUHeS Website Navigation'),
        ),
        body: Center(
          child: Container(
            height: 45.h,
            width: 350.w,

            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 218, 86, 10),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25),
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25))),
            // Wrap Text in GestureDetector

            child: GestureDetector(
                onTap: _launchWebsite,
                child: Text(
                  _isOnline ? 'Click to vist KUHeS website' : 'You are offline',
                  style: TextStyle(
                    color: _isOnline
                        ? const Color.fromARGB(255, 1, 20, 37)
                        : Colors.grey,
                    decoration:
                        _isOnline ? TextDecoration.none : TextDecoration.none,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                )),
            // child: Text(
            //   _isOnline ? 'Click to Vist KUHeS' : 'You are offline',
            //   style: TextStyle(
            //       color: _isOnline ? Colors.blue : Colors.grey,
            //       decoration:
            //           _isOnline ? TextDecoration.underline : TextDecoration.none,
            //       fontSize: 35,
            //       fontWeight: FontWeight.bold),
            // ),
            //),
          ),
        ));
  }

  void _launchWebsite() async {
    if (_isOnline) {
      try {
        await launch('https://www.kuhes.ac.mw/');
      } catch (error) {
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

// all pgs
class AllPrograms extends StatefulWidget {
  const AllPrograms({super.key});

  @override
  State<AllPrograms> createState() => _AllProgramsState();
}

class _AllProgramsState extends State<AllPrograms> {
  bool _isOnline = true;

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
      });
    } else {
      setState(() {
        _isOnline = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        title: const Text('KUHeS Website Navigation'),
      ),
      body: Center(
        child: GestureDetector(
          // Wrap Text in GestureDetector
          onTap: _launchWebsite,
          child: Text(
            _isOnline ? 'Click to Vist KUHeS ' : 'You are offline',
            style: TextStyle(
                color: _isOnline ? Colors.blue : Colors.grey,
                decoration:
                    _isOnline ? TextDecoration.underline : TextDecoration.none,
                fontSize: 35,
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
        await launch('https://www.kuhes.ac.mw/');
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
//--------------------------------------------------------

// location

class KuhesLocation extends StatelessWidget {
  const KuhesLocation({super.key});

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
      "Curentry...\n\n52X8+782, Mahatma Gandhi Rd, Blantyre Kamuzu University of Health Sciences (KUHeS), address";
}

// kuhes history

class KuhesHistory extends StatelessWidget {
  const KuhesHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.all(40),
          decoration: BoxDecoration(
            color: Colors.yellow,
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
                style: GoogleFonts.roboto(
                    fontSize: 14.sp,
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
      "KUHeS Brief History\n\nKamuzu University of Health Sciences (KUHeS) is a comprehensive health and allied sciences university with a unique academic model and Programme Qualification Mix that takes cognizant of the local, national and international health care and training contexts. The University was established by merging Kamuzu College of Nursing (est. 1979) and College of Medicine (est. 1991) after their delinking from University of Malawi. It has two campuses, one in Blantyre and another in Lilongwe and a satellite campus in Mangochi. ";
}
