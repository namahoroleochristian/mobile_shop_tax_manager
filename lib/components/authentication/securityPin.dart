import 'package:flutter/material.dart';

class securityPin extends StatefulWidget {
  @override
  _securityPinState createState() => _securityPinState();
}

class _securityPinState extends State<securityPin> {
  final _formKey = GlobalKey<FormState>();
  @override
  build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(0, 208, 158, 1),
      appBar: AppBar(
        toolbarHeight: MediaQuery.of(context).size.height / 6,
        backgroundColor: const Color.fromRGBO(0, 208, 158, 1),
        title: Center(
          child: Text(" Security Pin      "),
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
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Text(
                    "Enter security PIN",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 30,
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
                        label: Text("Enter Your security Pin"),
                        prefixIcon: Icon(Icons.pin),
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
                            (context), '/forgotPassword/final');
                      },
                      backgroundColor: const Color.fromRGBO(0, 208, 158, 1),
                      child: Text(
                        "Accept",
                        style: TextStyle(fontSize: 20, color: Colors.white),
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
                              (context), '/forgotPassword/final');
                        },
                        backgroundColor: Colors.white,
                        child: Text(
                          "Send Pin again",
                          style: TextStyle(
                            fontSize: 20,
                            color: const Color.fromRGBO(0, 208, 158, 1),
                          ),
                        )))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
