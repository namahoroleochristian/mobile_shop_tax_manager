import 'package:educat/components/models/Login.dart';
import 'package:educat/components/providers/LoginProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  String email = '';
  String password = '';
  String role = 'customer';

  void _submitLogin(LoginProvider provider) async {
    if (_formKey.currentState!.validate()) {
      provider.setError(null);
      final loginData = LoginData(
        role: role,
        email: email,
        password: password,
      );
      await provider.login(loginData);

      if (provider.successMessage != null) {
        if (role == 'vendor') {
          Navigator.pushNamed((context), '/homepage');
        } else if (role == 'customer') {
          Navigator.pushNamed((context), '/customer_home');
        }
      } else if (provider.error != null) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("${provider.error}",
                style: TextStyle(color: Colors.white)),
            backgroundColor: Colors.red,
          ),
        );
      }
    } else {
      provider.setError("All fields are required");
    }
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<LoginProvider>(context);
    bool isFormValid = _formKey.currentState?.validate() ?? false;

    return Scaffold(
      backgroundColor: const Color.fromRGBO(0, 208, 158, 1),
      appBar: AppBar(
        toolbarHeight: MediaQuery.of(context).size.height / 6,
        backgroundColor: const Color.fromRGBO(0, 208, 158, 1),
        title: Center(
          child: Text(" Login     "),
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
          height: 700,
          width: MediaQuery.of(context).size.width,
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                SizedBox(
                  height: 80,
                  child: TextButton(
                      onPressed: () {},
                      child: Icon(
                        Icons.person,
                        size: 80,
                        color: const Color.fromRGBO(0, 208, 158, 1),
                      )),
                ),
                SizedBox(height: 20),
                SizedBox(
                    width: MediaQuery.of(context).size.width * 4.7 / 6,
                    child: Align(
                        alignment: Alignment.centerLeft, child: Text("Role"))),
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
                    value: role,
                    onChanged: (val) => setState(() => role = val!),
                    items: roles,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please select a role';
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(
                    width: MediaQuery.of(context).size.width * 4.7 / 6,
                    child: Align(
                        alignment: Alignment.centerLeft, child: Text("Email"))),
                SizedBox(height: 4),
                SizedBox(height: 4),
                SizedBox(
                    width: MediaQuery.of(context).size.width * 5 / 6,
                    child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your email';
                        }
                        // You can add more sophisticated email validation here if needed
                        return null;
                      },
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
                      ),
                      onChanged: (val) => email = val,
                    )),
                SizedBox(height: 20),
                SizedBox(
                    width: MediaQuery.of(context).size.width * 4.7 / 6,
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text("Password"))),
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
                      ),
                      onChanged: (val) => password = val,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your password';
                        }
                        return null;
                      },
                    )),
                SizedBox(height: 40),
                if (provider.isLoading == true)
                  CircularProgressIndicator(backgroundColor: Colors.blue),
                if (provider.error != null)
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Text(
                      "${provider.error}",
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                if (provider.successMessage != null)
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Text(
                      "${provider.successMessage}",
                      style: TextStyle(color: Colors.green),
                    ),
                  ),
                SizedBox(
                  height: 50,
                  width: MediaQuery.of(context).size.width * 3.5 / 6,
                  child: FloatingActionButton(
                    backgroundColor: const Color.fromRGBO(0, 208, 158, 1),
                    onPressed:
                        isFormValid ? () => _submitLogin(provider) : null,
                    child: Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 5),
                TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/signUp');
                    },
                    child: Text(
                      "Don't have an Account   SignUp ",
                      style: TextStyle(color: Colors.black),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

List<DropdownMenuItem<String>> roles = [
  DropdownMenuItem(
    value: 'customer',
    child: Text("customer"),
  ),
  DropdownMenuItem(value: 'vendor', child: Text("Vendor")),
];
