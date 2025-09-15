import 'dart:convert';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:educat/components/models/Login.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LoginProvider extends ChangeNotifier {
  final storage = FlutterSecureStorage();
  String? _error;
  bool _isLoading = false;
  String? _successMessage;

  String? get error => _error;
  bool get isLoading => _isLoading;
  String? get successMessage => _successMessage;

  void setError(String? message) {
    _error = message;
    notifyListeners();
  }

  Future<void> login(LoginData data) async {
    _error = null;
    _isLoading = true;
    _successMessage = null;
    notifyListeners();
    try {
      String url;
      if (_error != null) {
        _error = "all field sre required";
      }
      if (data.role == 'customer') {
        url = "http://192.168.0.101:2000/tax/customer/login";
      } else if (data.role == 'vendor') {
        url = "http://192.168.0.101:2000/tax/payer/login";
      } else {
        throw Exception("invalid role ");
      }
      final response = await http.post(Uri.parse(url),
          headers: {"Content-Type": "application/json"},
          body: jsonEncode(data.toJson()));
      if (response.statusCode == 200) {
        final Map<String, dynamic> responseData = jsonDecode(response.body);

        if (responseData['success'] == true) {
          final String? token = responseData['token'];

          if (token != null && token.isNotEmpty) {
            String authToken = token;
            await storage.write(key: 'authToken', value: authToken);
            _successMessage = "User Login successs ";
          } else {
            _error = "login success but no recieved token";
          }
        }
        // _successMessage = "User Login successs ";
      } else {
        _error =
            'login failed for ` ${response.body}   ` ${response.statusCode}';
      }
    } catch (error) {
      _error = 'occured error $error';
    }
    _isLoading = false;
    notifyListeners();
  }
}
