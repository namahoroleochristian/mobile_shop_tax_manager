class VerifyCodeData{
  final String verificationCode;
  VerifyCodeData({
    required this.verificationCode
  });
  Map<String, dynamic> toJson()=>{
    'code':verificationCode
  };
}