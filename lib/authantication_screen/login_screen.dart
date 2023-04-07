import 'package:e_learning/admin/dashboard.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../constant.dart';
import '../dashboard_screens/dashboard_screen.dart';
import 'ragistration_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController =
        TextEditingController(text: './admin@gmail.com');
    TextEditingController passwordController =
        TextEditingController(text: '123456');

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'asset/logo.jpeg',
              scale: 2,
            ),
            const Text('Login',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 50,
              child: TextFormField(
                cursorColor: appBlackColor,
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      borderSide: BorderSide(color: appBlackColor, width: 2),
                    ),
                    prefixIcon: const Icon(Icons.email),
                    focusedBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(color: appBlackColor, width: 2),
                    ),
                    hintText: 'Email',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 50,
              child: TextFormField(
                cursorColor: appBlackColor,
                controller: passwordController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      borderSide: BorderSide(color: appBlackColor, width: 2),
                    ),
                    prefixIcon: const Icon(Icons.lock),
                    focusedBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(color: appBlackColor, width: 2),
                    ),
                    hintText: 'password',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: ElevatedButton(
                  child: const Text(
                    'Sign In',
                    style: TextStyle(fontSize: 16),
                  ),
                  onPressed: () {
                    if (emailController.text == './admin@gmail.com' &&
                        passwordController.text == '123456') {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AdminDashboard(),
                          ));
                    } else {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const DashBoardScreen(),
                          ));
                    }
                  },
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: ElevatedButton(
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(appWhiteColor)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'asset/google.png',
                        height: 25,
                        width: 25,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        'Sign In',
                        style: TextStyle(color: appBlackColor, fontSize: 16),
                      ),
                    ],
                  ),
                  onPressed: () {
                    if (emailController.text == './admin@gmail.com' &&
                        passwordController.text == '123456') {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AdminDashboard(),
                          ));
                    } else {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const DashBoardScreen(),
                          ));
                    }
                  },
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: RichText(
                text: TextSpan(
                    text: 'You  have an account ? ',
                    style: const TextStyle(color: Colors.black),
                    children: [
                      TextSpan(
                          text: 'Sign Up',
                          style: const TextStyle(
                              color: Color.fromARGB(255, 51, 17, 144),
                              fontWeight: FontWeight.bold),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              // Navigator.of(context).push(
                              //   MaterialPageRoute(
                              //       builder: (context) =>
                              //           const SignUpScreen()),
                              // );
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const SignUpScreen(),
                                  ));
                            })
                    ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
