class RegisterRequestModel {
  final String name;
  final String email;
  final String phone;
  final String gender;
  final String password;
  final String confirmPassword;

  RegisterRequestModel({
    required this.phone,
    required this.gender,
    required this.confirmPassword,
    required this.name,
    required this.email,
    required this.password,
  });

 factory RegisterRequestModel.fromJson(Map<String,dynamic> json) {
   return RegisterRequestModel(
       phone: json["phone"],
       gender: json["gender"],
       confirmPassword: json["password_confirmation"],
       name: json["name"],
       email: json["email"],
       password: json["password"],
   );
 }

  Map<String,dynamic> toJson(){
   return {
     "name":name,
      "email":email,
      "phone":phone,
      "gender":gender,
     "password": password,
     "password_confirmation":  confirmPassword,

   };
 }

}