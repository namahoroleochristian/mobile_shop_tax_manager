import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Actionpromptstarter extends StatefulWidget {
  @override
  _ActionpromptstarterState createState() => _ActionpromptstarterState();
}

class _ActionpromptstarterState extends State<Actionpromptstarter> {
  @override
  build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Center(
          child: Image.asset(
            "C:/bcup/educat/lib/assets/GreenLogo.png",
            height: 100,
            width: 100,
          ),
        ),
        Center(
          child: Text(
            "Enjoy Digital Tax",
            style: TextStyle(
                color: const Color.fromRGBO(0, 208, 158, 1),
                fontSize: 24,
                fontWeight: FontWeight.w900),
          ),
        ),
        SizedBox(
          height: 14,
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 40,
                width: 200,
                child: FloatingActionButton.extended(
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  },
                  label: Text(
                    "Login",
                    style: TextStyle(color: Colors.white),
                  ),
                  backgroundColor: const Color.fromRGBO(0, 208, 158, 1),
                ),
              ),
              SizedBox(
                height: 14,
              ),
              SizedBox(
                height: 40,
                width: 200,
                child: FloatingActionButton.extended(
                  onPressed: () {
                    Navigator.pushNamed(context, '/signUp');
                  },
                  label: Text(
                    "SignUp",
                    style:
                        TextStyle(color: const Color.fromRGBO(0, 208, 158, 1)),
                  ),
                  backgroundColor: Colors.white,
                ),
              ),
              SizedBox(
                height: 14,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/forgotPassword');
                  },
                  child: Text(
                    "Forgot your password ?",
                    style: TextStyle(color: Colors.black),
                  ))
            ],
          ),
        )
      ])),
    );
  }
}
