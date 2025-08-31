import 'package:flutter/material.dart';

class Starter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        
          child: Container(
              height: MediaQuery.of(context).size.height + 200,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(0, 208, 158, 1),
              ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Image.asset(
                          "C:/bcup/educat/lib/assets/Logo.png"),
                    ),
                    Center(
                      child: Text("Enjoy Digital Tax",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w900
                      ),),
                    )
                  ]))),
    );
  }
}
