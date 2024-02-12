// ignore: file_names
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mapu_mw/main.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class MzuniMainPage extends StatefulWidget {
  const MzuniMainPage({super.key});

  @override
  State<MzuniMainPage> createState() => _MzuniMainPageState();
}

class _MzuniMainPageState extends State<MzuniMainPage> {
  bool _isTextVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 1, 11, 19),
        title: const Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'M Z U N I',
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
      body: Container(
        color: Colors.green,
        // decoration: const BoxDecoration(
        //   image: DecorationImage(
        //     image: AssetImage('lib/Images/MustBack.jpg'),
        //     fit: BoxFit.cover,
        //   ),
        // ),
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
                      builder: (context) => const Mzuni_schools()),
                );
              },
              child: Container(
                margin: const EdgeInsets.all(8),
                width: 100.w,
                height: 80.h,
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(2, 11, 28, 1).withOpacity(0.5),
                    //borderRadius: BorderRadius.circular(0.0),
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(30),
                        bottomLeft: Radius.circular(30)),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.white,
                          blurRadius: 10,
                          offset: Offset(-5, 5))
                    ]),
                child: Row(
                  children: [
                    const CircleAvatar(
                      //borderRadius: BorderRadius.circular(50),
                      backgroundImage:
                          AssetImage('lib/Images/Mzuzu_university_logo222.jpg'),
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
                            fontSize: 15.0.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.start,
                        ),
                        Text(
                          ' F A C U L T I E S / S C H O O L S',
                          style: GoogleFonts.roboto(
                              fontSize: 15, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(
              height: 13.h,
            ),
            //2nd
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  //need to change website
                  MaterialPageRoute(
                      builder: (context) => const MzuniAllProgs()),
                );
              },
              child: Container(
                margin: const EdgeInsets.all(8),
                width: 100.w,
                height: 80.h,
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(2, 11, 28, 1).withOpacity(0.5),
                    // borderRadius: BorderRadius.circular(0.0),
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(25),
                        bottomLeft: Radius.circular(27)),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.white,
                          blurRadius: 10,
                          offset: Offset(-5, 5))
                    ]),
                child: Row(
                  children: [
                    const CircleAvatar(
                      //borderRadius: BorderRadius.circular(50),
                      backgroundImage:
                          AssetImage('lib/Images/Mzuzu_university_logo222.jpg'),
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
                            fontSize: 15.0.sp,
                            fontWeight: FontWeight.bold,
                            color: const Color.fromARGB(255, 218, 208, 208),
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
              height: 14.0.h,
            ),
            //3rd
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  //need to change website
                  MaterialPageRoute(
                      builder: (context) => const MzuniLocation()),
                );
              },
              child: Container(
                margin: const EdgeInsets.all(8),
                width: 100.0.w,
                height: 80.0.h,
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(2, 11, 28, 1).withOpacity(0.5),
                    //borderRadius: BorderRadius.circular(0.0),
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(25),
                        bottomLeft: Radius.circular(25)),
                    boxShadow: const [
                      BoxShadow(
                          color: Color.fromARGB(255, 237, 222, 222),
                          blurRadius: 10,
                          offset: Offset(-5, 5))
                    ]),
                child: Row(
                  children: [
                    const CircleAvatar(
                      //borderRadius: BorderRadius.circular(50),
                      backgroundImage:
                          AssetImage('lib/Images/Mzuzu_university_logo222.jpg'),
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
                              fontSize: 15.sp,
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
              height: 14.h,
            ),
            //4th
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  //need to change website
                  MaterialPageRoute(
                      builder: (context) => const MzuniAllProgs()),
                );
              },
              child: Container(
                margin: const EdgeInsets.all(8),
                width: 100.0.w,
                height: 80.0.h,
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(2, 11, 28, 1).withOpacity(0.5),
                    //borderRadius: BorderRadius.circular(0.0),
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(25),
                        bottomLeft: Radius.circular(26)),
                    boxShadow: const [
                      BoxShadow(
                          color: Color.fromARGB(255, 228, 210, 210),
                          blurRadius: 10,
                          offset: Offset(-5, 5))
                    ]),
                child: Row(
                  children: [
                    const CircleAvatar(
                      //borderRadius: BorderRadius.circular(50),
                      backgroundImage:
                          AssetImage('lib/Images/Mzuzu_university_logo222.jpg'),
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
                            fontSize: 15.0.sp,
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
              height: 14.h,
            ),
            //5th
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MzuniHistory()),
                );
              },
              child: Container(
                margin: const EdgeInsets.all(8),
                width: 100.w,
                height: 90,
                decoration: BoxDecoration(
                    //color: const Color.fromRGBO(2, 11, 28, 1).withOpacity(0.5),
                    color:
                        const Color.fromARGB(255, 1, 13, 24).withOpacity(0.5),
                    // borderRadius: BorderRadius.circular(0.0),
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(25),
                        bottomLeft: Radius.circular(25)),
                    boxShadow: const [
                      BoxShadow(
                          color: Color.fromARGB(255, 226, 218, 211),
                          blurRadius: 10,
                          offset: Offset(-5, 5))
                    ]),
                child: Row(
                  children: [
                    const CircleAvatar(
                      //borderRadius: BorderRadius.circular(50),
                      backgroundImage:
                          AssetImage('lib/Images/Mzuzu_university_logo222.jpg'),
                      radius: 45,
                      child: FittedBox(
                        fit: BoxFit.cover,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'MZUNI\nBrief History',
                          style: GoogleFonts.roboto(
                              fontSize: 15.sp,
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
      ),
      //----------------------------------------------------------------------------------------
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          if (_isTextVisible)
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                const SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    // ignore: deprecated_member_use
                    launch(
                        "https://www.google.com/maps/search/?api=1&query=mzuni");
                  },
                  child: Text(
                    'Administration',
                    style: GoogleFonts.roboto(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      //color: const Color.fromARGB(255, 221, 213, 213)
                      color: const Color.fromARGB(255, 0, 10, 19),
                    ),
                    textAlign: TextAlign.end,
                  ),
                ),
                const SizedBox(
                  height: 5,
                  child: Column(
                    children: [Padding(padding: EdgeInsets.all(1.5))],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // ignore: deprecated_member_use
                    launch(
                        "https://www.google.com/maps/search/?api=1&query=mzuni-campuses");
                  },
                  child: Text(
                    'Campuses',
                    style: GoogleFonts.roboto(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      //color: const Color.fromARGB(255, 224, 212, 212)
                      color: const Color.fromARGB(255, 0, 10, 19),
                    ),
                    textAlign: TextAlign.end,
                  ),
                ),
                //3rd
                const SizedBox(
                  height: 5,
                  child: Column(
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
                      color: const Color.fromARGB(255, 0, 10, 19),
                    ),
                    textAlign: TextAlign.end,
                  ),
                ),
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
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      //color: Color.fromARGB(255, 235, 231, 231)
                      color: const Color.fromARGB(255, 0, 10, 19),
                    ),
                    textAlign: TextAlign.end,
                  ),
                ),
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
      //-----------------------------------------------------------------------------------
    );
  }
}

//mzuni faculties
class Mzuni_schools extends StatelessWidget {
  const Mzuni_schools({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 1, 11, 19),
        title: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Self Reliance Service Perfection ',
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.sp,
                    color: Colors.orange)),
            // Text(
            //   'Excellence For Life',
            //   style: TextStyle(fontSize: 18, color: Colors.white),
            // ),
          ],
        ),
      ),
      body: ListView(
        children: <Widget>[
          const SizedBox(
            height: 1,
          ),
          //1st
          Container(
            height: 120.h,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(50),
                ),
                //color: Color(0xFF363f93),
                color: Color.fromARGB(255, 2, 77, 3)),
            child: Stack(
              children: [
                Positioned(
                  top: 25,
                  left: 0,
                  child: Container(
                    height: 100,
                    width: 300,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(50),
                            bottomRight: Radius.circular(50))),
                  ),
                ),
                Positioned(
                    top: 50.h,
                    left: 40.w,
                    child: Text(
                      'MZUNI FACULTIES',
                      style: GoogleFonts.roboto(
                          fontSize: 20.sp,
                          color: const Color(0xFF363f93),
                          fontWeight: FontWeight.bold),
                    ))
              ],
            ),
          ),
          SizedBox(
            height: 7.h,
          ),
          //2nd
          //1st school
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Mzuni_edu()),
              );
            },
            child: Container(
              width: 200.0,
              height: 100.0,
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
                        'Faculty of ',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white.withOpacity(0.9),
                        ),
                        textAlign: TextAlign.start,
                      ),
                      Text(
                        'EDUCATION',
                        style: GoogleFonts.roboto(
                            fontSize: 16.sp,
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
            height: 7.0.h,
          ),
          //2nd school
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Mzuni_health()),
              );
            },
            child: Container(
              width: 200.0,
              height: 100.0,
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
                        'Faculty of ',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white.withOpacity(0.9),
                        ),
                        textAlign: TextAlign.start,
                      ),
                      Text(
                        'HEALTH SCIENCES',
                        style: GoogleFonts.roboto(
                            fontSize: 16.sp,
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
            height: 7.h,
          ),
          //3rd school
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Mzuni_humanity()),
              );
            },
            child: Container(
              width: 200.0,
              height: 100.0,
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
                        'Factulty of ',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white.withOpacity(0.9),
                        ),
                        textAlign: TextAlign.start,
                      ),
                      Text(
                        'HUMANITIES AND SOCIAL SCIENCES',
                        style: GoogleFonts.roboto(
                            fontSize: 16,
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
            height: 7.0.h,
          ),
          //4th school
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Mzuni_science()),
              );
            },
            child: Container(
              width: 200.0,
              height: 100.0,
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
                        'Faculty of ',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white.withOpacity(0.9),
                        ),
                        textAlign: TextAlign.start,
                      ),
                      Text(
                        'SCIENCE, TECHNOLOGY AND INNOVATION',
                        style: GoogleFonts.roboto(
                            fontSize: 15,
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
            height: 7.0.h,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Mzuni_enviro()),
              );
            },
            child: Container(
              width: 200.0,
              height: 100.0,
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
                        'Factulty of ',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white.withOpacity(0.9),
                        ),
                        textAlign: TextAlign.start,
                      ),
                      Text(
                        'ENVIRONMENTAL SCIENCES',
                        style: GoogleFonts.roboto(
                            fontSize: 16.sp,
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
            height: 7.0.h,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Mzuni_tourism()),
              );
            },
            child: Container(
              width: 200.0,
              height: 100.0,
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
                        'Factulty of ',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white.withOpacity(0.9),
                        ),
                        textAlign: TextAlign.start,
                      ),
                      Text(
                        'TOURISM, HOSPITALITY AND \nMANAGEMENT',
                        style: GoogleFonts.roboto(
                            fontSize: 16,
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
            height: 16.h,
          )
        ],
      ),
    );
  }
}

// fact of edu
class Mzuni_edu extends StatelessWidget {
  const Mzuni_edu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 1, 11, 19),
        title: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Mzuni, Faculty of Education',
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.bold,
                    fontSize: 17.sp,
                    color: Colors.orange)),
            // Text(
            //   'Excellence For Life',
            //   style: TextStyle(fontSize: 18, color: Colors.white),
            // ),
          ],
        ),
      ),
      body: Container(
        // decoration: const BoxDecoration(
        //   image: DecorationImage(
        //     image: AssetImage('lib/Images/gala_TEST_01.jpg'),
        //     fit: BoxFit.cover,
        //   ),
        // ),
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 1.h,
            ),
            //intro
            Container(
              height: 120.h,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(50),
                  ),
                  //color: Color(0xFF363f93),
                  color: Color.fromARGB(255, 223, 89, 134)),
              child: Stack(
                children: [
                  Positioned(
                    top: 30,
                    left: 0,
                    child: Container(
                      height: 70.0.h,
                      width: 270.w,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(50),
                              bottomRight: Radius.circular(50))),
                    ),
                  ),
                  Positioned(
                      top: 80,
                      left: 20,
                      child: Text(
                        'PROGRAMS',
                        style: GoogleFonts.roboto(
                            fontSize: 17.sp,
                            color: const Color(0xFF363f93),
                            fontWeight: FontWeight.bold),
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            //1st
            GestureDetector(
              onTap: () {},
              child: Container(
                width: 3.0.w,
                height: 60.0.h,
                decoration: const BoxDecoration(
                    //color: Color(0xFF363f93).withOpacity(0.8),
                    //color: Color.fromARGB(255, 223, 96, 174).withOpacity(0.8),
                    color: Color.fromARGB(255, 223, 96, 174),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(0),
                        topRight: Radius.circular(0)),
                    boxShadow: [
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
                        // Text(
                        //   'Faculty of ',
                        //   style: TextStyle(
                        //     fontSize: 18.0,
                        //     fontWeight: FontWeight.bold,
                        //     color: Colors.white.withOpacity(0.9),
                        //   ),
                        //   textAlign: TextAlign.start,
                        // ),
                        Text(
                          'Bachelor of Education (Languages)',
                          style: GoogleFonts.roboto(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.white.withOpacity(0.9)),
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
            //2nd
            GestureDetector(
              onTap: () {},
              child: Container(
                width: 3.0.w,
                height: 60.0.h,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 223, 96, 174),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(0),
                        topRight: Radius.circular(0)),
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xFF363f93),
                          blurRadius: 10,
                          offset: Offset(1, 5))
                    ]),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Bachelor of Education (Arts)',
                          style: GoogleFonts.roboto(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.white.withOpacity(0.9)),
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
            //3rd
            GestureDetector(
              onTap: () {},
              child: Container(
                width: 3.0.w,
                height: 60.0.h,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 223, 96, 174),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(0),
                        topRight: Radius.circular(0)),
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xFF363f93),
                          blurRadius: 10,
                          offset: Offset(1, 5))
                    ]),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Bachelor of Education (Science)',
                          style: GoogleFonts.roboto(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.white.withOpacity(0.9)),
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
            //4th
            GestureDetector(
              onTap: () {},
              child: Container(
                width: 3.0.w,
                height: 60.0.h,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 223, 96, 174),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(0),
                        topRight: Radius.circular(0)),
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xFF363f93),
                          blurRadius: 10,
                          offset: Offset(1, 5))
                    ]),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Bachelor of Education (Information \nand Communication Technology)*',
                          style: GoogleFonts.roboto(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.white.withOpacity(0.9)),
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
            //Blanck
            GestureDetector(
              onTap: () {},
              child: Container(
                width: 3.0.w,
                height: 60.h,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 224, 230, 224),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(0),
                        topRight: Radius.circular(0)),
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xFF363f93),
                          blurRadius: 10,
                          offset: Offset(1, 5))
                    ]),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '',
                          style: GoogleFonts.roboto(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white.withOpacity(0.9)),
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
            ),
            const Spacer(),
            DefaultTextStyle(
              style: const TextStyle(
                fontSize: 12,
                color: Colors.white54,
              ),
              child: Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 16.0,
                ),
                //child: Text('Terms of Service | Privacy Policy'),
                child: Text(
                  'Source | NCHE forms 2022/2023',
                  style: GoogleFonts.roboto(
                      color: const Color.fromARGB(255, 1, 18, 32)),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            //-----------------------------------------------------------------------------------------------------------------
          ],
        ),
      ),
    );
  }
}

//fact of health
class Mzuni_health extends StatelessWidget {
  const Mzuni_health({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 1, 11, 19),
        title: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Mzuni, Faculty of HEALTH SCIENCES',
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.bold,
                    fontSize: 13.sp,
                    color: Colors.orange)),
            // Text(
            //   'Excellence For Life',
            //   style: TextStyle(fontSize: 18, color: Colors.white),
            // ),
          ],
        ),
      ),
      body: Container(
        // decoration: const BoxDecoration(
        //   image: DecorationImage(
        //     image: AssetImage('lib/Images/gala_TEST_01.jpg'),
        //     fit: BoxFit.cover,
        //   ),
        // ),
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 1.h,
            ),
            //intro
            Container(
              height: 120.h,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(50),
                  ),
                  //color: Color(0xFF363f93),
                  color: Color.fromARGB(255, 223, 89, 134)),
              child: Stack(
                children: [
                  Positioned(
                    top: 30,
                    left: 0,
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
                      top: 80,
                      left: 20,
                      child: Text(
                        'PROGRAMS',
                        style: GoogleFonts.roboto(
                            fontSize: 16.sp,
                            color: const Color(0xFF363f93),
                            fontWeight: FontWeight.bold),
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 7.h,
            ),
            //1st
            GestureDetector(
              onTap: () {},
              child: Container(
                width: 3.0.w,
                height: 60.0.h,
                decoration: const BoxDecoration(
                    //color: Color(0xFF363f93).withOpacity(0.8),
                    //color: Color.fromARGB(255, 223, 96, 174).withOpacity(0.8),
                    color: Color.fromARGB(255, 223, 96, 174),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(0),
                        topRight: Radius.circular(0)),
                    boxShadow: [
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
                        // Text(
                        //   'Faculty of ',
                        //   style: TextStyle(
                        //     fontSize: 18.0,
                        //     fontWeight: FontWeight.bold,
                        //     color: Colors.white.withOpacity(0.9),
                        //   ),
                        //   textAlign: TextAlign.start,
                        // ),
                        Text(
                          'Bachelor of Science in Optometry (Honours) ',
                          style: GoogleFonts.roboto(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.white.withOpacity(0.9)),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 7.h,
            ),
            //2nd
            GestureDetector(
              onTap: () {},
              child: Container(
                width: 3.0.w,
                height: 60.0.h,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 223, 96, 174),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(0),
                        topRight: Radius.circular(0)),
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xFF363f93),
                          blurRadius: 10,
                          offset: Offset(1, 5))
                    ]),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Bachelor of Science in Biomedical \nSciences',
                          style: GoogleFonts.roboto(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.white.withOpacity(0.9)),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(
              height: 7.h,
            ),
            //3rd
            GestureDetector(
              onTap: () {},
              child: Container(
                width: 3.0.w,
                height: 60.0.h,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 223, 96, 174),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(0),
                        topRight: Radius.circular(0)),
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xFF363f93),
                          blurRadius: 10,
                          offset: Offset(1, 5))
                    ]),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Bachelor of Science in Nursing \nand Midwifery',
                          style: GoogleFonts.roboto(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.white.withOpacity(0.9)),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(
              height: 7.h,
            ),
            //Blanck
            GestureDetector(
              onTap: () {},
              child: Container(
                width: 3.0.w,
                height: 60.0.h,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 224, 230, 224),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(0),
                        topRight: Radius.circular(0)),
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xFF363f93),
                          blurRadius: 10,
                          offset: Offset(1, 5))
                    ]),
                child: const Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '',
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
            ),
            const Spacer(),
            DefaultTextStyle(
              style: const TextStyle(
                fontSize: 12,
                color: Colors.white54,
              ),
              child: Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 16.0,
                ),
                //child: Text('Terms of Service | Privacy Policy'),
                child: Text(
                  'Source | NCHE forms 2022/2023',
                  style: GoogleFonts.roboto(
                      color: const Color.fromARGB(255, 1, 18, 32)),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            //-----------------------------------------------------------------------------------------------------------------
          ],
        ),
      ),
    );
  }
}

//fact of humanity
class Mzuni_humanity extends StatelessWidget {
  const Mzuni_humanity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 1, 11, 19),
        title: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Mzuni, Faculty of HUMANITIES AND SOCIAL SCIENCES',
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.bold,
                    fontSize: 11.0.sp,
                    color: Colors.orange)),
            // Text(
            //   'Excellence For Life',
            //   style: TextStyle(fontSize: 18, color: Colors.white),
            // ),
          ],
        ),
      ),
      body: Container(
        // decoration: const BoxDecoration(
        //   image: DecorationImage(
        //     image: AssetImage('lib/Images/gala_TEST_01.jpg'),
        //     fit: BoxFit.cover,
        //   ),
        // ),
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 1.h,
            ),
            //intro
            Container(
              height: 120.h,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(50),
                  ),
                  //color: Color(0xFF363f93),
                  color: Color.fromARGB(255, 223, 89, 134)),
              child: Stack(
                children: [
                  Positioned(
                    top: 30,
                    left: 0,
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
                      top: 80,
                      left: 20,
                      child: Text(
                        'PROGRAMS',
                        style: GoogleFonts.roboto(
                            fontSize: 17.sp,
                            color: const Color(0xFF363f93),
                            fontWeight: FontWeight.bold),
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 8.h,
            ),
            //1st
            GestureDetector(
              onTap: () {},
              child: Container(
                width: 3.0.w,
                height: 60.0.h,
                decoration: const BoxDecoration(
                    //color: Color(0xFF363f93).withOpacity(0.8),
                    //color: Color.fromARGB(255, 223, 96, 174).withOpacity(0.8),
                    color: Color.fromARGB(255, 223, 96, 174),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(0),
                        topRight: Radius.circular(0)),
                    boxShadow: [
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
                        // Text(
                        //   'Faculty of ',
                        //   style: TextStyle(
                        //     fontSize: 18.0,
                        //     fontWeight: FontWeight.bold,
                        //     color: Colors.white.withOpacity(0.9),
                        //   ),
                        //   textAlign: TextAlign.start,
                        // ),
                        Text(
                          'Bachelor of Arts (Politics and Governance)',
                          style: GoogleFonts.roboto(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white.withOpacity(0.9)),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 7.h,
            ),
            //2nd
            GestureDetector(
              onTap: () {},
              child: Container(
                width: 3.0.w,
                height: 70.0.h,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 223, 96, 174),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(0),
                        topRight: Radius.circular(0)),
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xFF363f93),
                          blurRadius: 10,
                          offset: Offset(1, 5))
                    ]),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Bachelor of Arts (International \nRelations and Diplomacy)',
                          style: GoogleFonts.roboto(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.white.withOpacity(0.9)),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(
              height: 7.h,
            ),
            //3rd
            GestureDetector(
              onTap: () {},
              child: Container(
                width: 3.0.w,
                height: 60.0.h,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 223, 96, 174),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(0),
                        topRight: Radius.circular(0)),
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xFF363f93),
                          blurRadius: 10,
                          offset: Offset(1, 5))
                    ]),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Bachelor of Arts (Development Studies)',
                          style: GoogleFonts.roboto(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.white.withOpacity(0.9)),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 7.h,
            ),
            //4th
            GestureDetector(
              onTap: () {},
              child: Container(
                width: 3.0.w,
                height: 60.0.h,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 223, 96, 174),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(0),
                        topRight: Radius.circular(0)),
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xFF363f93),
                          blurRadius: 10,
                          offset: Offset(1, 5))
                    ]),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Bachelor of Arts (History and Heritage Studies)',
                          style: GoogleFonts.roboto(
                              fontSize: 15.0.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.white.withOpacity(0.9)),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 7.h,
            ),
            //5th
            GestureDetector(
              onTap: () {},
              child: Container(
                width: 3.0.w,
                height: 60.0.h,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 223, 96, 174),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(0),
                        topRight: Radius.circular(0)),
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xFF363f93),
                          blurRadius: 10,
                          offset: Offset(1, 5))
                    ]),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Bachelor of Arts (Theology and Religious \nStudies)',
                          style: GoogleFonts.roboto(
                              fontSize: 15.0.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.white.withOpacity(0.9)),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 7.h,
            ),
            //6th
            GestureDetector(
              onTap: () {},
              child: Container(
                width: 3.0.w,
                height: 60.0.h,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 223, 96, 174),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(0),
                        topRight: Radius.circular(0)),
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xFF363f93),
                          blurRadius: 10,
                          offset: Offset(1, 5))
                    ]),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Bachelor of Arts in Communication Studies',
                          style: GoogleFonts.roboto(
                              fontSize: 15.0.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.white.withOpacity(0.9)),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 7.0.h,
            ),
            //7th
            GestureDetector(
              onTap: () {},
              child: Container(
                width: 3.0.w,
                height: 60.0.h,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 223, 96, 174),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(0),
                        topRight: Radius.circular(0)),
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xFF363f93),
                          blurRadius: 10,
                          offset: Offset(1, 5))
                    ]),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Bachelor of Library and Information Science',
                          style: GoogleFonts.roboto(
                              fontSize: 15.0.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.white.withOpacity(0.9)),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

//---------------------------------------------------------------------------------
            SizedBox(
              height: 10.h,
            ),
            //Blanck
            GestureDetector(
              onTap: () {},
              child: Container(
                width: 3.0,
                height: 80.0,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 224, 230, 224),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(0),
                        topRight: Radius.circular(0)),
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xFF363f93),
                          blurRadius: 10,
                          offset: Offset(1, 5))
                    ]),
                child: const Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            const Spacer(),
            DefaultTextStyle(
              style: const TextStyle(
                fontSize: 12,
                color: Colors.white54,
              ),
              child: Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 16.0,
                ),
                //child: Text('Terms of Service | Privacy Policy'),
                child: Text(
                  'Source | NCHE forms 2022/2023',
                  style: GoogleFonts.roboto(
                      color: const Color.fromARGB(255, 1, 18, 32)),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            //-----------------------------------------------------------------------------------------------------------------
          ],
        ),
      ),
    );
  }
}

//fact of science
class Mzuni_science extends StatelessWidget {
  const Mzuni_science({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 1, 11, 19),
        title: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('FACULTY OF SCIENCE, TECHNOLOGY AND INNOVATION',
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.bold,
                    fontSize: 11.sp,
                    color: Colors.orange)),
            // Text(
            //   'Excellence For Life',
            //   style: TextStyle(fontSize: 18, color: Colors.white),
            // ),
          ],
        ),
      ),
      // ignore: avoid_unnecessary_containers
      body: Container(
        // decoration: const BoxDecoration(
        //   image: DecorationImage(
        //     image: AssetImage('lib/Images/gala_TEST_01.jpg'),
        //     fit: BoxFit.cover,
        //   ),
        // ),
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 1.h,
            ),
            //intro
            Container(
              height: 120.h,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(50),
                  ),
                  //color: Color(0xFF363f93),
                  color: Color.fromARGB(255, 223, 89, 134)),
              child: Stack(
                children: [
                  Positioned(
                    top: 30,
                    left: 0,
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
                      top: 80,
                      left: 20,
                      child: Text(
                        'PROGRAMS',
                        style: GoogleFonts.roboto(
                            fontSize: 17.sp,
                            color: const Color(0xFF363f93),
                            fontWeight: FontWeight.bold),
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 7.h,
            ),
            //1st
            GestureDetector(
              onTap: () {},
              child: Container(
                width: 3.0,
                height: 80.0,
                decoration: const BoxDecoration(
                    //color: Color(0xFF363f93).withOpacity(0.8),
                    //color: Color.fromARGB(255, 223, 96, 174).withOpacity(0.8),
                    color: Color.fromARGB(255, 223, 96, 174),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(0),
                        topRight: Radius.circular(0)),
                    boxShadow: [
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
                        // Text(
                        //   'Faculty of ',
                        //   style: TextStyle(
                        //     fontSize: 18.0,
                        //     fontWeight: FontWeight.bold,
                        //     color: Colors.white.withOpacity(0.9),
                        //   ),
                        //   textAlign: TextAlign.start,
                        // ),
                        Text(
                          'Bachelor of Science in Information and \nCommunication Technology',
                          style: GoogleFonts.roboto(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.white.withOpacity(0.9)),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 7.sp,
            ),
            //2nd
            GestureDetector(
              onTap: () {},
              child: Container(
                width: 3.0,
                height: 80.0,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 223, 96, 174),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(0),
                        topRight: Radius.circular(0)),
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xFF363f93),
                          blurRadius: 10,
                          offset: Offset(1, 5))
                    ]),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Bachelor of Science in \nRenewable Energy Technologies',
                          style: GoogleFonts.roboto(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.white.withOpacity(0.9)),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(
              height: 7.h,
            ),
            //3rd
            GestureDetector(
              onTap: () {},
              child: Container(
                width: 3.0,
                height: 80.0,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 223, 96, 174),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(0),
                        topRight: Radius.circular(0)),
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xFF363f93),
                          blurRadius: 10,
                          offset: Offset(1, 5))
                    ]),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Bachelor of Science in \nPhysics and Electronics',
                          style: GoogleFonts.roboto(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.white.withOpacity(0.9)),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 7.h,
            ),
            //4th
            GestureDetector(
              onTap: () {},
              child: Container(
                width: 3.0,
                height: 80.0,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 223, 96, 174),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(0),
                        topRight: Radius.circular(0)),
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xFF363f93),
                          blurRadius: 10,
                          offset: Offset(1, 5))
                    ]),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Bachelor of Science in Data Science',
                          style: GoogleFonts.roboto(
                              fontSize: 15.0.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.white.withOpacity(0.9)),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 7.h,
            ),
            //5th
            GestureDetector(
              onTap: () {},
              child: Container(
                width: 3.0,
                height: 80.0,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 223, 96, 174),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(0),
                        topRight: Radius.circular(0)),
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xFF363f93),
                          blurRadius: 10,
                          offset: Offset(1, 5))
                    ]),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Bachelor of Science in Chemistry',
                          style: GoogleFonts.roboto(
                              fontSize: 15.0.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.white.withOpacity(0.9)),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 7.h,
            ),
            //6th
            GestureDetector(
              onTap: () {},
              child: Container(
                width: 3.0,
                height: 80.0,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 223, 96, 174),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(0),
                        topRight: Radius.circular(0)),
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xFF363f93),
                          blurRadius: 10,
                          offset: Offset(1, 5))
                    ]),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Bachelor of Science in \nMathematical Sciences (Honours)',
                          style: GoogleFonts.roboto(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.white.withOpacity(0.9)),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

//---------------------------------------------------------------------------------
            SizedBox(
              height: 8.sp,
            ),
            //Blanck
            GestureDetector(
              onTap: () {},
              child: Container(
                width: 3.0,
                height: 80.0,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 224, 230, 224),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(0),
                        topRight: Radius.circular(0)),
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xFF363f93),
                          blurRadius: 10,
                          offset: Offset(1, 5))
                    ]),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '',
                          style: GoogleFonts.roboto(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white.withOpacity(0.9)),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const Spacer(),
            DefaultTextStyle(
              style: const TextStyle(
                fontSize: 12,
                color: Colors.white54,
              ),
              child: Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 16.0,
                ),
                //child: Text('Terms of Service | Privacy Policy'),
                child: Text(
                  'Source | NCHE forms 2022/2023',
                  style: GoogleFonts.roboto(
                      color: const Color.fromARGB(255, 1, 18, 32)),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            //-----------------------------------------------------------------------------------------------------------------
          ],
        ),
      ),
    );
  }
}

// fact enviromental
// ignore: camel_case_types
class Mzuni_enviro extends StatelessWidget {
  const Mzuni_enviro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 1, 11, 19),
        title: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('FACULTY OF ENVIRONMENTAL SCIENCES',
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.bold,
                    fontSize: 11.sp,
                    color: Colors.orange)),
            // Text(
            //   'Excellence For Life',
            //   style: TextStyle(fontSize: 18, color: Colors.white),
            // ),
          ],
        ),
      ),
      body: ListView(
        children: <Widget>[
          const SizedBox(
            height: 1,
          ),
          //intro
          Container(
            height: 120.h,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(50),
                ),
                //color: Color(0xFF363f93),
                color: Color.fromARGB(255, 223, 89, 134)),
            child: Stack(
              children: [
                Positioned(
                  top: 30,
                  left: 0,
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
                    top: 80,
                    left: 20,
                    child: Text(
                      'PROGRAMS',
                      style: GoogleFonts.roboto(
                          fontSize: 17.sp,
                          color: const Color(0xFF363f93),
                          fontWeight: FontWeight.bold),
                    ))
              ],
            ),
          ),
          SizedBox(
            height: 7.h,
          ),
          //1st
          GestureDetector(
            onTap: () {},
            child: Container(
              width: 3.0,
              height: 80.0,
              decoration: const BoxDecoration(
                  //color: Color(0xFF363f93).withOpacity(0.8),
                  //color: Color.fromARGB(255, 223, 96, 174).withOpacity(0.8),
                  color: Color.fromARGB(255, 223, 96, 174),
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(0),
                      topRight: Radius.circular(0)),
                  boxShadow: [
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
                      // Text(
                      //   'Faculty of ',
                      //   style: TextStyle(
                      //     fontSize: 18.0,
                      //     fontWeight: FontWeight.bold,
                      //     color: Colors.white.withOpacity(0.9),
                      //   ),
                      //   textAlign: TextAlign.start,
                      // ),
                      Text(
                        'Bachelor of Science (Forestry)',
                        style: GoogleFonts.roboto(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.white.withOpacity(0.9)),
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 7.h,
          ),
          //2nd
          GestureDetector(
            onTap: () {},
            child: Container(
              width: 3.0,
              height: 80.0,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 223, 96, 174),
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(0),
                      topRight: Radius.circular(0)),
                  boxShadow: [
                    BoxShadow(
                        color: Color(0xFF363f93),
                        blurRadius: 10,
                        offset: Offset(1, 5))
                  ]),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Bachelor of Science (Fisheries \nand Aquatic Sciences) ',
                        style: GoogleFonts.roboto(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.white.withOpacity(0.9)),
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          SizedBox(
            height: 7.h,
          ),
          //3rd
          GestureDetector(
            onTap: () {},
            child: Container(
              width: 3.0,
              height: 80.0,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 223, 96, 174),
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(0),
                      topRight: Radius.circular(0)),
                  boxShadow: [
                    BoxShadow(
                        color: Color(0xFF363f93),
                        blurRadius: 10,
                        offset: Offset(1, 5))
                  ]),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Bachelor of Science in Land \nbManagement (Land Surveying) ',
                        style: GoogleFonts.roboto(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.white.withOpacity(0.9)),
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 7.h,
          ),
          //4th
          GestureDetector(
            onTap: () {},
            child: Container(
              width: 3.0,
              height: 80.0,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 223, 96, 174),
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(0),
                      topRight: Radius.circular(0)),
                  boxShadow: [
                    BoxShadow(
                        color: Color(0xFF363f93),
                        blurRadius: 10,
                        offset: Offset(1, 5))
                  ]),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Bachelor of Science in \nLand Management (Estates Management) ',
                        style: GoogleFonts.roboto(
                            fontSize: 15.0.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.white.withOpacity(0.9)),
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 7.h,
          ),
          //5th
          GestureDetector(
            onTap: () {},
            child: Container(
              width: 3.0,
              height: 80.0,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 223, 96, 174),
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(0),
                      topRight: Radius.circular(0)),
                  boxShadow: [
                    BoxShadow(
                        color: Color(0xFF363f93),
                        blurRadius: 10,
                        offset: Offset(1, 5))
                  ]),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Bachelor of Science in Land \nManagement (Physical Planning)',
                        style: GoogleFonts.roboto(
                            fontSize: 15.0.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.white.withOpacity(0.9)),
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 7.h,
          ),
          //6th
          GestureDetector(
            onTap: () {},
            child: Container(
              width: 3.0,
              height: 80.0,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 223, 96, 174),
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(0),
                      topRight: Radius.circular(0)),
                  boxShadow: [
                    BoxShadow(
                        color: Color(0xFF363f93),
                        blurRadius: 10,
                        offset: Offset(1, 5))
                  ]),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Bachelor of Science (Water \nResources Management and Development) ',
                        style: GoogleFonts.roboto(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.white.withOpacity(0.9)),
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 7.h,
          ),
          //7th
          GestureDetector(
            onTap: () {},
            child: Container(
              width: 3.0,
              height: 80.0,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 223, 96, 174),
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(0),
                      topRight: Radius.circular(0)),
                  boxShadow: [
                    BoxShadow(
                        color: Color(0xFF363f93),
                        blurRadius: 10,
                        offset: Offset(1, 5))
                  ]),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Bachelor of Science in Value \nChain Agriculture ',
                        style: GoogleFonts.roboto(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.white.withOpacity(0.9)),
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          //8th
          GestureDetector(
            onTap: () {},
            child: Container(
              width: 3.0,
              height: 80.0,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 223, 96, 174),
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(0),
                      topRight: Radius.circular(0)),
                  boxShadow: [
                    BoxShadow(
                        color: Color(0xFF363f93),
                        blurRadius: 10,
                        offset: Offset(1, 5))
                  ]),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Bachelor of Science in \nTransformative Community Development ',
                        style: GoogleFonts.roboto(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.white.withOpacity(0.9)),
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          //---------------------------------------------------------------------------------
          SizedBox(
            height: 8.h,
          ),
          //Blanck
          GestureDetector(
            onTap: () {},
            child: Container(
              width: 3.0,
              height: 80.0,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 224, 230, 224),
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(0),
                      topRight: Radius.circular(0)),
                  boxShadow: [
                    BoxShadow(
                        color: Color(0xFF363f93),
                        blurRadius: 10,
                        offset: Offset(1, 5))
                  ]),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '',
                        style: GoogleFonts.roboto(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white.withOpacity(0.9)),
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          const Spacer(),
          DefaultTextStyle(
            style: const TextStyle(
              fontSize: 12,
              color: Colors.white54,
            ),
            child: Container(
              margin: const EdgeInsets.symmetric(
                vertical: 16.0,
              ),
              //child: Text('Terms of Service | Privacy Policy'),
              child: Text(
                'Source | NCHE forms 2022/2023',
                style: GoogleFonts.roboto(
                    color: const Color.fromARGB(255, 1, 18, 32)),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          //-----------------------------------------------------------------------------------------------------------------
        ],
      ),
    );
  }
}

//fact tourism
// ignore: camel_case_types
class Mzuni_tourism extends StatelessWidget {
  const Mzuni_tourism({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 1, 11, 19),
        title: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('FACULTY OF TOURISM, HOSPITALITY AND MANAGEMENT',
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.bold,
                    fontSize: 13.sp,
                    color: Colors.orange)),
            // Text(
            //   'Excellence For Life',
            //   style: TextStyle(fontSize: 18, color: Colors.white),
            // ),
          ],
        ),
      ),
      body: Container(
        // decoration: const BoxDecoration(
        //   image: DecorationImage(
        //     image: AssetImage('lib/Images/gala_TEST_01.jpg'),
        //     fit: BoxFit.cover,
        //   ),
        // ),
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 1.h,
            ),
            //intro
            Container(
              height: 120.h,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(50),
                  ),
                  //color: Color(0xFF363f93),
                  color: Color.fromARGB(255, 223, 89, 134)),
              child: Stack(
                children: [
                  Positioned(
                    top: 30,
                    left: 0,
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
                      top: 80,
                      left: 20,
                      child: Text(
                        'PROGRAMS',
                        style: GoogleFonts.roboto(
                            fontSize: 17.sp,
                            color: const Color(0xFF363f93),
                            fontWeight: FontWeight.bold),
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 7.h,
            ),
            //1st
            GestureDetector(
              onTap: () {},
              child: Container(
                width: 3.0,
                height: 80.0,
                decoration: const BoxDecoration(
                    //color: Color(0xFF363f93).withOpacity(0.8),
                    //color: Color.fromARGB(255, 223, 96, 174).withOpacity(0.8),
                    color: Color.fromARGB(255, 223, 96, 174),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(0),
                        topRight: Radius.circular(0)),
                    boxShadow: [
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
                        // Text(
                        //   'Faculty of ',
                        //   style: TextStyle(
                        //     fontSize: 18.0,
                        //     fontWeight: FontWeight.bold,
                        //     color: Colors.white.withOpacity(0.9),
                        //   ),
                        //   textAlign: TextAlign.start,
                        // ),
                        Text(
                          'Bachelor of Science (Tourism) ',
                          style: GoogleFonts.roboto(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.white.withOpacity(0.9)),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 7.h,
            ),
            //2nd
            GestureDetector(
              onTap: () {},
              child: Container(
                width: 3.0,
                height: 80.0,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 223, 96, 174),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(0),
                        topRight: Radius.circular(0)),
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xFF363f93),
                          blurRadius: 10,
                          offset: Offset(1, 5))
                    ]),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Bachelor of Arts \n(Culture and Heritage Tourism)',
                          style: GoogleFonts.roboto(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.white.withOpacity(0.9)),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(
              height: 7.h,
            ),
            //3rd
            GestureDetector(
              onTap: () {},
              child: Container(
                width: 3.0,
                height: 80.0,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 223, 96, 174),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(0),
                        topRight: Radius.circular(0)),
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xFF363f93),
                          blurRadius: 10,
                          offset: Offset(1, 5))
                    ]),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Bachelor of Science \n(Hospitality Management)',
                          style: GoogleFonts.roboto(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.white.withOpacity(0.9)),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            //4th
            SizedBox(
              height: 7.h,
            ),

            GestureDetector(
              onTap: () {},
              child: Container(
                width: 3.0,
                height: 80.0,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 223, 96, 174),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(0),
                        topRight: Radius.circular(0)),
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xFF363f93),
                          blurRadius: 10,
                          offset: Offset(1, 5))
                    ]),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Bachelor of Culinary Arts ',
                          style: GoogleFonts.roboto(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.white.withOpacity(0.9)),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            //5th
            SizedBox(
              height: 7.h,
            ),

            GestureDetector(
              onTap: () {},
              child: Container(
                width: 3.0,
                height: 80.0,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 223, 96, 174),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(0),
                        topRight: Radius.circular(0)),
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xFF363f93),
                          blurRadius: 10,
                          offset: Offset(1, 5))
                    ]),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          ' Bachelor of Arts (Sports Management)',
                          style: GoogleFonts.roboto(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.white.withOpacity(0.9)),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(
              height: 7.h,
            ),
            //Blanck
            GestureDetector(
              onTap: () {},
              child: Container(
                width: 3.0,
                height: 80.0,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 224, 230, 224),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(0),
                        topRight: Radius.circular(0)),
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xFF363f93),
                          blurRadius: 10,
                          offset: Offset(1, 5))
                    ]),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '',
                          style: GoogleFonts.roboto(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white.withOpacity(0.9)),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const Spacer(),
            DefaultTextStyle(
              style: const TextStyle(
                fontSize: 12,
                color: Colors.white54,
              ),
              child: Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 16.0,
                ),
                //child: Text('Terms of Service | Privacy Policy'),
                child: Text(
                  'Source | NCHE forms 2022/2023',
                  style: GoogleFonts.roboto(
                      color: const Color.fromARGB(255, 1, 18, 32)),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            //-----------------------------------------------------------------------------------------------------------------
          ],
        ),
      ),
    );
  }
}

//all pgs
class MzuniAllProgs extends StatefulWidget {
  const MzuniAllProgs({super.key});

  @override
  State<MzuniAllProgs> createState() => _MzuniAllProgramsState();
}

class _MzuniAllProgramsState extends State<MzuniAllProgs> {
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
        title: const Text('Mzuni Website Navigation'),
      ),
      body: Center(
        child: GestureDetector(
          // Wrap Text in GestureDetector
          onTap: _launchWebsite,
          child: Text(
            _isOnline ? 'Click to Vist MZUNI Website ' : 'You are offline',
            style: TextStyle(
                color: _isOnline ? Colors.blue : Colors.grey,
                decoration:
                    _isOnline ? TextDecoration.underline : TextDecoration.none,
                fontSize: 25,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

  void _launchWebsite() async {
    if (_isOnline) {
      try {
        // ignore: deprecated_member_use
        await launch('https://www.mzuni.ac.mw/');
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

//location
class MzuniLocation extends StatelessWidget {
  const MzuniLocation({super.key});

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
      "Currently...\n\nMail Address. University Registrar Mzuzu University P / Bag 201, Luwinga,Mzuzu. Email. ur@mzuni.ac.mw. ";
}

//history
class MzuniHistory extends StatelessWidget {
  const MzuniHistory({super.key});

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
      "Mzuzu University was established by an Act of Parliament in 1997 as the second public university";
}
