import 'dart:convert';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:educat/components/models/itemRegistration.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Itemregstrationprovider extends ChangeNotifier {
  final storage = FlutterSecureStorage();
  bool _isLoading = false;
  String? _error = '';
  String? _successMessage = '';

  bool get isLoading => _isLoading;
  String? get error => _error;
  String? get successMessage => _successMessage;

  Future<void> itemRegister(itemRegistrationData data) async {
    _isLoading = true;
    _error = null;
    _successMessage = null;
    notifyListeners();
    try {
      String url;
      String? token = await storage.read(key: 'authToken');
      
      if (token != null) {
        _error = 'not allowed User not logged In';
      }
      else{

      url = 'http://localhost:2000/tax/item/register/67fadaa0057d7851bb3f2c83';
      final response = await http.post(Uri.parse(url),
          headers: {'Content-Type': 'application/json'},
          body: jsonEncode(data.toJson()));

      if (response.statusCode == 200) {
        _successMessage = "DATA SAVED SUCCESSFULLY";
      } else {
        _error = "item creation failed with error message ${response.body}";
      }
  }
    } catch (errorMessage) {
      _error = errorMessage.toString();
    }
    _isLoading = false;
    notifyListeners();
  }
}
