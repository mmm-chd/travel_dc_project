import 'package:dicoding_project/components/custom_spacing.dart';
import 'package:dicoding_project/components/widgets/custom_button.dart';
import 'package:dicoding_project/components/widgets/custom_checkBox.dart';
import 'package:dicoding_project/components/widgets/custom_iconButtonCircle.dart';
import 'package:dicoding_project/components/widgets/custom_socialButton.dart';
import 'package:dicoding_project/components/widgets/custom_text.dart';
import 'package:dicoding_project/components/widgets/custom_textField.dart';
import 'package:dicoding_project/configs/themes_color.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
              controller: TextEditingController(),
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
                  controller: TextEditingController(),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CustomCheckbox(
                          value: false,
                          onChanged: (value) {},
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
                  onPressed: () {},
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
