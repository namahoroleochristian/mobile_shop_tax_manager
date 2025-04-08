// import 'dart:ui';

// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// // import 'package:flutter_svg/flutter_svg.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatefulWidget {
//   const MyApp({super.key});

//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         debugShowCheckedModeBanner: false,
//         home: Scaffold(
//             backgroundColor: const Color.fromARGB(255, 1, 22, 53),
//             appBar: PreferredSize(
//               preferredSize: Size.fromHeight(60.0),
//               child: ClipRRect(
//                   borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(0.0),
//                     topRight: Radius.circular(0.0),
//                   ),
//                   child: AppBar(
//                     backgroundColor: const Color.fromARGB(255, 1, 22, 53),
//                     title: Row(
//                       children: [
//                         Icon(
//                           Icons.touch_app,
//                           color: Colors.white,
//                           size: 40,
//                         ),
//                         Text("intoki",
//                             style: GoogleFonts.baiJamjuree(
//                               fontSize: 24,
//                               color: Colors.white,
//                             ))
//                       ],
//                     ),
//                     actions: <Widget>[
//                       IconButton(
//                           onPressed: () {},
//                           icon: Icon(
//                             Icons.settings,
//                             color: Colors.white,
//                           ))
//                     ],
//                   )),
//             ),
//             body: Stack(
//               children: [
//                 SingleChildScrollView(
//                   // padding: EdgeInsets.all(12),

//                   child: Column(
//                     children: [
//                       Text(
//                         "Inventory",
//                         style: GoogleFonts.baiJamjuree(
//                           fontSize: 24,
//                           color: Colors.white,
//                           fontWeight: FontWeight.w400,
//                         ),
//                       ),
//                       ClipRect(
//                         child: BackdropFilter(
//                           filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
//                           child: Container(
//                             height: MediaQuery.of(context).size.height,
//                             decoration: BoxDecoration(
//                                 color: const Color.fromARGB(255, 255, 255, 255),
//                                 borderRadius: BorderRadius.only(
//                                     topLeft: Radius.circular(40.0),
//                                     bottomLeft: Radius.circular(40.0),
//                                     topRight: Radius.circular(40.0),
//                                     bottomRight: Radius.circular(40.0))),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Positioned(
//                   bottom: 0,
//                   left: 0,
//                   right: 0,
//                   child: ClipRRect(

//                     borderRadius: BorderRadius.all(Radius.circular(40.0)),
//                     child: BottomAppBar(
//                       color: const Color.fromARGB(255, 1, 22, 53),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                         children: [
//                           IconButton(
//                               onPressed: () {},
//                               icon: Icon(
//                                 Icons.home,
//                                 size: 40,
//                                 color: Colors.white,
//                               )),
//                           IconButton(
//                               onPressed: () {},
//                               icon: Icon(
//                                 Icons.inventory,
//                                 size: 35,
//                                 color: Colors.white,
//                               )),
//                           IconButton(
//                             onPressed: () {},
//                             icon: Image.asset(
//                                 "D:/DEV/Projects/Flt/educate/lib/assets/rra1.png"),
//                             iconSize: 40,
//                           ),
//                           IconButton(
//                             onPressed: () {},
//                             icon: Icon(
//                               Icons.stacked_bar_chart,
//                               size: 40,
//                               color: Colors.white,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 )
//               ],
//             )));
//   }
// }
import 'package:educate/components/HomePage.dart';
import 'package:educate/components/ActionPromptStarter.dart';
import 'package:educate/components/Starter.dart';
import 'package:educate/components/authentication/Login.dart';
import 'package:educate/components/authentication/forgotPassword.dart';
import 'package:educate/components/authentication/signUp.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/login': (context) => Login(),
        '/signUp': (context) => Signup(),
        '/forgotPassword': (context) => Forgotpassword(),
      },
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          // context, MaterialPageRoute(builder: (context) => DashboardScreen()));
          context,
          PageRouteBuilder(
              pageBuilder: (context, animation, seconaryAnimation) =>
                  DashboardScreen(),
              transitionsBuilder:
                  (context, animation, seconaryAnimation, child) {
                return FadeTransition(opacity: animation, child: child);
              },
              transitionDuration: Duration(milliseconds: 500)));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Starter();
  }
}

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(0, 208, 158, 1),
      body: Actionpromptstarter(),
    );
  }
}
