
class SendVerificationCodeData {
  final String email;

  SendVerificationCodeData({required this.email});

  Map<String, dynamic> toJson() => {
    'email': email,
  };
}
