import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUp_Page extends StatelessWidget {
  const SignUp_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(40),
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
                          color: Colors.black),
                    ),
                    Align(
                      child: Image.asset(
                        'images/Ellipse.jpg',
                      ),
                    )
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
                const Text("Lorem ipsum dolar sit",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    )),
                const SizedBox(
                  height: 30.0,
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 0.0, vertical: 0.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(5)),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 15.0),
                        child: SizedBox(
                          width: 350,
                          height: 50,
                          child: TextField(
                            style: TextStyle(
                                fontSize: 15.0, fontWeight: FontWeight.w600),
                            decoration: InputDecoration(
                                contentPadding:
                                    EdgeInsets.symmetric(vertical: 16.0),
                                border: InputBorder.none,
                                hintText: 'First Name'),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 0.0,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(5)),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 15.0),
                        child: SizedBox(
                          width: 350,
                          height: 50,
                          child: TextField(
                            style: TextStyle(
                                fontSize: 15.0, fontWeight: FontWeight.w600),
                            decoration: InputDecoration(
                              contentPadding:
                                  EdgeInsets.symmetric(vertical: 16.0),
                              border: InputBorder.none,
                              hintText: 'Last Name',
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 0.0,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(5)),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 15.0),
                        child: SizedBox(
                          width: 350,
                          height: 50,
                          child: TextField(
                            style: TextStyle(
                                fontSize: 15.0, fontWeight: FontWeight.w600),
                            decoration: InputDecoration(
                              contentPadding:
                                  EdgeInsets.symmetric(vertical: 16.0),
                              border: InputBorder.none,
                              hintText: 'Email',
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 0.0,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(5)),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 15.0),
                        child: SizedBox(
                          width: 350,
                          height: 50,
                          child: TextField(
                            obscureText: true,
                            style: TextStyle(
                                fontSize: 15.0, fontWeight: FontWeight.w600),
                            decoration: InputDecoration(
                                contentPadding:
                                    EdgeInsets.symmetric(vertical: 16.0),
                                border: InputBorder.none,
                                hintText: 'Create Password',
                                suffixIcon: Icon(Icons.remove_red_eye_sharp)),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(primary: Colors.black),
                        child: const Text('Register'))),
                const SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text("------------- or  ------------- ",
                      style: TextStyle(
                        color: Colors.grey.shade600,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      )),
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
                      primary: Colors.blue, // Change the button color
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
                  height: 30.0,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already a member?",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
