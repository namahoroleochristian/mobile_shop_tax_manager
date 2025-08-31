import 'package:educat/components/models/UserModel.dart';
import 'package:educat/components/providers/SignUpProvider.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class Signup extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<Signup> {
  final _formKey = GlobalKey<FormState>();
  String dateOfBirth = '';
  String names = '', nationalId = '', email = '', password = '', phone = '';
  String? role;
  @override
  build(BuildContext context) {
    final provider = Provider.of<SignupProvider>(context);

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
                key: _formKey,
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    if (provider.error != null)
                      Text(
                        'error ${provider.error}',
                        style: TextStyle(color: Colors.red),
                      ),
                    if (provider.successMessage != null)
                      Text('message ${provider.successMessage}',
                          style: TextStyle(color: Colors.green)),
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
                                    color:
                                        const Color.fromRGBO(0, 208, 158, 1))),
                          ),
                          onChanged: (val) => names = val,
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                        width: MediaQuery.of(context).size.width * 4.7 / 6,
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text("phone"),
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
                            prefixIcon: Icon(Icons.phone),
                            label: Text(
                              "Enter your phone Number",
                              style: TextStyle(
                                  color: const Color.fromARGB(255, 31, 34, 33)),
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: const Color.fromRGBO(0, 208, 158, 1),
                                    width: 0.1)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color:
                                        const Color.fromRGBO(0, 208, 158, 1))),
                          ),
                          onChanged: (val) => phone = val,
                        )),
                    SizedBox(
                      height: 15,
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
                                  onDateChanged: (val) => dateOfBirth =
                                      DateFormat('dd/MM/yyyy').format(val)))),
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
                        ),
                        onChanged: (val) => nationalId = val,
                      ),
                    ),
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
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.never,
                              label: Text("select a role"),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color:
                                          const Color.fromRGBO(0, 208, 158, 1),
                                      width: 0.1)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color:
                                          const Color.fromRGBO(0, 208, 158, 1),
                                      width: 1)),
                            ),
                            items: roles,
                            value: role,
                            onChanged: (val) => role = val!)),
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
                                    color:
                                        const Color.fromRGBO(0, 208, 158, 1))),
                          ),
                          onChanged: (val) => email = val,
                        )),
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
                                    color:
                                        const Color.fromRGBO(0, 208, 158, 1))),
                          ),
                          onChanged: (val) => password = val,
                        )),
                    SizedBox(
                      height: 40,
                    ),
                    SizedBox(
                      height: 50,
                      width: MediaQuery.of(context).size.width * 3.5 / 6,
                      child: FloatingActionButton(
                        backgroundColor: const Color.fromRGBO(0, 208, 158, 1),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            final signUpData = SignUpData(
                              phone: phone,
                              names: names,
                              dateOfBirth: dateOfBirth,
                              nationalId: nationalId,
                              role: role,
                              email: email,
                              password: password,
                            );
                            provider.signUp(signUpData);
                            Navigator.pushNamed((context), '/login');
                          }
                        },
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
    value: 'customer',
    child: Text("customer"),
  ),
  DropdownMenuItem(value: 'Vendor', child: Text("Vendor")),
];
