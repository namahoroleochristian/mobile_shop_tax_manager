class SignUpData {
  final String names;
  final String phone;
  final String dateOfBirth;
  final String nationalId;
  final String? role;
  final String email;
  final String password;

  SignUpData(
      {required this.names,
      required this.phone,
      required this.dateOfBirth,
      required this.nationalId,
      required this.role,
      required this.email,
      required this.password});
  Map<String, dynamic> toJson() => {
        'Names': names,
        'Phone': phone,
        'Date_of_Birth': dateOfBirth,
        'NationalId': nationalId,
        'role': role,
        'Email': email,
        'password': password
      };
}

