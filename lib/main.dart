import 'package:educat/components/authentication/newPassword.dart';
import 'package:educat/components/authentication/securityPin.dart';
import 'package:educat/components/pages/HomePage.dart';
import 'package:educat/components/pages/ActionPromptStarter.dart';
import 'package:educat/components/pages/Inventory.dart';
import 'package:educat/components/pages/InventoryItemRegistration.dart';
import 'package:educat/components/pages/Settings.dart';
import 'package:educat/components/pages/Starter.dart';
import 'package:educat/components/authentication/Login.dart';
import 'package:educat/components/authentication/forgotPassword.dart';
import 'package:educat/components/authentication/signUp.dart';
import 'package:educat/components/pages/Taxes.dart';
import 'package:educat/components/providers/LoginProvider.dart';
import 'package:educat/components/providers/SignUpProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (_) => SignupProvider()),
      ChangeNotifierProvider(create: (_) => LoginProvider())
    ],
    child: MyApp(),
    )
  );
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
        '/forgotPassword/nextStep': (context) => securityPin(),
        '/forgotPassword/final': (context) => Newpassword(),
        '/homepage' : (context) => Homepage(),
        '/taxes' : (context) => Taxes(),
        '/inventory' : (context) => Inventory(),
        '/ItemRegister' : (context) => Inventoryitemregistration(),
        '/setting' : (context) => Settings(),
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
          (context),
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
