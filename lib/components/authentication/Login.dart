import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(0, 208, 158, 1),
      appBar: AppBar(
        toolbarHeight: MediaQuery.of(context).size.height / 6,
        backgroundColor: const Color.fromRGBO(0, 208, 158, 1),
        title: Center(
          child: Text("Welcome"),
        ),
        titleTextStyle: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w600,
          fontSize: 40,
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(100),
            topRight: Radius.circular(100),
          ),
          color: Colors.white,
        ),
        height: 700,
        width: MediaQuery.of(context).size.width,
        child: Form(
            child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 150,
              child: TextButton(
                  onPressed: () {},
                  child: Icon(
                    Icons.person,
                    size: 150,
                    color: const Color.fromRGBO(0, 208, 158, 1),
                  )),
            ),
            SizedBox(
                width: MediaQuery.of(context).size.width * 4.7 / 6,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Email"),
                )),
            SizedBox(
              height: 4,
            ),
            SizedBox(
                width: MediaQuery.of(context).size.width * 5 / 6,
                child: TextFormField(
                    decoration: InputDecoration(
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  prefixIcon: Icon(Icons.email),
                  label: Text(
                    "Enter your Emai",
                    style:
                        TextStyle(color: const Color.fromARGB(255, 31, 34, 33)),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: const Color.fromRGBO(0, 208, 158, 1),
                          width: 0.1)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: const Color.fromRGBO(0, 208, 158, 1))),
                ))),
            SizedBox(
              height: 30,
            ),
            SizedBox(
                width: MediaQuery.of(context).size.width * 4.7 / 6,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Password"),
                )),
            SizedBox(
                width: MediaQuery.of(context).size.width * 5 / 6,
                child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      prefixIcon: Icon(Icons.key),
                      label: Text(
                        "Enter your Password",
                        style: TextStyle(
                            color: const Color.fromARGB(255, 31, 34, 33)),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: const Color.fromRGBO(0, 208, 158, 1),
                              width: 0.1)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: const Color.fromRGBO(0, 208, 158, 1))),
                    ))),
                    SizedBox(
                      height: 40,
                    ),
            SizedBox(
              height: 50,
              width: MediaQuery.of(context).size.width * 3.5/6,
              child: FloatingActionButton(
                backgroundColor: const Color.fromRGBO(0, 208, 158, 1),
                onPressed: () {},
                child: Text("Login",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              
            ),
            SizedBox(
              height: 5,
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
        )),
      ),
    );
  }
}
