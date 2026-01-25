import 'package:dicoding_project/components/custom_button.dart';
import 'package:dicoding_project/components/custom_checkBox.dart';
import 'package:dicoding_project/components/custom_iconButtonCircle.dart';
import 'package:dicoding_project/components/custom_socialButton.dart';
import 'package:dicoding_project/components/custom_spacing.dart';
import 'package:dicoding_project/components/custom_text.dart';
import 'package:dicoding_project/components/custom_textField.dart';
import 'package:dicoding_project/configs/themes_color.dart';
import 'package:dicoding_project/routes/app_routes.dart';
import 'package:flutter/material.dart';

class LogPage extends StatefulWidget {
  const LogPage({super.key});

  @override
  State<LogPage> createState() => _LogPageState();
}

class _LogPageState extends State<LogPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool checked = false;

  bool checkBoxState() {
    return checked = !checked;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CustomIconbuttonCircle(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icons.arrow_back,
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomSpacing(height: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: 'Sign In',
                  style: TextStyle(fontSize: 20, color: Colors.grey),
                ),
                CustomText(
                  text: 'Fill in the blank',
                  style: TextStyle(fontSize: 36, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            const CustomSpacing(height: 64),
            CustomTextfield(
              label: 'Email',
              hint: '...@gmail.com',
              useFlLabel: true,
              isNumber: false,
              controller: emailController,
            ),
            const CustomSpacing(height: 32),
            Column(
              children: [
                CustomTextfield(
                  label: 'Password',
                  useFlLabel: true,
                  isNumber: false,
                  obscureText: true,
                  useSuffixIcon: true,
                  suffixIcon: Icon(
                    Icons.visibility_off_rounded,
                    color: Colors.grey,
                  ),
                  controller: passwordController,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CustomCheckbox(
                          value: checked,
                          onChanged: (value) {
                            setState(() {
                              checkBoxState();
                            });
                          },
                          borderColor: Colors.grey,
                        ),
                        CustomText(
                          text: 'Remember me',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                    CustomText(
                      text: 'Forgot Password',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
            const CustomSpacing(height: 84),
            Column(
              children: [
                CustomButton(
                  onPressed: () {
                    if (emailController.text.isEmpty ||
                        passwordController.text.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: CustomText(text: "Please fill in the field"),
                          duration: Duration(milliseconds: 800),
                        ),
                      );
                      return;
                    }
                    if (emailController.text == "user@gmail.com" &&
                        passwordController.text == "12345678") {
                      Navigator.pushNamed(context, AppRoutes.homePage);
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: CustomText(
                            text: "Please check your fill in",
                          ),
                          duration: Duration(milliseconds: 800),
                        ),
                      );
                    }
                  },
                  text: 'Sign In',
                  backgroundColor: PColor.primary,
                  foregroundColor: SColor.white,
                ),
              ],
            ),
            const CustomSpacing(height: 32),
            Row(
              children: [
                Expanded(child: Divider(color: Colors.grey)),
                Expanded(
                  flex: 2,
                  child: CustomText(
                    text: 'Or sign in with',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Expanded(child: Divider(color: Colors.grey)),
              ],
            ),
            const CustomSpacing(height: 64),
            Row(
              children: [
                Expanded(
                  child: CustomSocialbutton(type: 'facebook', onTap: () {}),
                ),
                const CustomSpacing(width: 16),
                Expanded(
                  child: CustomSocialbutton(type: 'google', onTap: () {}),
                ),
                const CustomSpacing(width: 16),
                Expanded(
                  child: CustomSocialbutton(type: 'apple', onTap: () {}),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
