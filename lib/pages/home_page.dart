import 'package:dicoding_project/components/widgets/icon_button_widget/myicon_button.dart';

import '../components/widgets/spacing_widget/myspacing.dart';
import '../components/widgets/text_widget/mytext_bold.dart';
import '../components/widgets/text_widget/mytext_normal.dart';
import '../components/widgets/text_field_widget/mytf.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            margin: const EdgeInsets.only(
              left: 24,
              right: 24,
              top: 14,
              bottom: 24,
            ),
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
                        MySpacing(width: 8),
                        MyTextNormal(
                          text: 'Hi, User!',
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ],
                    ),
                    MyIconButton(onPressed: () {}, icon: Icons.notifications),
                  ],
                ),
                MySpacing(height: 24),
                MyTextBold(
                  text: 'Where do you want to explore today?',
                  fontSize: 30,
                ),
                MySpacing(height: 24),
                MyTextField(
                  hintText: 'Search',
                  icon: Icons.search,
                  suffixIcon: true,
                ),
                MySpacing(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyTextBold(text: 'Choose Category', fontSize: 18),
                    MyTextNormal(
                      text: 'See All',
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey,
                    ),
                  ],
                ),
                MySpacing(height: 12),
                Container(color: Colors.amber, width: 1000, height: 60),
                MySpacing(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyTextBold(text: 'Favorite Destination', fontSize: 18),
                    MyTextNormal(
                      text: 'See All',
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey,
                    ),
                  ],
                ),
                MySpacing(height: 12),
                Container(color: Colors.blue, width: 1000, height: 220),
                MySpacing(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyTextBold(text: 'Popular Package', fontSize: 18),
                    MyTextNormal(
                      text: 'See All',
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey,
                    ),
                  ],
                ),
                MySpacing(height: 12),
                Container(color: Colors.blue, width: 1000, height: 160),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
