import 'dart:convert';

import 'package:educat/components/models/UserModel.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class SignupProvider extends ChangeNotifier {
  bool _isLoading = false;
  String? _error;
  String? _successMessage;

  bool get isLoading => _isLoading;
  String? get error => _error;
  String? get successMessage => _successMessage;

  Future<void> signUp(SignUpData data) async {
    _isLoading = true;
    _error = null;
    _successMessage = null;
    notifyListeners();

    try {
      String url;
      if (data.role == 'Vendor') {
        url = "http://192.168.0.100:2000/tax/payer/register";
      } else if (data.role == 'customer') {
        url = "http://192.168.0.100:2000/tax/customer/register";
      } else {
        throw Exception("invalid role");
      }

      final response = await http.post(Uri.parse(url),
          headers: {'Content-Type': 'application/json'},
          body: jsonEncode(data.toJson()));
      if (response.statusCode == 200) {
        _successMessage = "Data has been saved successfully";
      } else {
        _error = 'signup failed with ${response.body}';
      }
    } catch (error) {
      _error = 'error occured $error';
    }
    _isLoading = false;
    notifyListeners();
  }
}
