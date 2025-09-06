import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:educat/components/models/resetpassword/SendVerificationCode.dart';

class SendVerificationCodeProvider extends ChangeNotifier {
  bool _isLoading = false;
  String? _error;
  String? _successMessage;
  String? _userEmail; // ✅ store email for later use

  bool get isLoading => _isLoading;
  String? get error => _error;
  String? get successMessage => _successMessage;
  String? get userEmail => _userEmail;

  void setError(String? message) {
    _error = message;
    notifyListeners();
  }

  Future<void> sendVerificationCode(SendVerificationCodeData data) async {
    _error = null;
    _isLoading = true;
    _successMessage = null;
    notifyListeners();

    try {
      const String apiRoute =
          'http://192.168.0.104:2000/tax/send/VerificationCode';

      final response = await http.post(
        Uri.parse(apiRoute),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(data.toJson()),
      );

      if (response.statusCode == 200) {
        // ✅ assume backend returns JSON like { "success": true, "message": "...", "email": "..." }
        try {
          final resData = jsonDecode(response.body);
          _successMessage = resData['message'] ?? 'Verification code sent';
          _userEmail = resData['email'] ?? data.email; // keep email
        } catch (e) {
          // fallback in case backend sends plain text
          _successMessage = response.body;
          _userEmail = data.email;
        }
      } else {
        try {
          final resData = jsonDecode(response.body);
          _error = resData['message'] ?? 'Failed to send verification code';
        } catch (e) {
          _error = response.body;
        }
      }
    } catch (errorMessage) {
      _error = errorMessage.toString();
    }

    _isLoading = false;
    notifyListeners();
  }
}
