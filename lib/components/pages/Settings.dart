import 'package:educat/components/UI/BottomNavbar.dart';
import 'package:educat/components/UI/Navbar.dart';
import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  final String PageName = 'Setting';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size(MediaQuery.of(context).size.width, 100),
          child: Navbar(title: PageName,)),
      body: Text("SETTINGS Page"),
      bottomNavigationBar: Bottomnavbar(),
    );
  }
}
