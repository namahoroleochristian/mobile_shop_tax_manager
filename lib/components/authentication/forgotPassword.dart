import 'package:flutter/material.dart';

class Forgotpassword extends StatefulWidget {
  @override
  _ForgotpasswordState createState() => _ForgotpasswordState();
}

class _ForgotpasswordState extends State<Forgotpassword> {
  final _formKey = GlobalKey<FormState>();
  @override
  build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(0, 208, 158, 1),
      appBar: AppBar(
        toolbarHeight: MediaQuery.of(context).size.height / 6,
        backgroundColor: const Color.fromRGBO(0, 208, 158, 1),
        title: Center(
          child: Text(" Forgot Password      "),
        ),
        titleTextStyle: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w600,
          fontSize: 26,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 700,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(100), topRight: Radius.circular(100)),
            color: Colors.white,
          ),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                ),
                SizedBox(
                  height: 40,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Text(
                    "Reset Password ?",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 20,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Text(
                    "Forgot Your Password,Don't worry It all happens to Us !",
                    style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: 20,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Text(
                    "Email",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                    height: 70,
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: TextFormField(
                      onChanged: (context) {},
                      decoration: InputDecoration(
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        label: Text("Enter Your Email"),
                        prefixIcon: Icon(Icons.email_outlined),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: const Color.fromRGBO(0, 208, 158, 1),
                                width: 0.1)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: const Color.fromRGBO(0, 208, 158, 1))),
                      ),
                    )),
                SizedBox(
                  height: 30,
                ),
                SizedBox(
                    height: 70,
                    width: MediaQuery.of(context).size.width * 4 / 6,
                    child: FloatingActionButton(
                      onPressed: () {
                        Navigator.pushNamed(
                            (context), '/forgotPassword/nextStep');
                      },
                      backgroundColor: const Color.fromRGBO(0, 208, 158, 1),
                      child: Text(
                        "Next Step",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
