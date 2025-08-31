class LoginData {
  final String email;
  final String role;
  final String password;

  LoginData({required this.role, required this.email, required this.password});

  Map<String, dynamic> toJson() =>
      {'role': role,
       'email': email, 
       'password': password};
}
