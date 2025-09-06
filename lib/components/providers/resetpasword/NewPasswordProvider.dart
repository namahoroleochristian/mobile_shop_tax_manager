import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:educat/components/models/resetpassword/NewPassword.dart';

class NewPasswordProvider extends ChangeNotifier {
  bool _isLoading = false;
  String? _errorMessage;
  bool _success = false;

  bool get isLoading => _isLoading;
  String? get errorMessage => _errorMessage;
  bool get success => _success;

  Future<void> submitNewPassword(NewPasswordData data) async {
    _isLoading = true;
    _errorMessage = null;
    _success = false;
    notifyListeners();

    try {
      final response = await http.put(
        Uri.parse("http://192.168.0.104:2000/tax/password/reset"),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode(data.toJson()),
      );

      if (response.statusCode == 200) {
        _success = true;
      } else {
        final resData = jsonDecode(response.body);
        _errorMessage = resData['message'] ?? 'Something went wrong';
      }
    } catch (e) {
      _errorMessage = e.toString();
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}
