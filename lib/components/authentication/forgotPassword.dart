import 'package:flutter/material.dart';
import '../UI/Navbar.dart';

class Forgotpassword extends StatefulWidget {
  @override
  _ForgotpasswordState createState() => _ForgotpasswordState();
}

class _ForgotpasswordState extends State<Forgotpassword> {
  @override
  build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(0, 208, 158, 1),
      appBar: AppBar(
        toolbarHeight: MediaQuery.of(context).size.height / 6,
        backgroundColor: const Color.fromRGBO(0, 208, 158, 1),
        title: Center(
          child: Text(" Login      "),
        ),
        titleTextStyle: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w600,
          fontSize: 26,
        ),
      ),
    );
  }
}
