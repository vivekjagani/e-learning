import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../constant.dart';
import '../dashboard_screens/dashboard_screen.dart';
import 'login_screen.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController nameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController confimPasswordController = TextEditingController();

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset(
            'asset/logo.jpeg',
            scale: 2,
          ),
          const Text('Registration',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 50,
            child: TextFormField(
              cursorColor: appBlackColor,
              controller: emailController,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  enabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    borderSide: BorderSide(color: appBlackColor, width: 2),
                  ),
                  prefixIcon: const Icon(Icons.person),
                  focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(color: appBlackColor, width: 2),
                  ),
                  hintText: 'Name',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
          ),
          const SizedBox(height: 20),
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
                child: const Text('Sign In'),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DashBoardScreen(),
                      ));
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
                  text: 'Already have an account ? ',
                  style: const TextStyle(color: Colors.black),
                  children: [
                    TextSpan(
                        text: 'Sign In',
                        style: const TextStyle(
                            color: Color.fromARGB(255, 51, 17, 144),
                            fontWeight: FontWeight.bold),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const LoginScreen(),
                                ));
                          })
                  ]),
            ),
          ),
        ]),
      ),
    );
  }
}
