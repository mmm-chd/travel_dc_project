import 'package:dicoding_project/components/custom_spacing.dart';
import 'package:dicoding_project/components/widgets/custom_chipsImage.dart';
import 'package:dicoding_project/components/widgets/custom_iconButtonCircle.dart';
import 'package:dicoding_project/components/widgets/custom_text.dart';
import 'package:dicoding_project/components/widgets/custom_textField.dart';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 18,
                          backgroundImage: const AssetImage(
                            'assets/images/avatar.png',
                          ),
                        ),
                        CustomSpacing(width: 8),
                        CustomText(
                          text: 'Hi, User!',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    CustomIconbuttonCircle(
                      onPressed: () {},
                      icon: Icons.notifications,
                    ),
                  ],
                ),
                CustomSpacing(height: 24),
                CustomText(
                  text: 'Where do you want to explore today?',
                  style: TextStyle(fontSize: 30),
                ),
                CustomSpacing(height: 24),
                CustomTextfield(
                  hint: 'Search',
                  suffixIcon: Icon(Icons.search),
                  useSuffixIcon: true,
                  isNumber: false,
                  controller: TextEditingController(),
                ),
                CustomSpacing(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: 'Choose Category',
                      style: TextStyle(fontSize: 18),
                    ),
                    CustomText(
                      text: 'See All',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                CustomSpacing(height: 12),
                CustomChipsimage(selected: true, label: 'label', onTap: () {}),
                CustomSpacing(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: 'Favorite Destination',
                      style: TextStyle(fontSize: 18),
                    ),
                    CustomText(
                      text: 'See All',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                CustomSpacing(height: 12),
                Container(color: Colors.blue, width: 1000, height: 220),
                CustomSpacing(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: 'Popular Package',
                      style: TextStyle(fontSize: 18),
                    ),
                    CustomText(
                      text: 'See All',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                CustomSpacing(height: 12),
                Container(color: Colors.blue, width: 1000, height: 160),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
