import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mapu_mw/main.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class MustMainPage extends StatefulWidget {
  const MustMainPage({super.key});

  @override
  State<MustMainPage> createState() => _MustMainPageState();
}

class _MustMainPageState extends State<MustMainPage> {
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
              'M U S T ',
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

//-------------------------------

        child: ListView(
          children: <Widget>[
            //----------------------------------

            //---------------------------------
            SizedBox(
              height: 15.0.h,
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
                  MaterialPageRoute(builder: (context) => const Must_schools()),
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
                        topRight: Radius.circular(30),
                        bottomLeft: Radius.circular(30)),
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
                      backgroundImage:
                          AssetImage('lib/Images/MustLOGO-copy.jpg'),
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
                              fontSize: 16.sp, fontWeight: FontWeight.bold),
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
            //2nd
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  //need to change website
                  MaterialPageRoute(builder: (context) => MustAllProgs()),
                );
              },
              child: Container(
                margin: const EdgeInsets.all(8),
                width: 100.0.w,
                height: 80.0.h,
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(2, 11, 28, 1).withOpacity(0.5),
                    // borderRadius: BorderRadius.circular(0.0),
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(30),
                        bottomLeft: Radius.circular(30)),
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
                      backgroundImage:
                          AssetImage('lib/Images/MustLOGO-copy.jpg'),
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
              height: 15.h,
            ),
            //3rd
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  //need to change website
                  MaterialPageRoute(builder: (context) => MustLocation()),
                );
              },
              child: Container(
                margin: EdgeInsets.all(8),
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
                          offset: Offset(-10, 10))
                    ]),
                child: Row(
                  children: [
                    const CircleAvatar(
                      //borderRadius: BorderRadius.circular(50),
                      backgroundImage:
                          AssetImage('lib/Images/MustLOGO-copy.jpg'),
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
              height: 15.h,
            ),
            //4th
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  //need to change website
                  MaterialPageRoute(builder: (context) => MustAllProgs()),
                );
              },
              child: Container(
                margin: EdgeInsets.all(8),
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
                          offset: Offset(-10, 10))
                    ]),
                child: Row(
                  children: [
                    const CircleAvatar(
                      //borderRadius: BorderRadius.circular(50),
                      backgroundImage:
                          AssetImage('lib/Images/MustLOGO-copy.jpg'),
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
              height: 15.0.h,
            ),
            //5th
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MustHistory()),
                );
              },
              child: Container(
                margin: EdgeInsets.all(8),
                width: 100.w,
                height: 80.h,
                decoration: BoxDecoration(
                    //color: const Color.fromRGBO(2, 11, 28, 1).withOpacity(0.5),
                    color: const Color.fromARGB(255, 1, 13, 24).withOpacity(0.5),
                    // borderRadius: BorderRadius.circular(0.0),
                    borderRadius: const BorderRadius.only(topRight: Radius.circular(30), bottomLeft: Radius.circular(30)),
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
                      backgroundImage:
                          AssetImage('lib/Images/MustLOGO-copy.jpg'),
                      radius: 45,
                      child: FittedBox(
                        fit: BoxFit.cover,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'MUST\nBrief History',
                          style: GoogleFonts.roboto(
                              fontSize: 15.0.sp,
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
      //--------------------------------------------------------------------------
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
                        "https://www.google.com/maps/search/?api=1&query=malawi_university_of_science_and_technology");
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
                        "https://www.google.com/maps/search/?api=1&query=malawi_university_of_science_and_technology-campuses");
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
      //--------------------------------------------------------------------------
    );
  }
}

//schools ( A L L)
// ignore: camel_case_types
class Must_schools extends StatelessWidget {
  const Must_schools({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 1, 11, 19),
        title: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Where Excellence Reigns',
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
                    top: 40,
                    left: 0,
                    child: Container(
                      height: 70.h,
                      width: 250.w,
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
                        'MUST PROGRAMS',
                        style: GoogleFonts.roboto(
                            fontSize: 18.sp,
                            color: const Color(0xFF363f93),
                            fontWeight: FontWeight.bold),
                      ))
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            //1st
            GestureDetector(
              onTap: () {},
              child: Container(
                margin: const EdgeInsets.all(5),
                width: 3.0.w,
                height: 60.0.h,
                decoration: BoxDecoration(
                    //color: Color(0xFF363f93).withOpacity(0.8),
                    //color: Color.fromARGB(255, 223, 96, 174).withOpacity(0.8),
                    color: const Color.fromARGB(255, 223, 96, 174),
                    // borderRadius: BorderRadius.only(
                    //     bottomRight: Radius.circular(0),
                    //     topRight: Radius.circular(0)),
                    borderRadius: BorderRadius.circular(10.0),
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
                          ' Bachelor of Engineering Biomedical \n Engineering (Honours)',
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
              height: 5.0.h,
            ),
            //2nd
            GestureDetector(
              onTap: () {},
              child: Container(
                margin: const EdgeInsets.all(5),
                width: 3.w,
                height: 60.h,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 223, 96, 174),
                    // borderRadius: BorderRadius.only(
                    //     bottomRight: Radius.circular(0),
                    //     topRight: Radius.circular(0)),
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: const [
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
                          ' Bachelor of Engineering Chemical \n Engineering (Honours)',
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
            //3rd
            SizedBox(
              height: 5.sp,
            ),

            GestureDetector(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.all(5),
                width: 3.0.w,
                height: 60.0.h,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 223, 96, 174),
                    borderRadius: BorderRadius.circular(10.0),
                    // borderRadius: BorderRadius.only(
                    //     bottomRight: Radius.circular(0),
                    //     topRight: Radius.circular(0)),
                    boxShadow: const [
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
                          'Bachelor of Engineering Metallurgy and \nMaterials Engineering (Honours)',
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
              height: 5.h,
            ),

            GestureDetector(
              onTap: () {},
              child: Container(
                margin: const EdgeInsets.all(5),
                width: 3.0.w,
                height: 60.0.h,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 223, 96, 174),
                    // borderRadius: BorderRadius.only(
                    //     bottomRight: Radius.circular(0),
                    //     topRight: Radius.circular(0)),
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: const [
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
                          'Bachelor of Science in Computer \nSystems and Security',
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
              height: 5.h,
            ),

            GestureDetector(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.all(5),
                width: 3.0.w,
                height: 60.0.h,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 223, 96, 174),
                    // borderRadius: BorderRadius.only(
                    //     bottomRight: Radius.circular(0),
                    //     topRight: Radius.circular(0)),
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: const [
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
                          'Bachelor of Science in Business \nInformation Technology',
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
            //6
            SizedBox(
              height: 5.h,
            ),

            GestureDetector(
              onTap: () {},
              child: Container(
                margin: const EdgeInsets.all(5),
                width: 3.0.w,
                height: 60.0.h,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 223, 96, 174),
                    // borderRadius: BorderRadius.only(
                    //     bottomRight: Radius.circular(0),
                    //     topRight: Radius.circular(0)),
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: const [
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
                          'Bachelor of Engineering Manufacturing \nEngineering (Honours)',
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
            //7
            SizedBox(
              height: 5.h,
            ),

            GestureDetector(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.all(5),
                width: 3.0.w,
                height: 60.0.h,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 223, 96, 174),
                    // borderRadius: BorderRadius.only(
                    //     bottomRight: Radius.circular(0),
                    //     topRight: Radius.circular(0)),
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: const [
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
                          'Bachelor of Engineering Textile \nEngineering (Honours)',
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
            //8
            SizedBox(
              height: 5.h,
            ),

            GestureDetector(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.all(5),
                width: 3.0.w,
                height: 60.0.h,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 223, 96, 174),
                    // borderRadius: BorderRadius.only(
                    //     bottomRight: Radius.circular(0),
                    //     topRight: Radius.circular(0)),
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: const [
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
                          'Bachelorof Science in Food Science \nand Technology',
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
            //9
            SizedBox(
              height: 5.0.h,
            ),

            GestureDetector(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.all(5),
                width: 3.0.w,
                height: 60.0.h,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 223, 96, 174),
                    // borderRadius: BorderRadius.only(
                    //     bottomRight: Radius.circular(0),
                    //     topRight: Radius.circular(0)),
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: const [
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
                          'Bachelor Science in Mathematical Sciences',
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
            //10
            SizedBox(
              height: 5.sp,
            ),

            GestureDetector(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.all(5),
                width: 3.0.w,
                height: 60.0.h,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 223, 96, 174),
                    // borderRadius: BorderRadius.only(
                    //     bottomRight: Radius.circular(0),
                    //     topRight: Radius.circular(0)),
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: const [
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
                          'Bachelor of Science Education',
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
            //11
            SizedBox(
              height: 5.h,
            ),

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
                          'Bachelor of Science in Earth Sciences \n(Geology)',
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
            //12
            SizedBox(
              height: 5.h,
            ),

            GestureDetector(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.all(5),
                width: 3.0.w,
                height: 60.0.h,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 223, 96, 174),
                    // borderRadius: BorderRadius.only(
                    //     bottomRight: Radius.circular(0),
                    //     topRight: Radius.circular(0)),
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: const [
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
                          'Bachelor of Science in Geo-Information \nand Earth Observation Science',
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
            //13
            SizedBox(
              height: 5.h,
            ),

            GestureDetector(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.all(5),
                width: 3.0.w,
                height: 60.0.h,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 223, 96, 174),
                    // borderRadius: BorderRadius.only(
                    //     bottomRight: Radius.circular(0),
                    //     topRight: Radius.circular(0)),
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: const [
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
                          'Bachelor of Science in Meteorology and \nClimate Science',
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
            //14
            SizedBox(
              height: 5.h,
            ),

            GestureDetector(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.all(5),
                width: 3.0.w,
                height: 60.0.h,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 223, 96, 174),
                    // borderRadius: BorderRadius.only(
                    //     bottomRight: Radius.circular(0),
                    //     topRight: Radius.circular(0)),
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: const [
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
                          'Bachelor of Science in Disaster Risk \nManagement',
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
            //15
            SizedBox(
              height: 5.h,
            ),

            GestureDetector(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.all(5),
                width: 3.0.w,
                height: 60.0.h,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 223, 96, 174),
                    // borderRadius: BorderRadius.only(
                    //     bottomRight: Radius.circular(0),
                    //  topRight: Radius.circular(0)),
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: const [
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
                          'Bachelor of Science in Water Quality \nand Management',
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
            //16
            SizedBox(
              height: 5.h,
            ),

            GestureDetector(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.all(5),
                width: 3.0.w,
                height: 60.h,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 223, 96, 174),
                    // borderRadius: BorderRadius.only(
                    //     bottomRight: Radius.circular(0),
                    //     topRight: Radius.circular(0)),
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: const [
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
                          'Bachelor of Science in Sustainable \nEnergy Systems',
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
            //16
            SizedBox(
              height: 5.h,
            ),

            GestureDetector(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.all(5),
                width: 3.0.w,
                height: 60.0.h,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 223, 96, 174),
                    // borderRadius: BorderRadius.only(
                    //     bottomRight: Radius.circular(0),
                    //     topRight: Radius.circular(0)),
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: const [
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
                          ' Bachelor of Science in Petroleum \n Resources (Oil and Gas)',
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
            //17
            SizedBox(
              height: 5.0.h,
            ),

            GestureDetector(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.all(5),
                width: 3.0.w,
                height: 60.0.h,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 223, 96, 174),
                    // borderRadius: BorderRadius.only(
                    //     bottomRight: Radius.circular(0),
                    //     topRight: Radius.circular(0)),
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: const [
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
                          'Bachelor of Science in Sports Sciences',
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
            //18
            SizedBox(
              height: 5.h,
            ),

            GestureDetector(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.all(5),
                width: 3.0.w,
                height: 60.0.h,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 223, 96, 174),
                    // borderRadius: BorderRadius.only(
                    //     bottomRight: Radius.circular(0),
                    //     topRight: Radius.circular(0)),
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: const [
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
                          ' Bachelor of Science in Medical Microbiology',
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
            //19
            SizedBox(
              height: 5.h,
            ),

            GestureDetector(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.all(5),
                width: 3.0.w,
                height: 60.0.h,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 223, 96, 174),
                    // borderRadius: BorderRadius.only(
                    //     bottomRight: Radius.circular(0),
                    //     topRight: Radius.circular(0)),
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: const [
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
                          ' Bachelor of Science in Medical Imaging',
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
            //20
            SizedBox(
              height: 5.h,
            ),

            GestureDetector(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.all(5),
                width: 3.0.w,
                height: 60.0.h,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 223, 96, 174),
                    // borderRadius: BorderRadius.only(
                    //     bottomRight: Radius.circular(0),
                    //     topRight: Radius.circular(0)),
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: const [
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
                          ' Bachelor of Science in Immunology',
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
            //21
            SizedBox(
              height: 5.h,
            ),
            //22
            GestureDetector(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.all(5),
                width: 3.0.w,
                height: 60.0.h,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 223, 96, 174),
                    // borderRadius: BorderRadius.only(
                    //     bottomRight: Radius.circular(0),
                    //     topRight: Radius.circular(0)),
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: const [
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
                          ' Bachelor of Arts in African Musicology',
                          style: GoogleFonts.roboto(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.white.withOpacity(0.9)),
                          textAlign: TextAlign.start,
                          overflow: TextOverflow.ellipsis,
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
              onTap: () {},
              child: Container(
                margin: EdgeInsets.all(5),
                width: 3.0.w,
                height: 60.0.h,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 223, 96, 174),
                    // borderRadius: BorderRadius.only(
                    //     bottomRight: Radius.circular(0),
                    //     topRight: Radius.circular(0)),
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: const [
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
                          'Bachelor of Arts Language, Communication \nand Culture',
                          style: GoogleFonts.roboto(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.white.withOpacity(0.9)),
                          textAlign: TextAlign.start,
                          overflow: TextOverflow.ellipsis,
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
            //23
            GestureDetector(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.all(5),
                width: 3.0.w,
                height: 60.h,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 223, 96, 174),
                    // borderRadius: BorderRadius.only(
                    //     bottomRight: Radius.circular(0),
                    //     topRight: Radius.circular(0)),
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: const [
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
                          'Bachelor of Arts in Cultural Economy',
                          style: GoogleFonts.roboto(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.white.withOpacity(0.9)),
                          textAlign: TextAlign.start,
                          overflow: TextOverflow.ellipsis,
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

            GestureDetector(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.all(5),
                width: 3.0,
                height: 80.0,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 224, 230, 224),
                    // borderRadius: BorderRadius.only(
                    //     bottomRight: Radius.circular(0),
                    //     topRight: Radius.circular(0)),
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: const [
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
            Spacer(),
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

//All pgs
class MustAllProgs extends StatefulWidget {
  const MustAllProgs({super.key});

  @override
  State<MustAllProgs> createState() => _MustAllProgramsState();
}

class _MustAllProgramsState extends State<MustAllProgs> {
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
        title: const Text('MUST Website Navigation'),
      ),
      body: Center(
        child: GestureDetector(
          // Wrap Text in GestureDetector
          onTap: _launchWebsite,
          child: Text(
            _isOnline ? 'Click to Vist MUST Website ' : 'You are offline',
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
        await launch('https://www.must.ac.mw/');
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
class MustLocation extends StatelessWidget {
  const MustLocation({super.key});

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
      "Currently...\n\nAddress, P.O. Box 5196, Limbe, Blantyre ; Telephone, (+265) 014 780 00 ; E-mail, registrar@must.ac.mw · rmkandawire@must.ac.mw";
}

//history
class MustHistory extends StatelessWidget {
  const MustHistory({super.key});

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
      "The Malaŵi University of Science and Technology (MUST) was established by an Act of Parliament No. 31 of 2012 as the fourth public university in Malaŵi.";
}
