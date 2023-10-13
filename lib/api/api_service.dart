// import 'package:bam_cinematographer/model/login_model.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
//
// class APIService {
//   Future<LoginResponse> login(LoginRequestModel requestModel) async {
//     String url = "https://reqres.in/api/login";
//
//     final response = await http.post(url as Uri, body: requestModel.toJson());
//     if (response.statusCode == 200 || response.statusCode == 400) {
//       return LoginResponse.fromJson(
//         json.decode(response.body),
//       );
//     } else {
//       throw Exception('Failed to load data!');
//     }
//   }
// }
