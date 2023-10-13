// class LoginResponse{
// final String token;
// final String error;
//
// LoginResponse({required this.token,required this.error});
//
//
// factory LoginResponse.fromJson(Map<String, dynamic> json) {
//   return LoginResponse(
//     token: json["token"] != null ? json["token"] : "",
//     error: json["error"] != null ? json["error"] : "",
//   );
// }
// }
//
//
//
// class LoginRequestModel{
//   String email;
//   String password;
//
//   LoginRequestModel({
//     required this.email,
//     required this.password,
// });
//
//   Map<String,dynamic> toJson(){
//     Map<String,dynamic> map = {
//       'email' : email.trim(),
//       'password' : password.trim()
//     };
//     return map;
//   }
// }
//
//
//
