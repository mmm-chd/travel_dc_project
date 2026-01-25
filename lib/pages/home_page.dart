import 'package:dicoding_project/components/custom_cardWarp.dart';
import 'package:dicoding_project/components/custom_spacing.dart';
import 'package:dicoding_project/components/custom_chipsImage.dart';
import 'package:dicoding_project/components/custom_iconButtonCircle.dart';
import 'package:dicoding_project/components/custom_text.dart';
import 'package:dicoding_project/components/custom_textField.dart';

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
                            'assets/images/bg.jpg',
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
                  label: 'Search',
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
                // CustomChipsimage(selected: true, label: 'label', onTap: () {}),
                // CustomSpacing(height: 24),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     CustomText(
                //       text: 'Favorite Destination',
                //       style: TextStyle(fontSize: 18),
                //     ),
                //     CustomText(
                //       text: 'See All',
                //       style: TextStyle(
                //         fontSize: 14,
                //         fontWeight: FontWeight.w400,
                //         color: Colors.grey,
                //       ),
                //     ),
                //   ],
                // ),
                // CustomSpacing(height: 12),
                SizedBox(
                  height: 200,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadiusGeometry.circular(16),
                          child: Stack(
                            children: [
                              Image.network(
                                'https://images.pexels.com/photos/13038113/pexels-photo-13038113.jpeg',
                                fit: BoxFit.cover,
                                width: 160,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Colors.black.withOpacity(0.6),
                                      Colors.black.withOpacity(0.0),
                                    ],
                                    begin: Alignment.bottomCenter,
                                    end: Alignment.center,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomText(
                                      text: 'Waterfall',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18,
                                      ),
                                    ),
                                    CustomSpacing(height: 8),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.location_on_outlined,
                                          color: Colors.white,
                                          size: 16,
                                        ),
                                        CustomSpacing(width: 4),
                                        CustomText(
                                          text: 'Indonesia',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
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
                ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 12),
                      child: CustomCardwrap(
                        child: Padding(
                          padding: EdgeInsetsGeometry.all(8),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadiusGeometry.circular(16),
                                child: Image.network(
                                  'https://images.pexels.com/photos/4040119/pexels-photo-4040119.jpeg',
                                  fit: BoxFit.cover,
                                  width: 100,
                                  height: 120,
                                ),
                              ),
                              CustomSpacing(width: 16),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 4,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomText(
                                      text: 'Indonesia',
                                      style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    CustomText(text: '\$545'),
                                    CustomSpacing(height: 4),
                                    CustomText(
                                      text:
                                          'The Place is so good and\nthe nature is so refreshing',
                                      style: TextStyle(
                                        color: Colors.grey,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
