import 'dart:convert';

import 'package:educat/components/models/resetpassword/SendVerificationCode.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class SendVerificationCodeProvider extends ChangeNotifier{
  bool _isLoading = false;
  String? _error ='';
  String? _successMessage = '';

bool get isLoading => _isLoading;
String? get error => _error;
String? get successMessage => _successMessage;
void setError(String? message){
  _error = message;
  notifyListeners();
}

Future<void> SendVerificationCode(SendVerificationCodeData data) async{
  _error = null;
  _isLoading = true;
  _successMessage=null;
  notifyListeners();
  try{
    String API_ROUTE;
    API_ROUTE = 'http://localhost:2000/tax/send/VerificationCode';
    final response = await http.post(
        Uri.parse(API_ROUTE),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(data.toJson())
    );
    if(response.statusCode == 200){
      _successMessage = response.body;
      notifyListeners();
    }else{
      _error = response.body;
    }



  }
  catch(errorMessage){
  _error = errorMessage.toString();
  notifyListeners();
  }
  _isLoading = false;
  notifyListeners();
}



}