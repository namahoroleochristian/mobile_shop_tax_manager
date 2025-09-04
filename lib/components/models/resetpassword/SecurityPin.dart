class SecuritypinData {
  final String verificationCode;
  SecuritypinData({required this.verificationCode});
  Map<String, dynamic> toJson() => {'code': verificationCode};
}
