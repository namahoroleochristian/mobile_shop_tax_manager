class NewPasswordData {
  final String NewPassword;
  final String ConfirmNewPassword;
  NewPasswordData(
      {
  required this.NewPassword,
  required this.ConfirmNewPassword
  }
  );
  Map<String, dynamic> toJson()=>{
    'newPasword':NewPassword,
    'confirmNewPasword':ConfirmNewPassword,

  };


}
