import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:mapu_mw/KUHES/Kuhesi_main_page.dart';
//import 'package:mapu_mw/LUARNAL/Luarnar_main_page.dart';
import 'package:mapu_mw/MUBAS/Mubas_main_page.dart';
import 'package:mapu_mw/MUST/Must_main_page.dart';
import 'package:mapu_mw/MZUNI/Mzuni_main_page.dart';
import 'package:mapu_mw/UNIMA/Unima_main_page.dart';
import 'package:mapu_mw/LUANAR/Luarnar_main_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:open_file/open_file.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(360, 690));
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          // title: ' Flutter ',
          theme: ThemeData(
            primarySwatch: Colors.yellow,
          ),
          home: const DefaultTabController(
            length: 1,
            child: MyHomePage1(
              //title: 'M A P U',
              backgroundColor: Colors.amber,
            ),
          )),
    );
  }
}

class MyHomePage1 extends StatefulWidget {
  const MyHomePage1({Key? key, required MaterialColor backgroundColor})
      : super(key: key);

  //final String title;

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePage1State createState() => _MyHomePage1State();
}

//-------------------------------fn of drawer
// 1st  test final advancedDrawerController = AdvancedDrawerController();
final _advancedDrawerController = AdvancedDrawerController();
//-------------------------------------------

class _MyHomePage1State extends State<MyHomePage1> {
  //.................................pdf
  //bool _downloading = false;
  //bool _offline = false;
  bool _isRed = false;
  //.................................pdf
  // ignore: unused_field
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
//-------------------------------------------------------------

//-------------------------------------------------------------
  //fb
//final String url = 'https://mzuni.ac.mw';
  //final uri = Uri.https('www.mzuni.ac.mw', '');
  //final uri2 = Uri.https('www.mzuni.ac.mw', '');
  //final uri3 = Uri.https('https://www.mzuni.ac.mw', '');
  // final uri3 = Uri.https('www.mzuni.ac.mw', '');

  //--------------------------------------------------------------------------------------------
  bool _showExtraButtons = false;
  //---------------------------------------------------------------------------------------====

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(360, 680));
    // ScreenUtil.init(context);
    return Scaffold(
      //backgroundColor: Colors.amber,
      appBar: AppBar(
          //backgroundColor: Colors.yellow,
          backgroundColor:
              const Color.fromRGBO(194, 119, 7, 1).withOpacity(0.5),
          title: Text(
            'M A P U',
            style: TextStyle(fontSize: 25.sp, fontWeight: FontWeight.bold),
          ) //Text(widget.title),
          ),
      //-----------------------------------------------------------------------------
      // body: Container(
      //     // mainAxisAlignment: MainAxisAlignment.center,
      //     decoration: const BoxDecoration(
      //       image: DecorationImage(
      //         image: AssetImage('lib/Images/gala_TEST_01.jpg'),
      //         fit: BoxFit.cover,
      //       ),
      //     ),
      //     child: ListView(
      //       children: <Widget>[
      //         const SizedBox(
      //           height: 10.0,
      //         ),
      //         //1st

      //         Container(
      //           width: 200.0,
      //           height: 100.0,
      //           //color: Colors.red,

      //           decoration: BoxDecoration(
      //             color: Colors.red,
      //             borderRadius: BorderRadius.circular(20.0),
      //           ),
      //           child: GestureDetector(
      //             onTap: () {
      //               Navigator.push(
      //                 context,
      //                 MaterialPageRoute(builder: (context) => MzuniMainPage()),
      //               );
      //             },
      //             child: Row(
      //               children: [
      //                 // Image.asset(
      //                 //   'lib/Images/Mzuzu_university_logo.jpeg',
      //                 //   width: 100.0,
      //                 //   height: 100.0,
      //                 // ),
      //                 ClipRRect(
      //                   borderRadius: BorderRadius.circular(50),
      //                   child: Image.asset(
      //                     'lib/Images/Mzuzu_university_logo.jpeg',
      //                     width: 90.0,
      //                     height: 90.0,
      //                   ),
      //                 ),

      //                 const Column(
      //                   crossAxisAlignment: CrossAxisAlignment.start,
      //                   children: [
      //                     Text(
      //                       'Title 1',
      //                       style: TextStyle(
      //                         fontSize: 20.0,
      //                         fontWeight: FontWeight.bold,
      //                         color: Colors.white,
      //                       ),
      //                     ),
      //                     Text(
      //                       'Subtitle 1',
      //                       style: TextStyle(
      //                         fontSize: 16.0,
      //                         color: Colors.white,
      //                       ),
      //                     ),
      //                   ],
      //                 ),
      //               ],
      //             ),
      //         ),
      //         ),

      //         const SizedBox(
      //           height: 10.0,
      //         ),
      //         //2nd
      //         Container(
      //           width: 200.0,
      //           height: 100.0,
      //           color: Colors.green,
      //           child: GestureDetector(
      //             onTap: () {
      //               Navigator.push(
      //                 context,
      //                 MaterialPageRoute(builder: (context) => LuarnaMainPage()),
      //               );
      //             },
      //             child: Row(
      //               children: [
      //                 ClipRRect(
      //                   borderRadius: BorderRadius.circular(50),
      //                   child: Image.asset(
      //                     'lib/Images/Luarnar.jpg',
      //                     width: 100.0,
      //                     height: 100.0,
      //                   ),
      //                 ),
      //                 const Column(
      //                   crossAxisAlignment: CrossAxisAlignment.start,
      //                   children: [
      //                     Text(
      //                       'Title 2',
      //                       style: TextStyle(
      //                         fontSize: 20.0,
      //                         fontWeight: FontWeight.bold,
      //                         color: Colors.white,
      //                       ),
      //                     ),
      //                     Text(
      //                       'Subtitle 2',
      //                       style: TextStyle(
      //                         fontSize: 16.0,
      //                         color: Colors.white,
      //                       ),
      //                     ),
      //                   ],
      //                 ),
      //               ],
      //             ),
      //           ),
      //         ),
      //         //3rd

      //         const SizedBox(
      //           height: 10.0,
      //         ),
      //         Container(
      //           width: 200.0,
      //           height: 100.0,
      //           color: Colors.blue,
      //           child: GestureDetector(
      //             onTap: () {
      //               Navigator.push(
      //                 context,
      //                 MaterialPageRoute(builder: (context) => KuhesMainPage()),
      //               );
      //             },
      //             child: Row(
      //               children: [
      //                 ClipRRect(
      //                   borderRadius: BorderRadius.circular(50),
      //                   child: Image.asset(
      //                     '',
      //                     width: 100.0,
      //                     height: 100.0,
      //                   ),
      //                 ),
      //                 const Column(
      //                   crossAxisAlignment: CrossAxisAlignment.start,
      //                   children: [
      //                     Text(
      //                       'Title 3',
      //                       style: TextStyle(
      //                         fontSize: 20.0,
      //                         fontWeight: FontWeight.bold,
      //                         color: Colors.white,
      //                       ),
      //                     ),
      //                     Text(
      //                       'Subtitle 3',
      //                       style: TextStyle(
      //                         fontSize: 16.0,
      //                         color: Colors.white,
      //                       ),
      //                     ),
      //                   ],
      //                 ),
      //               ],
      //             ),
      //           ),
      //         ),
      //       ],
      //     )
      //     ),

      //----------------------------------------------------------------------------------

      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/Images/gala_TEST_01.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 20.0.h,
              child: Text(
                'EXPLORE THE PUBLIC UNIVERSITIES IN MALAWI !',
                style: GoogleFonts.roboto(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.normal,
                    color: Colors.green),
                textAlign: TextAlign.center,
              ),
            ),
            //1st
            SizedBox(
              height: 20.h,
            ),

            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const KuhesMainPage()),
                );
              },
              child: Container(
                margin: const EdgeInsets.all(8),
                // width: 170.0.w,
                // height: 80.0.h,
                width: MediaQuery.of(context).size.width * 0.5,
                height: MediaQuery.of(context).size.height * 0.1,

                decoration: BoxDecoration(
                  //color: Color.fromARGB(255, 4, 5, 20).withOpacity(0.8),
                  //color: Color.fromARGB(255, 2, 8, 61).withOpacity(0.5),
                  // color: Color.fromRGBO(194, 119, 7, 1).withOpacity(0.5),
                  color: const Color.fromRGBO(194, 119, 7, 1),
                  // borderRadius:
                  //     BorderRadius.only(bottomRight: Radius.circular(50))
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Row(
                  children: [
                    const CircleAvatar(
                      //borderRadius: BorderRadius.circular(50),
                      backgroundImage: AssetImage('lib/Images/Kuhes.jpg'),
                      radius: 40,
                      child: FittedBox(
                        fit: BoxFit.cover,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'K U H e S',
                          style: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold,
                            color: const Color.fromARGB(255, 6, 0, 34),
                          ),
                        ),
                        Text(
                          'Kamuzu University of Healthy Sciences',
                          style: TextStyle(
                              fontSize: 13.0.sp,
                              fontWeight: FontWeight.normal,
                              //color: Color.fromARGB(255, 5, 1, 22),
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(
              height: 14.0,
            ),
            //2nd
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const LuarnaMainPage()),
                );
              },
              child: Container(
                margin: const EdgeInsets.all(8),
                width: MediaQuery.of(context).size.width * 0.5,
                height: MediaQuery.of(context).size.height * 0.1,
                //width: 170.0.w,
                //height: 80.0.h,
                //color: Colors.green,
                decoration: BoxDecoration(
                  //color: Color.fromARGB(255, 1, 8, 14).withOpacity(0.5),
                  // color: Color.fromARGB(255, 2, 8, 61).withOpacity(0.5),
                  //color: Color.fromRGBO(194, 119, 7, 1).withOpacity(0.5),
                  color: const Color.fromRGBO(194, 119, 7, 1),
                  //borderRadius: BorderRadius.circular(20.0),
                  // borderRadius:
                  //     BorderRadius.only(bottomRight: Radius.circular(50))
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Row(
                  children: [
                    // ClipRRect(
                    //   borderRadius: BorderRadius.circular(50),
                    //   child: Image.asset(
                    //     //'lib/Images/Kuhes.jpg',
                    //     'lib/Images/Luarnar.jpg',
                    //     // width: 100,
                    //     // height: 100.0,
                    //     width: 85.0.w,
                    //     height: 85.0.h,
                    //   ),
                    // ),
                    const CircleAvatar(
                      //borderRadius: BorderRadius.circular(50),
                      backgroundImage: AssetImage('lib/Images/Luarnar.jpg'),
                      radius: 40,
                      child: FittedBox(
                        fit: BoxFit.cover,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'L U A N A R',
                          style: TextStyle(
                            fontSize: 20.0.sp,
                            fontWeight: FontWeight.bold,
                            color: const Color.fromARGB(255, 9, 1, 32),
                          ),
                        ),
                        Text(
                          'Lilongwe University of Agriculture \nand Natural Resources',
                          style: TextStyle(
                              fontSize: 14.0.sp,
                              fontWeight: FontWeight.normal,
                              // color: Color.fromARGB(255, 6, 1, 37),
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            //3rd
            SizedBox(
              height: 15.0.h,
            ),
            //3rd
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const MubasMainPage()),
                );
              },
              child: Container(
                margin: const EdgeInsets.all(8),
                width: MediaQuery.of(context).size.width * 0.5,
                height: MediaQuery.of(context).size.height * 0.1,
                decoration: BoxDecoration(
                  //color: Color.fromARGB(255, 1, 7, 58).withOpacity(0.7),
                  //color: Color.fromARGB(255, 2, 8, 61).withOpacity(0.5),
                  //color: Color.fromRGBO(194, 119, 7, 1).withOpacity(0.5),
                  color: const Color.fromRGBO(194, 119, 7, 1),
                  // borderRadius:
                  //     BorderRadius.only(bottomRight: Radius.circular(50))
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Row(
                  children: [
                    const CircleAvatar(
                      //borderRadius: BorderRadius.circular(50),
                      backgroundImage: AssetImage('lib/Images/Mubas.jpg'),
                      radius: 40,
                      // child: FittedBox(
                      //  fit: BoxFit.cover,
                      // ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'M U B A S',
                          style: TextStyle(
                            fontSize: 20.0.sp,
                            fontWeight: FontWeight.bold,
                            color: const Color.fromARGB(255, 3, 1, 32),
                          ),
                        ),
                        Text(
                          'Malawi University of Business and \nApplied Sciences',
                          style: TextStyle(
                              fontSize: 14.0.sp,
                              fontWeight: FontWeight.normal,
                              //color: Color.fromARGB(255, 8, 1, 49),
                              // color: Colors.white.withOpacity(0.7)
                              color: Colors.white),
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
            //4th
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MustMainPage()),
                );
              },
              child: Container(
                margin: const EdgeInsets.all(8),
                width: MediaQuery.of(context).size.width * 0.5,
                height: MediaQuery.of(context).size.height * 0.1,
                decoration: BoxDecoration(
                  // color: Color.fromARGB(255, 2, 9, 65).withOpacity(0.5),
                  //color: Color.fromRGBO(194, 119, 7, 1).withOpacity(0.5),
                  color: const Color.fromRGBO(194, 119, 7, 1),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Row(
                  children: [
                    const CircleAvatar(
                      //borderRadius: BorderRadius.circular(50),
                      backgroundImage:
                          AssetImage('lib/Images/MustLOGO-copy.jpg'),
                      radius: 40,
                      child: FittedBox(
                        fit: BoxFit.cover,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'M U S T',
                          style: TextStyle(
                            fontSize: 20.0.sp,
                            fontWeight: FontWeight.bold,
                            color: const Color.fromARGB(255, 10, 1, 44),
                          ),
                        ),
                        Text(
                          'Malawi University of Science and\nTechnology',
                          style: TextStyle(
                              fontSize: 14.0.sp,
                              fontWeight: FontWeight.normal,
                              //color: Color.fromARGB(255, 17, 1, 44),
                              color: Colors.white),
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
                  MaterialPageRoute(
                      builder: (context) => const MzuniMainPage()),
                );
              },
              child: Container(
                margin: const EdgeInsets.all(8),
                width: MediaQuery.of(context).size.width * 0.5,
                height: MediaQuery.of(context).size.height * 0.1,
                decoration: BoxDecoration(
                  // color: const Color.fromARGB(255, 4, 152, 9),
                  // color: Colors.green.withOpacity(0.7),
                  // color: Color.fromARGB(255, 2, 8, 61).withOpacity(0.5),
                  //color: Color.fromRGBO(194, 119, 7, 1).withOpacity(0.5),
                  color: const Color.fromRGBO(194, 119, 7, 1),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Row(
                  children: [
                    const CircleAvatar(
                      //borderRadius: BorderRadius.circular(50),
                      backgroundImage:
                          AssetImage('lib/Images/Mzuzu_university_logo222.jpg'),
                      radius: 40,
                      child: FittedBox(
                        fit: BoxFit.cover,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'M Z U N I',
                          style: TextStyle(
                            fontSize: 20.0.sp,
                            fontWeight: FontWeight.bold,
                            color: const Color.fromARGB(255, 6, 0, 39),
                          ),
                        ),
                        Text(
                          'Mzuzu University',
                          style: TextStyle(
                              fontSize: 14.0.sp,
                              //color: Color.fromARGB(255, 5, 1, 31),
                              color: Colors.white,
                              fontWeight: FontWeight.normal),
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
            //6th
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const UnimaMainPage()),
                );
              },
              child: Container(
                margin: const EdgeInsets.all(8),
                width: MediaQuery.of(context).size.width * 0.5,
                height: MediaQuery.of(context).size.height * 0.1,
                decoration: BoxDecoration(
                  //color: Color.fromARGB(255, 2, 7, 59).withOpacity(0.5),
                  //color: Color.fromRGBO(194, 119, 7, 1).withOpacity(0.5),
                  color: const Color.fromRGBO(194, 119, 7, 1),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Row(
                  children: [
                    const CircleAvatar(
                      //borderRadius: BorderRadius.circular(50),
                      backgroundImage: AssetImage('lib/Images/Unima.jpg'),
                      radius: 40,
                      child: FittedBox(
                        fit: BoxFit.cover,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'U N I M A',
                          style: TextStyle(
                            fontSize: 20.0.sp,
                            fontWeight: FontWeight.bold,
                            color: const Color.fromARGB(255, 8, 1, 26),
                          ),
                        ),
                        Text(
                          'University of Malawi',
                          style: TextStyle(
                              fontSize: 14.0.sp,
                              fontWeight: FontWeight.normal,
                              //color: Color.fromARGB(255, 11, 1, 37),
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.0.h,
            )
          ],
        ),
      ),

      //---------------------------------------------------------------------------------

      drawer: AdvancedDrawer(
        backdrop: Container(
          width: double.infinity.w,
          height: double.infinity.h,
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.blueGrey, Colors.blueGrey.withOpacity(0.2)],
          )),
        ),
        controller: _advancedDrawerController,
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 500), //300
        animateChildDecoration: true,
        rtlOpening: false,
        // openScale: 1.0,
        disabledGestures: false,
        childDecoration: const BoxDecoration(
          // NOTICE: i have coment coz it cuases jerks some
          // boxShadow: <BoxShadow>[
          //   BoxShadow(
          //     color: Colors.black12,
          //     blurRadius: 0.0,
          //   ),
          // ],
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
        drawer: SafeArea(
          child: Container(
            child: ListTileTheme(
              //textColor: Colors.white,
              //textColor: Color.fromARGB(255, 2, 13, 22),
              //iconColor: Colors.white,
              iconColor: const Color.fromARGB(255, 1, 14, 25),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: 128.0.w,
                    height: 128.0.h,
                    margin: const EdgeInsets.only(
                      top: 24.0,
                      bottom: 64.0,
                    ),
                    clipBehavior: Clip.antiAlias,
                    decoration: const BoxDecoration(
                      color: Colors.black26,
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(
                      //'lib/Images/Luarnar.jpg',
                      'lib/Images/Screenshot_20240205_073451_Gallery.jpg',
                    ),
                  ),
                  const Text("+265 9846 716 70"),
                  const Text('reverblessig@gmail.com'),
                  SizedBox(
                    height: 23.h,
                  ),
                  ListTile(
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
                    leading: const Icon(Icons.home),
                    title: Text(
                      'Home',
                      style: GoogleFonts.roboto(),
                    ),
                  ),
                  ExpansionTile(
                    //onTap: () {},
                    leading: const Icon(Icons.account_circle),
                    title: Text(
                      'Social Media',
                      style: GoogleFonts.roboto(),
                    ), // The location of the expansion arrow icon
                    controlAffinity: ListTileControlAffinity.trailing,
                    // The controller to programmatically expand or collapse the tile
                    controller: ExpansionTileController(),
                    children: [
                      ///1st facebook

                      GestureDetector(
                        behavior: HitTestBehavior.translucent,
                        child: ListTile(
                            leading: const Icon(
                              Icons.facebook_rounded,
                              color: Color.fromARGB(255, 218, 85, 8),
                            ),
                            title: const Text(
                              'Facebook',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 241, 136, 75)),
                            ),
                            onTap: () async {
                              // Define the URL
                              const url =
                                  'https://www.facebook.com/profile.php?id=100095262228182&mibextid=ZbWKwL';
                              // Check if the URL can be launched
                              if (await canLaunch(url)) {
                                // Launch the URL
                                // ignore: deprecated_member_use
                                await launch(url);
                              } else {
                                // Handle the error
                                throw 'Could not launch $url';
                              }
                            }

                            // onTap: () async {
                            //   if (await canLaunchUrl(uri)) {
                            //     await launchUrl(uri);
                            //   } else {
                            //     ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            //       content: Text('Could not launch $uri'),
                            //     ));
                            //   }
                            //   ;
                            // },
                            ),
                      ),

                      GestureDetector(
                        child: ListTile(
                            leading: const Icon(
                              Icons.message_rounded,
                              color: Color.fromARGB(255, 224, 60, 10),
                            ),
                            title: const Text(
                              'WhatsApp',
                              style: TextStyle(color: Colors.orange),
                            ),
                            onTap: () async {
                              // Define the URL
                              const url = 'https://wa.me/265984671670';
                              // Check if the URL can be launched
                              // ignore: deprecated_member_use
                              if (await canLaunch(url)) {
                                // Launch the URL
                                // ignore: deprecated_member_use
                                await launch(url);
                              } else {
                                // Handle the error
                                throw 'Could not launch $url';
                              }
                            }

                            // onTap: () async {
                            //   if (await canLaunchUrl(uri2)) {
                            //     await launchUrl(uri2);
                            //   } else {
                            //     ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            //       content: Text('Could not launch $uri2'),
                            //     ));
                            //   }
                            // },
                            ),
                      ),

                      GestureDetector(
                        child: ListTile(
                            leading: const Icon(
                              Icons.message_rounded,
                              color: Color.fromARGB(255, 235, 54, 54),
                            ),
                            title: const Text(
                              'Instagram',
                              style: TextStyle(color: Colors.orange),
                            ),
                            onTap: () async {
                              // Define the URL
                              const url =
                                  'https://www.instagram.com/blessi-g ŕever';
                              // Check if the URL can be launched
                              // ignore: deprecated_member_use
                              if (await canLaunch(url)) {
                                // Launch the URL
                                // ignore: deprecated_member_use
                                await launch(url);
                              } else {
                                // Handle the error
                                throw 'Could not launch $url';
                              }
                            }),
                      ),
                    ],
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
                        'Developer Options | Version 2023.01',
                        style: GoogleFonts.roboto(
                            color: const Color.fromARGB(255, 1, 18, 32)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Text(
              'Malawi Public Universities',
              style: GoogleFonts.aBeeZee(
                  //color: Color.fromARGB(255, 228, 227, 218),
                  color: const Color.fromRGBO(194, 119, 7, 1),
                  fontWeight: FontWeight.bold),
            ),
            leading: IconButton(
              onPressed: _handleMenuButtonPressed,
              icon: ValueListenableBuilder<AdvancedDrawerValue>(
                valueListenable: _advancedDrawerController,
                builder: (_, value, __) {
                  return AnimatedSwitcher(
                    duration: const Duration(milliseconds: 250),
                    child: Icon(
                      value.visible ? Icons.clear : Icons.menu,
                      key: ValueKey<bool>(value.visible),
                    ),
                  );
                },
              ),
            ),
          ),

          // this is requred for Developer options i.e Rever
          body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('lib/Images/malaw.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: ListTileTheme(
                iconColor: const Color.fromARGB(255, 1, 14, 25),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: 128.0.w,
                      height: 128.0.h,
                      margin: const EdgeInsets.only(
                        top: 24.0,
                        bottom: 64.0,
                      ),
                      clipBehavior: Clip.antiAlias,
                      decoration: const BoxDecoration(
                        color: Colors.black26,
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset(
                        'lib/Images/Screenshot_20240116_210628_Chrome.jpg',
                      ),
                    ),
                    ListTile(
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
                      leading: const Icon(
                        Icons.home,
                        color: Colors.white,
                      ),
                      title: Text(
                        'Home',
                        style: GoogleFonts.roboto(
                            color: const Color.fromARGB(255, 243, 242, 238)),
                      ),
                    ),
                    // ListTile(
                    //     onTap: () {},
                    //     leading: const Icon(
                    //       Icons.favorite,
                    //       color: Colors.white,
                    //     ),
                    //     trailing: Icon(Icons.more_vert),
                    //     title: Text(
                    //       'Favourites',
                    //       style: GoogleFonts.roboto(color: Colors.white),
                    //     )
                    //     ),
                    //------------------------
                    ListTile(
                      onTap: () {},
                      //leading: const Icon(Icons.favorite),
                      leading: IconButton(
                        onPressed: () {
                          setState(() {
                            _isRed = !_isRed;
                          });
                        },
                        icon: Icon(
                          Icons.favorite,
                          color: _isRed ? Colors.red : Colors.white,
                        ),
                      ),
                      title: const Text(
                        'Favourites',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),

                    //-------------
                    ListTile(
                      onTap: () async {
                        // Check the network connectivity
                        var connectivityResult =
                            await (Connectivity().checkConnectivity());
                        if (connectivityResult == ConnectivityResult.none) {
                          // Show a message if offline
                          // ignore: use_build_context_synchronously
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Offline'),
                              duration: Duration(seconds: 1),
                            ),
                          );
                        } else {
                          // Show a loading indicator
                          // ignore: use_build_context_synchronously
                          showDialog(
                            context: context,
                            barrierDismissible: false,
                            builder: (context) => const Center(
                              child: CircularProgressIndicator(),
                            ),
                          );
                          // Download the pdf file
                          const url =
                              //'lib/PDF_files/NCHE-CallForApplications-2023 (1).pdf';
                              'https://drive.google.com/file/d/1giF9CKFNY7xKe0mxG-wL7wGPzyeTHUJv/view?usp=drive_link';
                          final file =
                              await DefaultCacheManager().getSingleFile(url);
                          // Dismiss the loading indicator
                          // ignore: use_build_context_synchronously
                          Navigator.pop(context);
                          // Open the pdf file with a suitable app
                          OpenFile.open(file.path);
                        }
                      },
                      leading: const Icon(
                        Icons.download,
                        color: Colors.white,
                      ),
                      trailing: const Icon(Icons.more_vert),
                      title: Text(
                        'Download pdf',
                        style: GoogleFonts.roboto(color: Colors.white),
                      ),
                    ),
                    //------------------------------------
                    // ListTile(
                    //   onTap: () async {
                    //     // Load the pdf file from assets
                    //     //final asset = 'lib/PDF_files/NCHE-CallForApplications-2023 (1).pdf';
                    //     //final file = await PdfDocument.loadAsset(asset);
                    //     //final file = await PdfDocument.loadAsset(asset);
                    //     var Pdfx;
                    //     final file = await Pdfx.loadAsset(
                    //         'lib/PDF_files/NCHE-CallForApplications-2023 (1).pdf');
                    //     // Open the pdf file with a suitable app
                    //     OpenFile.open(file.path);
                    //   },
                    //   leading: const Icon(
                    //     Icons.settings,
                    //     color: Colors.white,
                    //   ),
                    //   trailing: Icon(Icons.more_vert),
                    //   title: Text(
                    //     'download pdf',
                    //     style: GoogleFonts.roboto(color: Colors.white),
                    //   ),
                    // ),

                    //..................................................pdf

                    ExpansionTile(
                      leading: const Icon(
                        Icons.explore,
                        color: Colors.white,
                      ),
                      title: Text(
                        'Explore more',
                        style: GoogleFonts.roboto(color: Colors.white),
                      ), // The location of the expansion arrow icon
                      controlAffinity: ListTileControlAffinity.trailing,
                      // The controller to programmatically expand or collapse the tile
                      controller: ExpansionTileController(),
                      children: [
                        ListTile(
                          title: Text(
                            'Coming Soon !',
                            style: GoogleFonts.roboto(
                                color: Colors.white, fontSize: 20),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                    ListTile(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SettingsPage(),
                            ),
                          );
                        },
                        leading: const Icon(
                          Icons.settings,
                          color: Colors.white,
                        ),
                        trailing: const Icon(Icons.more_vert),
                        title: Text(
                          'Settings',
                          style: GoogleFonts.roboto(color: Colors.white),
                        )),

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
                        ),
                      ),
                    ),
                  ],
                )),
          ),
          //============================================

          //============================================
        ),
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          if (_showExtraButtons)
            FloatingActionButton(
              onPressed: () {
                // Add your action here
                // ignore: deprecated_member_use
                launch("https://www.nche.ac.mw");
              },
              tooltip: 'Button 1',
              child: const Icon(Icons.star),
            ),
          if (_showExtraButtons)
            FloatingActionButton(
              onPressed: () {
                // Add your action here
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Coming soon'),
                  ),
                );
              },
              tooltip: 'Button 2',
              child: const Icon(Icons.favorite),
            ),
          if (_showExtraButtons)
            FloatingActionButton(
              onPressed: () {
                // Add your action here
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Coming soon'),
                  ),
                );
              },
              tooltip: 'Button 3',
              child: const Icon(Icons.thumb_up),
            ),
          if (_showExtraButtons)
            FloatingActionButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SettingsPage()),
                );
              },
              tooltip: 'Button 1',
              child: const Icon(Icons.settings),
            ),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                _showExtraButtons = !_showExtraButtons;
              });
            },
            tooltip: 'Toggle Buttons',
            child: Icon(_showExtraButtons ? Icons.remove : Icons.add),
          ),
        ],
      ),
    );
  }

  //-------------drawer

  void _handleMenuButtonPressed() {
    // NOTICE: Manage Advanced Drawer state through the Controller.
    // _advancedDrawerController.value = AdvancedDrawerValue.visible();
    _advancedDrawerController.showDrawer();
  }
  //-------------drawer
}

// Declare a boolean state variable to store the current toggle status
bool isToggled = false;

// Use a StatefulWidget instead of a StatelessWidget
class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Use a ternary operator to assign the scaffold color based on the toggle status
      backgroundColor:
          isToggled ? Colors.white : const Color.fromARGB(255, 37, 15, 0),
      appBar: AppBar(
        title: Text(
          'Settings',
          style: GoogleFonts.roboto(
              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
              color: const Color.fromARGB(255, 3, 1, 27)),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // The text widget with an icon for changing color
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Change App color',
                style: GoogleFonts.roboto(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 243, 219, 148)),
              ),
              IconButton(
                  icon: const Icon(
                    Icons.color_lens,
                    size: 50,
                  ),
                  onPressed: () {
                    // Use setState() to toggle the value of the state variable
                    setState(() {
                      isToggled = !isToggled;
                    });
                  }),
            ],
          ),
          // The text "Change to chart" as a ListTile with the leading icon
          ListTile(
            leading: const Icon(
              Icons.switch_account,
              size: 30,
            ),
            title: Text(
              'Switch to MapuChart',
              style: GoogleFonts.roboto(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.normal,
                  color: const Color.fromARGB(255, 239, 205, 102)),
            ),
            onTap: () {
              // Show a snackbar with the text "Coming soon"
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Coming soon'),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.account_circle,
              size: 30,
            ),
            title: Text(
              'Create MapuChart account',
              style: GoogleFonts.roboto(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.normal,
                  color: const Color.fromARGB(255, 252, 213, 98)),
            ),
            onTap: () {
              // Show a snackbar with the text "Coming soon"
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Coming soon'),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}



//--------------------------------------------------------------------------------------------------------------------------------


