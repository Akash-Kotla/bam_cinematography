import 'dart:convert';
import 'package:bam_cinematographer/screens/signup_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart';

// class LoginPage extends StatefulWidget {
//   @override
//   State<LoginPage> createState() => _LoginPageState();
// }
//
// class _LoginPageState extends State<LoginPage> {
//   final _formKey = GlobalKey<FormState>();
//
//   TextEditingController passwordController = TextEditingController();
//   TextEditingController emailController = TextEditingController();
//
//   String? emailError;
//   String? passwordError;
//
//   Future<bool> login(String email, password) async {
//     try {
//       Response response = await post(Uri.parse('https://reqres.in/api/login'),
//           body: {'email': email, 'password': password});
//
//       if (response.statusCode == 200) {
//         var data = jsonDecode(response.body.toString());
//         if (kDebugMode) {
//           print(data['token']);
//         }
//         if (kDebugMode) {
//           print('Login successfully');
//         }
//         return true;
//       } else {
//         if (kDebugMode) {
//           print('login failed');
//         }
//         return false;
//       }
//     } catch (e) {
//       if (kDebugMode) {
//         print(e.toString());
//       }
//       return false;
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: SingleChildScrollView(
//           child: Container(
//             padding: const EdgeInsets.all(40),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Row(
//                   children: [
//                     Text(
//                       'BAM',
//                       style: GoogleFonts.raleway(
//                           fontSize: 35,
//                           fontWeight: FontWeight.w900,
//                           color: Colors.black),
//                     ),
//                     const SizedBox(
//                       width: 5.0,
//                     ),
//                     Image.asset(
//                       'images/Ellipse.jpg',
//                     )
//                   ],
//                 ),
//                 const SizedBox(
//                   height: 10.0,
//                 ),
//                 const Text(
//                   'Login to your account',
//                   style: TextStyle(
//                     fontSize: 22,
//                     fontWeight: FontWeight.w700,
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 5.0,
//                 ),
//                 const Text("Lorem ipsum dolar sit",
//                     style: TextStyle(
//                       fontSize: 14,
//                       fontWeight: FontWeight.w400,
//                     )),
//                 const SizedBox(
//                   height: 50.0,
//                 ),
//                 Center(
//                   child: Padding(
//                     padding: const EdgeInsets.symmetric(
//                         horizontal: 0.0, vertical: 0.0),
//                     child: Container(
//                       decoration: BoxDecoration(
//                           color: Colors.grey.shade100,
//                           border: Border.all(color: Colors.white),
//                           borderRadius: BorderRadius.circular(5)),
//                       child: Padding(
//                         padding: const EdgeInsets.only(left: 15.0),
//                         child: SizedBox(
//                           width: 350,
//                           height: 50,
//                           child: TextField(
//                             controller: emailController,
//                             style: const TextStyle(
//                                 fontSize: 15.0, fontWeight: FontWeight.w600),
//                             decoration: const InputDecoration(
//                                 contentPadding:
//                                     EdgeInsets.symmetric(vertical: 16.0),
//                                 border: InputBorder.none,
//                                 hintText: 'Enter email'),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 20,
//                 ),
//                 Center(
//                   child: Padding(
//                     padding: const EdgeInsets.symmetric(
//                       horizontal: 0.0,
//                     ),
//                     child: Container(
//                       decoration: BoxDecoration(
//                           color: Colors.grey.shade100,
//                           border: Border.all(color: Colors.white),
//                           borderRadius: BorderRadius.circular(5)),
//                       child: Padding(
//                         padding: EdgeInsets.only(left: 15.0),
//                         child: SizedBox(
//                           width: 350,
//                           height: 50,
//                           child: TextField(
//                             controller: passwordController,
//                             obscureText: true,
//                             style: const TextStyle(
//                                 fontSize: 15.0, fontWeight: FontWeight.w600),
//                             decoration: const InputDecoration(
//                                 contentPadding:
//                                     EdgeInsets.symmetric(vertical: 16.0),
//                                 border: InputBorder.none,
//                                 hintText: 'Password',
//                                 suffixIcon: Icon(Icons.remove_red_eye_sharp)),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 Row(
//                   children: [
//                     Checkbox(
//                         value: true,
//                         onChanged: (bool? value) {
//                           //handle checkbox state changes here
//                         }),
//                     const Text("Remember Me",
//                         style: TextStyle(
//                           fontSize: 12,
//                           fontWeight: FontWeight.w400,
//                         )),
//                     const Spacer(),
//                     Align(
//                       alignment: Alignment.centerRight,
//                       child: TextButton(
//                           onPressed: () {},
//                           style: TextButton.styleFrom(primary: Colors.black),
//                           child: const Text(
//                             'Forgot Password?',
//                             style: TextStyle(
//                                 fontSize: 12, fontWeight: FontWeight.w600),
//                           )),
//                     )
//                   ],
//                 ),
//                 const SizedBox(
//                   height: 40.0,
//                 ),
//                 SizedBox(
//                     width: double.infinity,
//                     child: ElevatedButton(
//                         onPressed: () async {
//                           // Attempt to login
//
//                           if (emailController.text.isEmpty ||
//                               passwordController.text.isEmpty) {
//                             ScaffoldMessenger.of(context).showSnackBar(
//                               SnackBar(
//                                 content:
//                                     Text("please enter email and password"),
//                                 duration: Duration(seconds: 5),
//                               ),
//                             );
//                             return; //don't proceed with login if fileds are empty
//                           }
//
//                           final success = await login(
//                               emailController.text.toString(),
//                               passwordController.text.toString());
//
//                           if (success) {
//                             // Navigate to the next screen if login is successful
//                             Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                 builder: (context) =>
//                                     const SignUp_Page(), // Replace 'NextScreen' with your actual screen
//                               ),
//                             );
//                           }else{
//                             ScaffoldMessenger.of(context).showSnackBar(
//                               SnackBar(content: Text("Login Failed"),
//                               duration: Duration(seconds: 5),
//                               )
//                             );
//                           }
//                         },
//                         style: ElevatedButton.styleFrom(primary: Colors.black),
//                         child: const Text('Login'))),
//                 const SizedBox(
//                   height: 20,
//                 ),
//                 Align(
//                   alignment: Alignment.center,
//                   child: Text("------------- or  ------------- ",
//                       style: TextStyle(
//                         color: Colors.grey.shade600,
//                         fontSize: 12,
//                         fontWeight: FontWeight.w600,
//                       )),
//                 ),
//                 const SizedBox(
//                   height: 20,
//                 ),
//                 SizedBox(
//                   width: double.infinity,
//                   child: ElevatedButton.icon(
//                     onPressed: () {
//                       // Implement the "Sign in with Facebook" action here
//                     },
//                     style: ElevatedButton.styleFrom(
//                       primary: Colors.blue, // Change the button color
//                     ),
//                     icon: const Icon(
//                       Icons.facebook,
//                     ),
//                     label: const Text(
//                       'Continue with Facebook',
//                       style: TextStyle(
//                         fontSize: 12,
//                       ),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 20.0,
//                 ),
//                 SizedBox(
//                   width: double.infinity,
//                   child: OutlinedButton.icon(
//                     onPressed: () {},
//                     icon: const Image(
//                       image: AssetImage('images/google_icon.png'),
//                       width: 20.0,
//                     ),
//                     label: Text(
//                       "Continue with Google",
//                       style: TextStyle(
//                         color: Colors.grey.shade700,
//                         fontSize: 14,
//                         fontWeight: FontWeight.w700,
//                       ),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 50.0,
//                 ),
//                 Align(
//                   alignment: Alignment.bottomCenter,
//                   // Align at the bottom center
//                   child: Padding(
//                     padding: const EdgeInsets.only(bottom: 0.0),
//                     child: Row(
//                       mainAxisSize: MainAxisSize.min,
//                       // Center the row horizontally
//                       children: [
//                         Text(
//                           "Don’t have an account?",
//                           style: TextStyle(
//                             color: Colors.grey.shade400,
//                             fontSize: 12,
//                             fontWeight: FontWeight.w600,
//                           ),
//                         ),
//                         TextButton(
//                           onPressed: () {
//                             Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                     builder: (context) => const SignUp_Page()));
//                           },
//                           style: TextButton.styleFrom(primary: Colors.black),
//                           child: const Text(
//                             'Register',
//                             style: TextStyle(
//                                 fontSize: 12, fontWeight: FontWeight.w700),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  String? emailError;
  String? passwordError;

  bool isValidEmail(String email) {
    // Simple email validation regex (you can use a more comprehensive one)
    final emailRegExp =
    RegExp(r'^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$');
    return emailRegExp.hasMatch(email);
  }

  Future<bool> login(String email, password) async {
    try {
      Response response = await post(
        Uri.parse('https://reqres.in/api/login'),
        body: {'email': email, 'password': password},
      );

      if (response.statusCode == 200) {
        var data = jsonDecode(response.body.toString());
        if (kDebugMode) {
          print(data['token']);
        }
        if (kDebugMode) {
          print('Login successfully');
        }
        return true;
      } else {
        if (kDebugMode) {
          print('login failed');
        }
        return false;
      }
    } catch (e) {
      if (kDebugMode) {
        print(e.toString());
      }
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(40),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'BAM',
                        style: GoogleFonts.raleway(
                          fontSize: 35,
                          fontWeight: FontWeight.w900,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(
                        width: 5.0,
                      ),
                      Image.asset(
                        'images/Ellipse.jpg',
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  const Text(
                    'Login to your account',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  const Text(
                    "Lorem ipsum dolar sit",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(
                    height: 50.0,
                  ),


                  // TextInput Filed for email
                  Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 0.0,
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.grey.shade100,
                              border: Border.all(
                                color: emailError != null
                                    ? Colors.red // Red border for invalid input
                                    : Colors.white,
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: SizedBox(
                                width: 350,
                                height: 50,
                                child: TextFormField(
                                  controller: emailController,
                                  style: const TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  decoration: InputDecoration(
                                    contentPadding:
                                    const EdgeInsets.symmetric(vertical: 16.0),
                                    border: InputBorder.none,
                                    hintText: 'Enter email',
                                    errorText: emailError,
                                  ),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter your email';
                                    } else if (!isValidEmail(value)) {
                                      return 'Please enter a valid email address';
                                    }
                                    return null;
                                  },
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),


                  const SizedBox(
                    height: 20,
                  ),

                      // TextInput Field for password
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 0.0,
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.grey.shade100,
                              border: Border.all(
                                color: passwordError != null
                                    ? Colors.red // Red border for invalid input
                                    : Colors.white,
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: SizedBox(
                                width: 350,
                                height: 50,
                                child: TextFormField(
                                  controller: passwordController,
                                  obscureText: true,
                                  style: const TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(vertical: 16.0),
                                    border: InputBorder.none,
                                    hintText: 'Password',
                                    suffixIcon: const Icon(Icons.remove_red_eye_sharp),
                                    errorText: passwordError,
                                  ),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter your password';
                                    }
                                    return null;
                                  },
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),


                  Row(
                    children: [
                      Checkbox(
                        value: true,
                        onChanged: (bool? value) {
                          // Handle checkbox state changes here
                        },
                      ),
                      const Text(
                        "Remember Me",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const Spacer(),
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                              primary: Colors.black),
                          child: const Text(
                            'Forgot Password?',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () async {
                        // Attempt to login

                        if (emailController.text.isEmpty ||
                            passwordController.text.isEmpty) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text(
                                  "Please enter email and password"),
                              duration: Duration(seconds: 5),
                            ),
                          );
                          return; // Don't proceed with login if fields are empty
                        }

                        final success = await login(
                          emailController.text.toString(),
                          passwordController.text.toString(),
                        );

                        if (success) {
                          // Navigate to the next screen if login is successful
                           Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                              const SignUp_Page(), // Replace 'NextScreen' with your actual screen
                            ),
                          );
                        } else {
                          setState(() {
                            emailError = 'Incorrect email or password';
                            passwordError = 'Incorrect email or password';
                          });

                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text("Login Failed"),
                              duration: Duration(seconds: 5),
                            ),
                          );
                        }
                      },
                      style: ElevatedButton.styleFrom(
                          primary: Colors.black),
                      child: const Text('Login'),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "------------- or  ------------- ",
                      style: TextStyle(
                        color: Colors.grey.shade600,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        // Implement the "Sign in with Facebook" action here
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue,
                      ),
                      icon: const Icon(
                        Icons.facebook,
                      ),
                      label: const Text(
                        'Continue with Facebook',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton.icon(
                      onPressed: () {},
                      icon: const Image(
                        image: AssetImage('images/google_icon.png'),
                        width: 20.0,
                      ),
                      label: Text(
                        "Continue with Google",
                        style: TextStyle(
                          color: Colors.grey.shade700,
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50.0,
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "Don’t have an account?",
                            style: TextStyle(
                              color: Colors.grey.shade400,
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                  const SignUp_Page(),
                                ),
                              );
                            },
                            style:
                            TextButton.styleFrom(primary: Colors.black),
                            child: const Text(
                              'Register',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}





