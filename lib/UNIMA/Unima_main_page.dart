import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mapu_mw/main.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class UnimaMainPage extends StatefulWidget {
  const UnimaMainPage({super.key});

  @override
  State<UnimaMainPage> createState() => _UnimaMainPageState();
}

class _UnimaMainPageState extends State<UnimaMainPage> {
  bool _isTextVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(194, 119, 7, 1).withOpacity(0.5),
        title: const Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'U N I M A',
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
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/Images/MustBack.jpg'),
            fit: BoxFit.cover,
          ),
        ),
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
                      builder: (context) => const Unima_schools()),
                );
              },
              child: Container(
                margin: const EdgeInsets.all(8),
                width: 100.w,
                height: 80.h,
                decoration: BoxDecoration(
                    color:
                        const Color.fromRGBO(194, 119, 7, 1).withOpacity(0.5),
                    //borderRadius: BorderRadius.circular(0.0),
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(21)),
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
                      backgroundImage: AssetImage('lib/Images/Unima.jpg'),
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
                              fontSize: 15.sp, fontWeight: FontWeight.bold),
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
                      builder: (context) => const UnimaAllProgs()),
                );
              },
              child: Container(
                margin: const EdgeInsets.all(8),
                width: 100.w,
                height: 80.h,
                decoration: BoxDecoration(
                    color:
                        const Color.fromRGBO(194, 119, 7, 1).withOpacity(0.5),
                    // borderRadius: BorderRadius.circular(0.0),
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(21)),
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
                      backgroundImage: AssetImage('lib/Images/Unima.jpg'),
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
            SizedBox(
              height: 13.0.h,
            ),
            //3rd
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  //need to change website
                  MaterialPageRoute(
                      builder: (context) => const UnimaLocation()),
                );
              },
              child: Container(
                margin: const EdgeInsets.all(8),
                width: 100.w,
                height: 80.h,
                decoration: BoxDecoration(
                    color:
                        const Color.fromRGBO(194, 119, 7, 1).withOpacity(0.5),
                    //borderRadius: BorderRadius.circular(0.0),
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(21),
                        bottomLeft: Radius.circular(21)),
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
                      backgroundImage: AssetImage('lib/Images/Unima.jpg'),
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
              height: 13.h,
            ),
            //4th
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  //need to change website
                  MaterialPageRoute(
                      builder: (context) => const UnimaAllProgs()),
                );
              },
              child: Container(
                margin: const EdgeInsets.all(8),
                width: 100.w,
                height: 80.h,
                decoration: BoxDecoration(
                    color:
                        const Color.fromRGBO(194, 119, 7, 1).withOpacity(0.5),
                    //borderRadius: BorderRadius.circular(0.0),
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(50),
                    ),
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
                      backgroundImage: AssetImage('lib/Images/Unima.jpg'),
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
              height: 13.h,
            ),
            //5th
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const UnimaHistory()),
                );
              },
              child: Container(
                margin: const EdgeInsets.all(8),
                width: 100.w,
                height: 80.h,
                decoration: BoxDecoration(
                    //color: const Color.fromRGBO(2, 11, 28, 1).withOpacity(0.5),
                    color: const Color.fromRGBO(194, 119, 7, 1).withOpacity(0.5),
                    // borderRadius: BorderRadius.circular(0.0),
                    borderRadius: const BorderRadius.only(topRight: Radius.circular(21), bottomLeft: Radius.circular(21)),
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
                      backgroundImage: AssetImage('lib/Images/Unima.jpg'),
                      radius: 45,
                      child: FittedBox(
                        fit: BoxFit.cover,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'UNIMA\nBrief History',
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
                    launch(
                        "https://www.google.com/maps/search/?api=1&query=university_of_malawi");
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
                    launch(
                        "https://www.google.com/maps/search/?api=1&query=university_of_malawi");
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

//Unima factulties
// ignore: camel_case_types
class Unima_schools extends StatelessWidget {
  const Unima_schools({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(194, 119, 7, 1).withOpacity(0.5),
        title: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('The Fourth Arm of Government ',
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
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 1.h,
          ),
          //1st
          Container(
            height: 120.h,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(50),
              ),
              //color: Color(0xFF363f93),
              color: const Color.fromRGBO(38, 23, 1, 1).withOpacity(0.5),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 40,
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
                      'UNIMA SCHOOLS',
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
          //2nd
          //1st school
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Unima_edu()),
              );
            },
            child: Container(
              width: 170.0.w,
              height: 70.0.h,
              decoration: BoxDecoration(
                  //color: Color(0xFF363f93).withOpacity(0.8),
                  color: const Color.fromRGBO(194, 119, 7, 1).withOpacity(0.5),
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
                        'School of ',
                        style: TextStyle(
                          fontSize: 16.0.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.white.withOpacity(0.9),
                        ),
                        textAlign: TextAlign.start,
                      ),
                      Text(
                        'EDUCATION',
                        style: GoogleFonts.roboto(
                            fontSize: 17.sp,
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
            height: 9.h,
          ),
          //2nd school
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Unima_arts()),
              );
            },
            child: Container(
              width: 170.0.w,
              height: 70.0.h,
              decoration: BoxDecoration(
                  //color: Color(0xFF363f93).withOpacity(0.8),
                  color: const Color.fromRGBO(194, 119, 7, 1).withOpacity(0.5),
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
                        'School of ',
                        style: TextStyle(
                          fontSize: 16.0.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.white.withOpacity(0.9),
                        ),
                        textAlign: TextAlign.start,
                      ),
                      Text(
                        'ARTS, COMMUNICATION AND DESIGN',
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
            height: 9.h,
          ),
          //3rd school
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Unima_natural()),
              );
            },
            child: Container(
              width: 170.w,
              height: 70.0.h,
              decoration: BoxDecoration(
                  //color: Color(0xFF363f93).withOpacity(0.8),
                  color: const Color.fromRGBO(194, 119, 7, 1).withOpacity(0.5),
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
                        'School of ',
                        style: TextStyle(
                          fontSize: 15.0.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.white.withOpacity(0.9),
                        ),
                        textAlign: TextAlign.start,
                      ),
                      Text(
                        'NATURAL AND APPLIED SCIENCES',
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
            height: 9.h,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Unima_law()),
              );
            },
            child: Container(
              width: 170.0.w,
              height: 70.0.h,
              decoration: BoxDecoration(
                  //color: Color(0xFF363f93).withOpacity(0.8),
                  color: const Color.fromRGBO(194, 119, 7, 1).withOpacity(0.5),
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
                        'School of ',
                        style: TextStyle(
                          fontSize: 15.0.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.white.withOpacity(0.9),
                        ),
                        textAlign: TextAlign.start,
                      ),
                      Text(
                        'LAW, ECONOMICS AND GOVERNMENT',
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
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Unima_humanity()),
              );
            },
            child: Container(
              width: 17.0.w,
              height: 70.0.h,
              decoration: BoxDecoration(
                  //color: Color(0xFF363f93).withOpacity(0.8),
                  color: const Color.fromRGBO(194, 119, 7, 1).withOpacity(0.5),
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
                        'School of ',
                        style: TextStyle(
                          fontSize: 15.0.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.white.withOpacity(0.9),
                        ),
                        textAlign: TextAlign.start,
                      ),
                      Text(
                        'HUMANITIES AND SOCIAL SCIENCES ',
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
            height: 10.h,
          )
        ],
      ),
    );
  }
}

//fact of education
// ignore: camel_case_types
class Unima_edu extends StatelessWidget {
  const Unima_edu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 49, 29, 2),
        title: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Unima, School of Education',
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.sp,
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
                color: Color.fromARGB(255, 212, 144, 8)),
            child: Stack(
              children: [
                Positioned(
                  top: 30,
                  left: 0,
                  child: Container(
                    height: 70.h,
                    width: 170.w,
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
              width: 3.0.w,
              height: 60.0.h,
              decoration: const BoxDecoration(
                  //color: Color(0xFF363f93).withOpacity(0.8),
                  //color: Color.fromARGB(255, 223, 96, 174).withOpacity(0.8),
                  color: Color.fromARGB(255, 128, 80, 3),
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
                        'Bachelor of Education (Biological Sciences)',
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
              height: 60.h,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 109, 83, 4),
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
                        'Bachelor of Education (Chemistry)',
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
                  color: Color.fromARGB(255, 99, 65, 2),
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
                        'Bachelor of Education (Computer Science)',
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
          //4th
          GestureDetector(
            onTap: () {},
            child: Container(
              width: 3.0.w,
              height: 60.0.h,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 75, 51, 2),
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
                        'Bachelor of Education (Human Ecology)',
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
          //5th
          GestureDetector(
            onTap: () {},
            child: Container(
              width: 3.0.w,
              height: 60.0.h,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 75, 51, 2),
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
                        'Bachelor of Education (Language)',
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
          //6th
          GestureDetector(
            onTap: () {},
            child: Container(
              width: 3.0.w,
              height: 60.0.h,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 75, 51, 2),
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
                        'Bachelor of Education (Mathematics)',
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
          //8th
          GestureDetector(
            onTap: () {},
            child: Container(
              width: 3.0.w,
              height: 60.0.h,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 75, 51, 2),
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
                        'Bachelor of Education (Social Studies)',
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
          //--------------------------------------------------------------------------------------
          SizedBox(
            height: 7.h,
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
    );
  }
}

//fact of arts
// ignore: camel_case_types
class Unima_arts extends StatelessWidget {
  const Unima_arts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 49, 29, 2),
        title: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Unima, School of ARTS, COMMUNICATION AND DESIGN',
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.bold,
                    fontSize: 12.sp,
                    color: Colors.orange)),
            // Text(
            //   'Excellence For Life',
            //   style: TextStyle(fontSize: 18, color: Colors.white),
            // ),
          ],
        ),
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
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
                  color: Color.fromARGB(255, 212, 144, 8)),
              child: Stack(
                children: [
                  Positioned(
                    top: 30,
                    left: 0,
                    child: Container(
                      height: 70.h,
                      width: 170.w,
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
                width: 3.0.w,
                height: 60.0.h,
                decoration: const BoxDecoration(
                    //color: Color(0xFF363f93).withOpacity(0.8),
                    //color: Color.fromARGB(255, 223, 96, 174).withOpacity(0.8),
                    color: Color.fromARGB(255, 128, 80, 3),
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
                          'Bachelor of Arts (Communication and \nCultural Studies)',
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
                    color: Color.fromARGB(255, 109, 83, 4),
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
                          'Bachelor of Arts (Media for Development)',
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

            //--------------------------------------------------------------------------------------
            const SizedBox(
              height: 280,
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

//fact of natural
// ignore: camel_case_types
class Unima_natural extends StatelessWidget {
  const Unima_natural({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 49, 29, 2),
        title: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("NATURAL AND APPLIED SCIENCES",
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.sp,
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
                color: Color.fromARGB(255, 212, 144, 8)),
            child: Stack(
              children: [
                Positioned(
                  top: 30,
                  left: 0,
                  child: Container(
                    height: 70.h,
                    width: 170.w,
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
              width: 3.0.w,
              height: 60.0.h,
              decoration: const BoxDecoration(
                  //color: Color(0xFF363f93).withOpacity(0.8),
                  //color: Color.fromARGB(255, 223, 96, 174).withOpacity(0.8),
                  color: Color.fromARGB(255, 128, 80, 3),
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
                        'Bachelor of Science',
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
                  color: Color.fromARGB(255, 109, 83, 4),
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
                        'Bachelor of Science in Actuarial Sciences \n(Honours)',
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
                  color: Color.fromARGB(255, 99, 65, 2),
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
                        'Bachelor of Science in Biological Sciences',
                        style: GoogleFonts.roboto(
                            fontSize: 14.sp,
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
                  color: Color.fromARGB(255, 75, 51, 2),
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
                        'Bachelor of Early Childhood Development',
                        style: GoogleFonts.roboto(
                            fontSize: 14.sp,
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
                  color: Color.fromARGB(255, 75, 51, 2),
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
                        'Bachelor of Science in Chemistry (Honours) \n(with an option of BSc in Chemistry \nafter 4 years)',
                        style: GoogleFonts.roboto(
                            fontSize: 14.sp,
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
                  color: Color.fromARGB(255, 75, 51, 2),
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
                        'Bachelor of Science in Computer \nNetwork Engineering',
                        style: GoogleFonts.roboto(
                            fontSize: 14.sp,
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
          //8th
          GestureDetector(
            onTap: () {},
            child: Container(
              width: 3.0.w,
              height: 60.0.h,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 75, 51, 2),
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
                        'Bachelor of Science in Computer Science',
                        style: GoogleFonts.roboto(
                            fontSize: 14.0.sp,
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
          //9th
          GestureDetector(
            onTap: () {},
            child: Container(
              width: 3.0.w,
              height: 60.0.h,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 75, 51, 2),
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
                        'Bachelor of Science in Electronics',
                        style: GoogleFonts.roboto(
                            fontSize: 14.sp,
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
          //10th
          GestureDetector(
            onTap: () {},
            child: Container(
              width: 3.0.w,
              height: 60.0.h,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 75, 51, 2),
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
                        'Bachelor of Science in Family and \nConsumer Sciences',
                        style: GoogleFonts.roboto(
                            fontSize: 14.0.sp,
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
          //11th
          GestureDetector(
            onTap: () {},
            child: Container(
              width: 3.0.w,
              height: 60.h,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 75, 51, 2),
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
                        'Bachelor of Science in Food and Nutrition',
                        style: GoogleFonts.roboto(
                            fontSize: 14.sp,
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
          //12th
          GestureDetector(
            onTap: () {},
            child: Container(
              width: 3.0.w,
              height: 60.0.h,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 75, 51, 2),
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
                        'Bachelor of Science in Geography',
                        style: GoogleFonts.roboto(
                            fontSize: 14.sp,
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
          //13th
          GestureDetector(
            onTap: () {},
            child: Container(
              width: 3.0.w,
              height: 60.0.h,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 75, 51, 2),
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
                        'Bachelor of Science in Information Systems',
                        style: GoogleFonts.roboto(
                            fontSize: 14.0.sp,
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
          //13th
          GestureDetector(
            onTap: () {},
            child: Container(
              width: 3.0.w,
              height: 60.0.h,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 75, 51, 2),
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
                        'Bachelor of Science in Mathematics',
                        style: GoogleFonts.roboto(
                            fontSize: 14.sp,
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
          //13th
          GestureDetector(
            onTap: () {},
            child: Container(
              width: 3.0.w,
              height: 60.0.h,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 75, 51, 2),
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
                        'Bachelor of Science in Physics',
                        style: GoogleFonts.roboto(
                            fontSize: 14.sp,
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
          //13th
          GestureDetector(
            onTap: () {},
            child: Container(
              width: 3.0.w,
              height: 60.0.h,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 75, 51, 2),
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
                        'Bachelor of Science in Statistics',
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

          //--------------------------------------------------------------------------------------
          SizedBox(
            height: 7.h,
          ),
          //Blanck
          GestureDetector(
            onTap: () {},
            child: Container(
              width: 3.0.w,
              height: 60.0.sp,
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
    );
  }
}

//fact of law

// ignore: camel_case_types
class Unima_law extends StatelessWidget {
  const Unima_law({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 49, 29, 2),
        title: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('SCHOOL OF LAW ECONOMICS AND GOVERNMENT',
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.bold,
                    fontSize: 12.sp,
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
            height: 120.sp,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(50),
                ),
                //color: Color(0xFF363f93),
                color: Color.fromARGB(255, 212, 144, 8)),
            child: Stack(
              children: [
                Positioned(
                  top: 30,
                  left: 0,
                  child: Container(
                    height: 70.h,
                    width: 270.0.w,
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
                          fontSize: 17.0.sp,
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
                  color: Color.fromARGB(255, 128, 80, 3),
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
                        'Bachelor of Arts in Development Economics',
                        style: GoogleFonts.roboto(
                            fontSize: 14.0.sp,
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

          GestureDetector(
            onTap: () {},
            child: Container(
              width: 3.0.w,
              height: 60.0.h,
              decoration: const BoxDecoration(
                  //color: Color(0xFF363f93).withOpacity(0.8),
                  //color: Color.fromARGB(255, 223, 96, 174).withOpacity(0.8),
                  color: Color.fromARGB(255, 128, 80, 3),
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
                        'Bachelor of Arts in Development Economics',
                        style: GoogleFonts.roboto(
                            fontSize: 14.0.sp,
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

          GestureDetector(
            onTap: () {},
            child: Container(
              width: 3.0.w,
              height: 60.0.h,
              decoration: const BoxDecoration(
                  //color: Color(0xFF363f93).withOpacity(0.8),
                  //color: Color.fromARGB(255, 223, 96, 174).withOpacity(0.8),
                  color: Color.fromARGB(255, 128, 80, 3),
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
                        'Bachelor of Arts (Public Administration)',
                        style: GoogleFonts.roboto(
                            fontSize: 14.sp,
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

          GestureDetector(
            onTap: () {},
            child: Container(
              width: 3.0.w,
              height: 60.0.h,
              decoration: const BoxDecoration(
                  //color: Color(0xFF363f93).withOpacity(0.8),
                  //color: Color.fromARGB(255, 223, 96, 174).withOpacity(0.8),
                  color: Color.fromARGB(255, 128, 80, 3),
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
                        'Bachelor of Arts (Political Science)',
                        style: GoogleFonts.roboto(
                            fontSize: 14.0.sp,
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

          GestureDetector(
            onTap: () {},
            child: Container(
              width: 3.0.w,
              height: 60.0.h,
              decoration: const BoxDecoration(
                  //color: Color(0xFF363f93).withOpacity(0.8),
                  //color: Color.fromARGB(255, 223, 96, 174).withOpacity(0.8),
                  color: Color.fromARGB(255, 128, 80, 3),
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
                        'Bachelor of Social Science in Law \nEnforcement Management and Leadership',
                        style: GoogleFonts.roboto(
                            fontSize: 14.0.sp,
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

          //--------------------------------------------------------------------------------------
          SizedBox(
            height: 20.h,
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
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          //------------------------------------------------------------------------------
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
    );
  }
}

// school of humanities

// ignore: camel_case_types
class Unima_humanity extends StatelessWidget {
  const Unima_humanity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 49, 29, 2),
        title: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('SCHOOL OF HUMANITIES AND SOCIAL SCIENCES',
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.bold,
                    fontSize: 12.sp,
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
                color: Color.fromARGB(255, 212, 144, 8)),
            child: Stack(
              children: [
                Positioned(
                  top: 30,
                  left: 0,
                  child: Container(
                    height: 70.h,
                    width: 170.w,
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
              width: 3.0.w,
              height: 60.0.h,
              decoration: const BoxDecoration(
                  //color: Color(0xFF363f93).withOpacity(0.8),
                  //color: Color.fromARGB(255, 223, 96, 174).withOpacity(0.8),
                  color: Color.fromARGB(255, 128, 80, 3),
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
                        'Bachelor of Arts in Psychology - HSS',
                        style: GoogleFonts.roboto(
                            fontSize: 14.sp,
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

          GestureDetector(
            onTap: () {},
            child: Container(
              width: 3.0.w,
              height: 60.0.h,
              decoration: const BoxDecoration(
                  //color: Color(0xFF363f93).withOpacity(0.8),
                  //color: Color.fromARGB(255, 223, 96, 174).withOpacity(0.8),
                  color: Color.fromARGB(255, 128, 80, 3),
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
                        'Bachelor of Arts in Social and Economic \nHistory',
                        style: GoogleFonts.roboto(
                            fontSize: 14.sp,
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

          GestureDetector(
            onTap: () {},
            child: Container(
              width: 3.0.w,
              height: 60.0.h,
              decoration: const BoxDecoration(
                  //color: Color(0xFF363f93).withOpacity(0.8),
                  //color: Color.fromARGB(255, 223, 96, 174).withOpacity(0.8),
                  color: Color.fromARGB(255, 128, 80, 3),
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
                        'Bachelor of Arts in Sociology',
                        style: GoogleFonts.roboto(
                            fontSize: 14.sp,
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
          SizedBox(height: 7.h),

          GestureDetector(
            onTap: () {},
            child: Container(
              width: 3.0.w,
              height: 60.0.h,
              decoration: const BoxDecoration(
                  //color: Color(0xFF363f93).withOpacity(0.8),
                  //color: Color.fromARGB(255, 223, 96, 174).withOpacity(0.8),
                  color: Color.fromARGB(255, 128, 80, 3),
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
                        'Bachelor of Social Science',
                        style: GoogleFonts.roboto(
                            fontSize: 14.0.sp,
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

          GestureDetector(
            onTap: () {},
            child: Container(
              width: 3.0.w,
              height: 60.0.h,
              decoration: const BoxDecoration(
                  //color: Color(0xFF363f93).withOpacity(0.8),
                  //color: Color.fromARGB(255, 223, 96, 174).withOpacity(0.8),
                  color: Color.fromARGB(255, 128, 80, 3),
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
                        'Bachelor of Arts (Theology)',
                        style: GoogleFonts.roboto(
                            fontSize: 14.sp,
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

          GestureDetector(
            onTap: () {},
            child: Container(
              width: 3.0.w,
              height: 60.0.h,
              decoration: const BoxDecoration(
                  //color: Color(0xFF363f93).withOpacity(0.8),
                  //color: Color.fromARGB(255, 223, 96, 174).withOpacity(0.8),
                  color: Color.fromARGB(255, 128, 80, 3),
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
                        'Bachelor of Social Science (Gender Studies)',
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
            height: 7.0.sp,
          ),

          GestureDetector(
            onTap: () {},
            child: Container(
              width: 3.0.w,
              height: 60.0.h,
              decoration: const BoxDecoration(
                  //color: Color(0xFF363f93).withOpacity(0.8),
                  //color: Color.fromARGB(255, 223, 96, 174).withOpacity(0.8),
                  color: Color.fromARGB(255, 128, 80, 3),
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
                        'Bachelor of Social Science (Social Work)',
                        style: GoogleFonts.roboto(
                            fontSize: 14.0.sp,
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
            height: 14.0.h,
          ),

          GestureDetector(
            onTap: () {},
            child: Container(
              width: 3.0.w,
              height: 60.0.h,
              decoration: const BoxDecoration(
                  //color: Color(0xFF363f93).withOpacity(0.8),
                  //color: Color.fromARGB(255, 223, 96, 174).withOpacity(0.8),
                  color: Color.fromARGB(255, 128, 80, 3),
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
                        'Bachelor of Arts (Humanities) HSS',
                        style: GoogleFonts.roboto(
                            fontSize: 14.sp,
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

          GestureDetector(
            onTap: () {},
            child: Container(
              width: 3.0.w,
              height: 60.0.h,
              decoration: const BoxDecoration(
                  //color: Color(0xFF363f93).withOpacity(0.8),
                  //color: Color.fromARGB(255, 223, 96, 174).withOpacity(0.8),
                  color: Color.fromARGB(255, 128, 80, 3),
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
                        'Bachelor of Social Science – Population \nStudies',
                        style: GoogleFonts.roboto(
                            fontSize: 14.sp,
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

          //--------------------------------------------------------------------------------------
          SizedBox(
            height: 8.h,
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
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          //------------------------------------------------------------------------------
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

//all pgs
class UnimaAllProgs extends StatefulWidget {
  const UnimaAllProgs({super.key});

  @override
  State<UnimaAllProgs> createState() => _UnimaAllProgramsState();
}

class _UnimaAllProgramsState extends State<UnimaAllProgs> {
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
        title: const Text('Unima Website Navigation'),
      ),
      body: Center(
        child: GestureDetector(
          // Wrap Text in GestureDetector
          onTap: _launchWebsite,
          child: Text(
            _isOnline ? 'Click to Vist UNIMA Website ' : 'You are offline',
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
        await launch('https://www.unima.ac.mw/');
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

// location
class UnimaLocation extends StatelessWidget {
  const UnimaLocation({super.key});

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
      "Currently...\n\nZomba. Malawi, Central Africa; University of Malawi, Chirunga Road, Zomba, Malawi; registrar@unima.ac.mw; +265 (0)111 624 222";
}

//history
class UnimaHistory extends StatelessWidget {
  const UnimaHistory({super.key});

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
                style: GoogleFonts.roboto(fontSize: 14.sp),
              )
            ],
          ),
        ),
      ),
    );
  }

  final String longText =
      "The University of Malawi (UNIMA, formerly Chancellor College) is the largest, oldest, inclusive public university in Malawi. Established in 1964, with the first enrolment of 90 students on 29th September 1965, UNIMA currently enrolls over 8,000 students in different undergraduate programmes in the following five Schools: Education; Arts, Communication and Design; Natural and Applied Sciences; Law, Economics and Government; Humanities and Social Sciences.";
}
