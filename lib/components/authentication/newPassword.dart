import 'package:educat/components/providers/resetpasword/sendVerificationCodeProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:educat/components/models/resetpassword/NewPassword.dart';
import 'package:educat/components/providers/resetpasword/NewPasswordProvider.dart';

class newPassword extends StatefulWidget {
  @override
  _NewPasswordState createState() => _NewPasswordState();
}

class _NewPasswordState extends State<newPassword> {
  final _formKey = GlobalKey<FormState>();
  final _newPasswordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    _newPasswordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  void _submit(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      final newPasswordProvider =
          Provider.of<NewPasswordProvider>(context, listen: false);

      // ✅ get the email stored in SendVerificationCodeProvider
      final sendCodeProvider =
          Provider.of<SendVerificationCodeProvider>(context, listen: false);

      final email = sendCodeProvider.userEmail;

      if (email == null || email.isEmpty) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
              content: Text("Email not found. Please restart the process.")),
        );
        return;
      }

      final data = NewPasswordData(
        email: email, // ✅ include the stored email
        newPassword: _newPasswordController.text.trim(),
        confirmNewPassword: _confirmPasswordController.text.trim(),
      );

      newPasswordProvider.submitNewPassword(data).then((_) {
        if (newPasswordProvider.success) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text("Password changed successfully!")),
          );
          Navigator.pushReplacementNamed(context, '/login');
        } else if (newPasswordProvider.errorMessage != null) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(newPasswordProvider.errorMessage!)),
          );
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<NewPasswordProvider>(context);

    return Scaffold(
      backgroundColor: const Color.fromRGBO(0, 208, 158, 1),
      appBar: AppBar(
        toolbarHeight: MediaQuery.of(context).size.height / 6,
        backgroundColor: const Color.fromRGBO(0, 208, 158, 1),
        title: const Center(child: Text("New Password")),
        titleTextStyle: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w600,
          fontSize: 26,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 700,
          decoration: const BoxDecoration(
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
                const SizedBox(height: 100),
                // New Password label
                SizedBox(
                  height: 20,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: const Text(
                    "New Password",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 10),
                // New Password input
                SizedBox(
                  height: 70,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: TextFormField(
                    controller: _newPasswordController,
                    obscureText: true,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Enter a new password";
                      }
                      if (value.length < 6) {
                        return "Password must be at least 6 characters";
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      label: Text("Enter Your New Password"),
                      prefixIcon: Icon(Icons.key_outlined),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromRGBO(0, 208, 158, 1),
                          width: 0.1,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromRGBO(0, 208, 158, 1),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                // Confirm Password label
                SizedBox(
                  height: 20,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: const Text(
                    "Confirm Password",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 10),
                // Confirm Password input
                SizedBox(
                  height: 70,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: TextFormField(
                    controller: _confirmPasswordController,
                    obscureText: true,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Confirm your new password";
                      }
                      if (value != _newPasswordController.text) {
                        return "Passwords do not match";
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      label: Text("Confirm Your New Password"),
                      prefixIcon: Icon(Icons.key_outlined),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromRGBO(0, 208, 158, 1),
                          width: 0.1,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromRGBO(0, 208, 158, 1),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                // Submit button
                SizedBox(
                  height: 70,
                  width: MediaQuery.of(context).size.width * 4 / 6,
                  child: ElevatedButton(
                    onPressed:
                        provider.isLoading ? null : () => _submit(context),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(0, 208, 158, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: provider.isLoading
                        ? const CircularProgressIndicator(color: Colors.white)
                        : const Text(
                            "Change Password",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
