import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constant.dart';

class ForgotPasswordScreen extends StatelessWidget {
  bool isChangePassword;
  ForgotPasswordScreen({Key? key, this.isChangePassword = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    // var forgotCnt = Get.put(ForgotCnt());
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Center(
              child: Text(
                'Forgot Your Password ?',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 50,
              child: TextFormField(
                cursorColor: appBlackColor,
                controller: controller,
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
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  // forgotCnt.getForgotMail(
                  //     email: forgotCnt.forgotEmailController.text);
                  // Get.to(EmailVerificationScreen());
                  Get.back();
                },
                child: const Text(
                  'forgotPassword',
                )),
            const SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
