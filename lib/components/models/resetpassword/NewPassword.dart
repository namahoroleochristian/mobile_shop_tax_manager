class NewPasswordData {
  final String email;
  final String newPassword;
  final String confirmNewPassword;

  NewPasswordData({
    required this.email,
    required this.newPassword,
    required this.confirmNewPassword,
  });

  Map<String, dynamic> toJson() => {
        'email': email,
        'newPassword': newPassword,
        'confirmNewPassword': confirmNewPassword,
      };
}
