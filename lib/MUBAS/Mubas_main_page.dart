import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mapu_mw/main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MubasMainPage extends StatefulWidget {
  const MubasMainPage({super.key});

  @override
  State<MubasMainPage> createState() => _MubasMainPageState();
}

class _MubasMainPageState extends State<MubasMainPage> {
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
              'M U B A S',
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
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/KUHES/Pg_photos/Mubas_cover.jpg'),
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
                      builder: (context) => const Mubas_schools()),
                );
              },
              child: Container(
                margin: const EdgeInsets.all(8),
                width: 100.0.w,
                height: 80.0.h,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(2, 11, 28, 1).withOpacity(0.5),
                    //borderRadius: BorderRadius.circular(0.0),
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(25),
                        bottomLeft: Radius.circular(25)),
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
                      backgroundImage: AssetImage('lib/Images/Mubas.jpg'),
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
                            fontSize: 16.sp,
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
              height: 16.h,
            ),
            //2nd
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  //need to change website
                  MaterialPageRoute(builder: (context) => MubasAllProgs()),
                );
              },
              child: Container(
                margin: const EdgeInsets.all(8),
                width: 100.0.h,
                height: 80.0.w,
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(2, 11, 28, 1).withOpacity(0.5),
                    // borderRadius: BorderRadius.circular(0.0),
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(25),
                        bottomLeft: Radius.circular(25)),
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
                      backgroundImage: AssetImage('lib/Images/Mubas.jpg'),
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
              height: 16.0.sp,
            ),
            //3rd
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MubasLocation()),
                );
              },
              child: Container(
                margin: const EdgeInsets.all(8),
                width: 100.0.h,
                height: 80.0.w,
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(2, 11, 28, 1).withOpacity(0.5),
                    //borderRadius: BorderRadius.circular(0.0),
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(25),
                        bottomLeft: Radius.circular(25)),
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
                      backgroundImage: AssetImage('lib/Images/Mubas.jpg'),
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
                              fontSize: 16.0.sp,
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
              height: 16.0.sp,
            ),
            //4th
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MubasAllProgs()),
                );
              },
              child: Container(
                margin: const EdgeInsets.all(8),
                width: 100.0.h,
                height: 80.0.w,
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(2, 11, 28, 1).withOpacity(0.5),
                    //borderRadius: BorderRadius.circular(0.0),
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(25),
                        bottomLeft: Radius.circular(25)),
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
                      backgroundImage: AssetImage('lib/Images/Mubas.jpg'),
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
              height: 16.0.sp,
            ),
            //5th
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MubasHistory()),
                );
              },
              child: Container(
                margin: const EdgeInsets.all(8),
                width: 100.w,
                height: 80.0.h,
                decoration: BoxDecoration(
                    //color: const Color.fromRGBO(2, 11, 28, 1).withOpacity(0.5),
                    color: const Color.fromARGB(255, 1, 13, 24).withOpacity(0.5),
                    // borderRadius: BorderRadius.circular(0.0),
                    borderRadius: const BorderRadius.only(topRight: Radius.circular(25), bottomLeft: Radius.circular(25)),
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
                      backgroundImage: AssetImage('lib/Images/Mubas.jpg'),
                      radius: 45,
                      child: FittedBox(
                        fit: BoxFit.cover,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'MUBAS\nBrief History',
                          style: GoogleFonts.roboto(
                              fontSize: 16.sp,
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
      //---------------------------------------------------------------------
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
                    launch(
                        "https://www.google.com/maps/search/?api=1&query=mubas");
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
                        "https://www.google.com/maps/search/?api=1&query=mubas-campuses");
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
                  onTap: () {
                    Navigator.push(
                        context,
                        const MyHomePage1(backgroundColor: Colors.amber)
                            as Route<Object?>);
                  },
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
      //-----------------------------------------------------------------------
    );
  }
}

// faculties / Schools
// ignore: camel_case_types
class Mubas_schools extends StatelessWidget {
  const Mubas_schools({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 1, 11, 19),
        title: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Innovate Create Generate ',
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
            //1st
            Container(
              height: 140.h,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(50),
                  ),
                  //color: Color(0xFF363f93),
                  color: Color.fromARGB(255, 5, 1, 31)),
              child: Stack(
                children: [
                  Positioned(
                    top: 35.h,
                    left: 0.w,
                    child: Container(
                      height: 80.h,
                      width: 280.w,
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
                        'MUBAS SCHOOLS',
                        style: GoogleFonts.roboto(
                            fontSize: 18.sp,
                            color: Color(0xFF363f93),
                            fontWeight: FontWeight.bold),
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 8.h,
            ),
            //2nd
            //1st school
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SchoolBuild()),
                );
              },
              child: Container(
                width: 180.0.w,
                height: 80.0.h,
                decoration: BoxDecoration(
                    //color: Color(0xFF363f93).withOpacity(0.8),
                    color: Color.fromARGB(255, 5, 1, 31).withOpacity(0.8),
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
                          'BUILT ENIVIRONMENT',
                          style: GoogleFonts.roboto(
                              fontSize: 17.sp,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 232, 139, 17)
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
                  MaterialPageRoute(builder: (context) => SchoolBusiness()),
                );
              },
              child: Container(
                width: 180.w,
                height: 80.0.h,
                decoration: BoxDecoration(
                    //color: Color(0xFF363f93).withOpacity(0.8),
                    color: Color.fromARGB(255, 5, 1, 31).withOpacity(0.8),
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
                          'BUSINESS AND ECONOMIC SCIENCES',
                          style: GoogleFonts.roboto(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 232, 139, 17)
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
                  MaterialPageRoute(builder: (context) => SchoolEdu()),
                );
              },
              child: Container(
                width: 180.0.w,
                height: 80.0.h,
                decoration: BoxDecoration(
                    //color: Color(0xFF363f93).withOpacity(0.8),
                    color: Color.fromARGB(255, 5, 1, 31).withOpacity(0.8),
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
                          'EDUCATION, COMMUNICATION AND \nMEDIA STUDIES ',
                          style: GoogleFonts.roboto(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 232, 139, 17)
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
            //4th school
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SchoolEngine()),
                );
              },
              child: Container(
                width: 180.0.w,
                height: 80.0.h,
                decoration: BoxDecoration(
                    //color: Color(0xFF363f93).withOpacity(0.8),
                    color: Color.fromARGB(255, 5, 1, 31).withOpacity(0.8),
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
                          'ENGINEERING',
                          style: GoogleFonts.roboto(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 232, 139, 17)
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
                  MaterialPageRoute(builder: (context) => SchoolScience()),
                );
              },
              child: Container(
                width: 180.0.w,
                height: 80.0.h,
                decoration: BoxDecoration(
                    //color: Color(0xFF363f93).withOpacity(0.8),
                    color: Color.fromARGB(255, 5, 1, 31).withOpacity(0.8),
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
                          'SCIENCE AND TECHNOLOGY',
                          style: GoogleFonts.roboto(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 232, 139, 17)
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
              height: 16.sp,
            ),
          ],
        ),
      ),
    );
  }
}

//school of Build
class SchoolBuild extends StatelessWidget {
  const SchoolBuild({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 245, 194, 118),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 1, 20, 36),
        title: Column(
          children: [
            Text(
              'SCHOOL OF BUILT ENIVIRONMENT',
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
              padding: EdgeInsets.all(7),
              child: Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                  color: Colors.white.withOpacity(0.5),
                  width: 2,
                ))),
                child: Text(
                  'Bachelor of Science in Architecturaln\nStudies',
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.roboto(
                      fontSize: 15.sp, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(7),
              child: Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                  color: Colors.white.withOpacity(0.5),
                  width: 2.w,
                ))),
                child: Text(
                  'Bachelor of Science in Land Economy \n(Honours)',
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.roboto(
                      fontSize: 15.sp, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            //1st
            Padding(
              padding: EdgeInsets.all(7),
              child: Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                  color: Colors.white.withOpacity(0.5),
                  width: 2,
                ))),
                child: Text(
                  'Bachelor of Science in Land \nSurveying (Honours)',
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.roboto(
                      fontSize: 15.sp, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            //2nd
            Padding(
              padding: EdgeInsets.all(17),
              child: Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                  color: Colors.white.withOpacity(0.5),
                  width: 2,
                ))),
                child: Text(
                  'Bachelor of Science in Physical \nPlanning (Honours)',
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.roboto(
                      fontSize: 15.sp, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            //3rd
            Padding(
              padding: EdgeInsets.all(7),
              child: Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                  color: Colors.white.withOpacity(0.5),
                  width: 2,
                ))),
                child: Text(
                  'Bachelor of Science in Quantity \nSurveying (Honours) ',
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.roboto(
                      fontSize: 15.sp, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            //5th
            SizedBox(
              height: 20.h,
            )
          ],
        ),
      ),
    );
  }
}

//school of business

class SchoolBusiness extends StatelessWidget {
  const SchoolBusiness({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 245, 194, 118),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 1, 20, 36),
        title: Column(
          children: [
            Text(
              'SCHOOL OF BUSINESS AND ECONOMIC SCIENCES',
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
              padding: EdgeInsets.all(8),
              child: Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                  color: Colors.white.withOpacity(0.5),
                  width: 2,
                ))),
                child: Text(
                  'Bachelor of Accountancy',
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.roboto(
                      fontSize: 15.sp, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(7),
              child: Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                  color: Colors.white.withOpacity(0.5),
                  width: 2,
                ))),
                child: Text(
                  'Bachelor of Business Administration \n(Generic)',
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.roboto(
                      fontSize: 15.sp, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            //1st
            Padding(
              padding: EdgeInsets.all(7),
              child: Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                  color: Colors.white.withOpacity(0.5),
                  width: 2,
                ))),
                child: Text(
                  'Bachelor of Business Administration \n(Marketing)',
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.roboto(
                      fontSize: 15.sp, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            //2nd
            Padding(
              padding: EdgeInsets.all(7),
              child: Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                  color: Colors.white.withOpacity(0.5),
                  width: 2,
                ))),
                child: Text(
                  'Bachelor of Commerce in Internal Audit',
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.roboto(
                      fontSize: 15.sp, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            //3rd
            Padding(
              padding: EdgeInsets.all(7),
              child: Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                  color: Colors.white.withOpacity(0.5),
                  width: 2,
                ))),
                child: Text(
                  'Bachelor of Commerce(Taxation)',
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.roboto(
                      fontSize: 15.sp, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            //5th
            SizedBox(
              height: 7.h,
            ),
            Padding(
              padding: EdgeInsets.all(7),
              child: Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                  color: Colors.white.withOpacity(0.5),
                  width: 2,
                ))),
                child: Text(
                  'Bachelor of Commerce \n(Banking and Finance)',
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.roboto(
                      fontSize: 15.sp, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 7.h,
            ),
            Padding(
              padding: EdgeInsets.all(7),
              child: Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                  color: Colors.white.withOpacity(0.5),
                  width: 2,
                ))),
                child: Text(
                  'Bachelor of Commerce (Entrepreneurship)',
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.roboto(
                      fontSize: 15.sp, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 7.h,
            ),
            Padding(
              padding: EdgeInsets.all(7),
              child: Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                  color: Colors.white.withOpacity(0.5),
                  width: 2,
                ))),
                child: Text(
                  'Bachelor of Commerce \n(Tourism Management)',
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.roboto(
                      fontSize: 15.sp, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 7.h,
            ),
            Padding(
              padding: EdgeInsets.all(7),
              child: Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                  color: Colors.white.withOpacity(0.5),
                  width: 2,
                ))),
                child: Text(
                  'Bachelor of Procurement and Supply \nChain Management',
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

//school of education
class SchoolEdu extends StatelessWidget {
  const SchoolEdu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 245, 194, 118),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 1, 20, 36),
        title: Column(
          children: [
            Text(
              'SCHOOL OF EDUCATION, COMMUNICATION AND \nMEDIA STUDIES',
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
              padding: EdgeInsets.all(7),
              child: Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                  color: Colors.white.withOpacity(0.5),
                  width: 2,
                ))),
                child: Text(
                  'Bachelor of Arts in Business Communication ',
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.roboto(
                      fontSize: 15.sp, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(7),
              child: Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                  color: Colors.white.withOpacity(0.5),
                  width: 2,
                ))),
                child: Text(
                  'Bachelor of Education (Business Studies)',
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.roboto(
                      fontSize: 15.sp, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            //1st
            Padding(
              padding: EdgeInsets.all(7),
              child: Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                  color: Colors.white.withOpacity(0.5),
                  width: 2,
                ))),
                child: Text(
                  'Bachelor of Technical Education (Science)',
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.roboto(
                      fontSize: 15.sp, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            //2nd
            Padding(
              padding: EdgeInsets.all(7),
              child: Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                  color: Colors.white.withOpacity(0.5),
                  width: 2,
                ))),
                child: Text(
                  'Bachelor of Arts in Journalism',
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.roboto(
                      fontSize: 15.sp, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            //3rd
            Padding(
              padding: EdgeInsets.all(7),
              child: Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                  color: Colors.white.withOpacity(0.5),
                  width: 2,
                ))),
                child: Text(
                  'Bachelor of Technical Education \n(Technology)',
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.roboto(
                      fontSize: 15.sp, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),

            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}

// school of engineering
class SchoolEngine extends StatelessWidget {
  const SchoolEngine({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 245, 194, 118),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 1, 20, 36),
        title: Column(
          children: [
            Text(
              'SCHOOL OF ENGINEERING',
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
                  'Bachelor of Automobile Engineering \n(Honours)',
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.roboto(
                      fontSize: 15.sp, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(7),
              child: Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                  color: Colors.white.withOpacity(0.5),
                  width: 2,
                ))),
                child: Text(
                  'Bachelor of Biomedical Engineering \n(Honours)',
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.roboto(
                      fontSize: 15.sp, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            //1st
            Padding(
              padding: EdgeInsets.all(7),
              child: Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                  color: Colors.white.withOpacity(0.5),
                  width: 2,
                ))),
                child: Text(
                  'Bachelor of Civil Engineering - Structures \n(Honours)',
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.roboto(
                      fontSize: 15.sp, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            //2nd
            Padding(
              padding: EdgeInsets.all(7),
              child: Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                  color: Colors.white.withOpacity(0.5),
                  width: 2,
                ))),
                child: Text(
                  'Bachelor of Civil Engineering - \nTransportation (Honours)',
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
                  'Bachelor of Civil Engineering - Water \n(Honours)',
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
                  'Bachelor of Electronics and \nComputer Engineering (Honours)',
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
                  'Bachelor of Electrical and Electronics \nEngineering (Honours)',
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
                  'Bachelor of Electronics and \nTelecommunication Engineering (Hons)',
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
                  'Bachelor of Energy Engineering (Honours)',
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
                  'Bachelor of Geological Engineering \n(Honours)',
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
                  'Bachelor of Industrial Engineering \n(Honours)',
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
                  'Bachelor of Mechanical Engineering \n(Honours)',
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
                  'Bachelor of Metallurgy and Mineral \nProcessing Engineering (Honours)',
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.roboto(
                      fontSize: 15.sp, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(7),
              child: Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                  color: Colors.white.withOpacity(0.5),
                  width: 2,
                ))),
                child: Text(
                  'Bachelor of Mining Engineering \n(Honours)',
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.roboto(
                      fontSize: 15.sp, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),

            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}

//school of science

class SchoolScience extends StatelessWidget {
  const SchoolScience({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 245, 194, 118),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 1, 20, 36),
        title: Column(
          children: [
            Text(
              'SCHOOL OF SCIENCE AND TECHNOLOGY',
              style: GoogleFonts.roboto(color: Colors.orange, fontSize: 11.sp),
            )
          ],
        ),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 25.h,
            ),

            Padding(
              padding: EdgeInsets.all(7),
              child: Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                  color: Colors.white.withOpacity(0.5),
                  width: 2,
                ))),
                child: Text(
                  'Bachelor of Science in Environmental \nHealth',
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.roboto(
                      fontSize: 15.sp, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(7),
              child: Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                  color: Colors.white.withOpacity(0.5),
                  width: 2,
                ))),
                child: Text(
                  'Bachelor of Science in Occupational \nSafety and Health',
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.roboto(
                      fontSize: 15.sp, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            //1st
            Padding(
              padding: EdgeInsets.all(7),
              child: Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                  color: Colors.white.withOpacity(0.5),
                  width: 2,
                ))),
                child: Text(
                  'Bachelor of Science in Environmental \nManagement and Technology',
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.roboto(
                      fontSize: 15.sp, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            //2nd
            Padding(
              padding: EdgeInsets.all(7),
              child: Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                  color: Colors.white.withOpacity(0.5),
                  width: 2,
                ))),
                child: Text(
                  'Bachelor of Science in Industrial \nand Environmental Physics',
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.roboto(
                      fontSize: 15.sp, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            //3rd
            Padding(
              padding: EdgeInsets.all(7),
              child: Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                  color: Colors.white.withOpacity(0.5),
                  width: 2,
                ))),
                child: Text(
                  'Bachelor of Science in Food Science \nand Technology',
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.roboto(
                      fontSize: 15.sp, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            //5th

            Padding(
              padding: EdgeInsets.all(7),
              child: Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                  color: Colors.white.withOpacity(0.5),
                  width: 2,
                ))),
                child: Text(
                  'Bachelor of Science in Industrial \nLaboratory Technology',
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.roboto(
                      fontSize: 15.sp, fontWeight: FontWeight.bold),
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.all(7),
              child: Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                  color: Colors.white.withOpacity(0.5),
                  width: 2,
                ))),
                child: Text(
                  'Bachelor of Science in Information \nTechnology',
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.roboto(
                      fontSize: 15.sp, fontWeight: FontWeight.bold),
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.all(7),
              child: Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                  color: Colors.white.withOpacity(0.5),
                  width: 2,
                ))),
                child: Text(
                  'Bachelor of Science in Management \nInformation Systems',
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.roboto(
                      fontSize: 15.sp, fontWeight: FontWeight.bold),
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.all(7),
              child: Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                  color: Colors.white.withOpacity(0.5),
                  width: 2,
                ))),
                child: Text(
                  'Bachelor of Science in Mathematical \nSciences Education (Mathematics and \nComputing)',
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.roboto(
                      fontSize: 15.sp, fontWeight: FontWeight.bold),
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.all(7),
              child: Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                  color: Colors.white.withOpacity(0.5),
                  width: 2,
                ))),
                child: Text(
                  'Bachelor of Science in Mathematical \nSciences Education(Mathematics and \nStatistics)',
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.roboto(
                      fontSize: 15.sp, fontWeight: FontWeight.bold),
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.all(7),
              child: Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                  color: Colors.white.withOpacity(0.5),
                  width: 2,
                ))),
                child: Text(
                  'Bachelor of Science in Mathematical \nSciences Education(Statistics and \nComputing)',
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.roboto(
                      fontSize: 15.0.sp, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//all pgs

class MubasAllProgs extends StatefulWidget {
  const MubasAllProgs({super.key});

  @override
  State<MubasAllProgs> createState() => _MubasAllProgramsState();
}

class _MubasAllProgramsState extends State<MubasAllProgs> {
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
        title: const Text('MUBAS Website Navigation'),
      ),
      body: Center(
        child: GestureDetector(
          // Wrap Text in GestureDetector
          onTap: _launchWebsite,
          child: Text(
            _isOnline ? 'Click to Vist MUBAS' : 'You are offline',
            style: TextStyle(
                color: _isOnline
                    ? const Color.fromARGB(255, 0, 12, 22)
                    : Colors.grey,
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
        await launch('https://www.poly.ac.mw/');
      } catch (error) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Failed to launch website')),
        );
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('You are offline')),
      );
    }
  }
}

//location
class MubasLocation extends StatelessWidget {
  const MubasLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: EdgeInsets.all(50),
          padding: EdgeInsets.all(50),
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
      "Currently...\n\nPhysical Address, MUBAS - Administration Building. Postal Address, Private Bag 303, Chichiri, Blantyre 3. Phone, 0111871621. Email, registrar@poly.ac.mw ";
}

//history
class MubasHistory extends StatelessWidget {
  const MubasHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: EdgeInsets.all(50),
          padding: EdgeInsets.all(50),
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
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Text copied to clipboard')));
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
      "The Malawi University of Business and Applied Sciences (MUBAS) was established as a public university by Parliament Act No.19 of 2019. The University is positioned to meet the multineeds of industry and society at large, by offering a range of undergraduate programmes in the following Schools: Built Environment; Business and Economic Sciences; Education, Communication and Media Studies; Engineering; and Science and Technology";
}
