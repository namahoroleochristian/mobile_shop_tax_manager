import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<Signup> {
  @override
  build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(0, 208, 158, 1),
        appBar: AppBar(
          toolbarHeight: MediaQuery.of(context).size.height / 6,
          backgroundColor: const Color.fromRGBO(0, 208, 158, 1),
          title: Center(
            child: Text(" Create Account      "),
          ),
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontSize: 26,
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(100),
                topRight: Radius.circular(100),
              ),
              color: Colors.white,
            ),
            // height: 700,
            width: MediaQuery.of(context).size.width,
            child: Form(
                child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 80,
                  child: TextButton(
                      onPressed: () {},
                      child: Icon(
                        Icons.person,
                        size: 50,
                        color: const Color.fromRGBO(0, 208, 158, 1),
                      )),
                ),
                SizedBox(
                    width: MediaQuery.of(context).size.width * 4.7 / 6,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Names"),
                    )),
                SizedBox(
                    width: MediaQuery.of(context).size.width * 5 / 6,
                    child: TextFormField(
                        decoration: InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      prefixIcon: Icon(Icons.person_2),
                      label: Text(
                        "Enter your Names",
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
                  height: 20,
                ),
                SizedBox(
                    width: MediaQuery.of(context).size.width * 4.7 / 6,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Birth Date"),
                    )),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 5 / 6,
                  child: SizedBox(
                      height: 100,
                      child: SingleChildScrollView(
                          padding: EdgeInsets.only(top: 20),
                          child: CalendarDatePicker(
                              
                              initialCalendarMode: DatePickerMode.year,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(1925, 01, 01),
                              lastDate: DateTime.now(),
                              onDateChanged: (context) {}))),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                    width: MediaQuery.of(context).size.width * 4.7 / 6,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text("National Id"),
                    )),
                SizedBox(
                  height: 4,
                ),
                SizedBox(
                    width: MediaQuery.of(context).size.width * 5 / 6,
                    child: TextFormField(
                        decoration: InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      prefixIcon: Icon(Icons.badge),
                      label: Text(
                        "Enter your National ID number ",
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
                  height: 20,
                ),
                SizedBox(
                    width: MediaQuery.of(context).size.width * 4.7 / 6,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Role"),
                    )),
                SizedBox(
                    width: MediaQuery.of(context).size.width * 5 / 6,
                    child: DropdownButtonFormField(
                        decoration: InputDecoration(
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          label: Text("select a role"),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: const Color.fromRGBO(0, 208, 158, 1),
                                  width: 0.1)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: const Color.fromRGBO(0, 208, 158, 1),
                                  width: 1)),
                        ),
                        items: roles,
                        onChanged: (context) {})),
                SizedBox(
                  height: 20,
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
                  height: 4,
                ),
                SizedBox(
                    width: MediaQuery.of(context).size.width * 5 / 6,
                    child: TextFormField(
                        decoration: InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      prefixIcon: Icon(Icons.email),
                      label: Text(
                        "Enter your Email ",
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
                  height: 20,
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
                  width: MediaQuery.of(context).size.width * 3.5 / 6,
                  child: FloatingActionButton(
                    backgroundColor: const Color.fromRGBO(0, 208, 158, 1),
                    onPressed: () {},
                    child: Text(
                      "Create Account",
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
                      Navigator.pushNamed(context, '/login');
                    },
                    child: Text(
                      "Already have an Account Login",
                      style: TextStyle(color: Colors.black),
                    ))
              ],
            )),
          ),
        ));
  }
}

List<DropdownMenuItem<String>> roles = [
  DropdownMenuItem(
    value: 'option',
    child: InkWell(
        hoverColor: const Color.fromRGBO(0, 208, 158, 1),
        child: Text("Customer")),
  ),
  DropdownMenuItem(value: 'option 1', child: Text("Vendor")),
];
