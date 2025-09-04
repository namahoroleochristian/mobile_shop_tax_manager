import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:educat/components/models/resetpassword/SecurityPin.dart';
import 'package:educat/components/providers/resetpasword/VerifySecurityPin.dart';

class securityPin extends StatefulWidget {
  @override
  _SecurityPinState createState() => _SecurityPinState();
}

class _SecurityPinState extends State<securityPin> {
  final _formKey = GlobalKey<FormState>();
  String verificationCode = '';

  void _submitPin(VerifySecurityPinProvider provider) async {
    if (_formKey.currentState!.validate()) {
      provider.setError(null);

      final pinData = SecuritypinData(verificationCode: verificationCode);
      await provider.verifySecurityPin(pinData);

      if (provider.successMessage != null) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(provider.successMessage!,
                style: TextStyle(color: Colors.white)),
            backgroundColor: Colors.green,
          ),
        );
        Navigator.pushNamed(context, '/forgotPassword/final');
      } else if (provider.error != null) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content:
                Text(provider.error!, style: TextStyle(color: Colors.white)),
            backgroundColor: Colors.red,
          ),
        );
      }
    } else {
      provider.setError("Please enter your security PIN");
    }
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<VerifySecurityPinProvider>(context);

    return Scaffold(
      backgroundColor: const Color.fromRGBO(0, 208, 158, 1),
      appBar: AppBar(
        toolbarHeight: MediaQuery.of(context).size.height / 6,
        backgroundColor: const Color.fromRGBO(0, 208, 158, 1),
        title: Center(child: Text("Security Pin")),
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
              topLeft: Radius.circular(100),
              topRight: Radius.circular(100),
            ),
            color: Colors.white,
          ),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                SizedBox(height: 100),
                Text(
                  "Enter security PIN",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 30),
                SizedBox(
                  height: 70,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: TextFormField(
                    onChanged: (val) => verificationCode = val,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "PIN is required";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      label: Text("Enter Your Security PIN"),
                      prefixIcon: Icon(Icons.pin),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: const Color.fromRGBO(0, 208, 158, 1),
                              width: 0.1)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: const Color.fromRGBO(0, 208, 158, 1))),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                if (provider.isLoading)
                  CircularProgressIndicator(backgroundColor: Colors.blue),
                if (provider.error != null)
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Text(provider.error!,
                        style: TextStyle(color: Colors.red)),
                  ),
                if (provider.successMessage != null)
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Text(provider.successMessage!,
                        style: TextStyle(color: Colors.green)),
                  ),
                SizedBox(height: 30),
                SizedBox(
                  height: 70,
                  width: MediaQuery.of(context).size.width * 4 / 6,
                  child: FloatingActionButton(
                    onPressed: () => _submitPin(provider),
                    backgroundColor: const Color.fromRGBO(0, 208, 158, 1),
                    child: Text(
                      "Accept",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                SizedBox(
                  height: 70,
                  width: MediaQuery.of(context).size.width * 4 / 6,
                  child: FloatingActionButton(
                    onPressed: () {
                      // Optionally call resend pin API here
                      Navigator.pushNamed(context, '/forgotPassword/final');
                    },
                    backgroundColor: Colors.white,
                    child: Text(
                      "Send Pin again",
                      style: TextStyle(
                        fontSize: 20,
                        color: const Color.fromRGBO(0, 208, 158, 1),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
