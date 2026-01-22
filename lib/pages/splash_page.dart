import 'package:dicoding_project/components/custom_spacing.dart';
import 'package:dicoding_project/components/widgets/custom_button.dart';
import 'package:dicoding_project/components/widgets/custom_text.dart';
import 'package:dicoding_project/configs/themes_color.dart';
import 'package:dicoding_project/routes/app_routes.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                'assets/images/bg.jpg',
                fit: BoxFit.cover,
                cacheHeight: 1500,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.black.withOpacity(0.8),
                    Colors.black.withOpacity(0.4),
                    Colors.black.withOpacity(0.0),
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.center,
                ),
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomText(
                    text: 'Lets explore the world',
                    style: TextStyle(
                      fontSize: 36,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  CustomSpacing(height: 8),
                  CustomText(
                    text: 'let\'s explore the world with us just a few clicks',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  CustomSpacing(height: 36),
                  CustomButton(
                    onPressed: () {},
                    text: 'Create new account',
                    backgroundColor: SColor.white,
                    foregroundColor: PColor.primary,
                  ),
                  CustomSpacing(height: 16),
                  CustomButton(
                    onPressed: () {
                      Navigator.pushNamed(context, AppRoutes.loginPage);
                    },
                    text: 'Sign In',
                    backgroundColor: PColor.primary,
                    foregroundColor: SColor.white,
                  ),
                  CustomSpacing(height: 16),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
