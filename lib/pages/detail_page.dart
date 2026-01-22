import 'package:dicoding_project/components/widgets/custom_iconButtonCircle.dart';
import 'package:dicoding_project/components/custom_spacing.dart';
import 'package:dicoding_project/components/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 14),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomIconbuttonCircle(
                      icon: Icons.arrow_back,
                      onPressed: () {},
                    ),
                    CustomText(text: 'Detail', style: TextStyle(fontSize: 20)),
                    CustomIconbuttonCircle(
                      onPressed: () {},
                      icon: Icons.bookmark_border,
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 14, right: 14, bottom: 24),
                child: Column(
                  children: [
                    CustomSpacing(height: 24),
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadiusGeometry.circular(16),
                      ),
                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadiusGeometry.circular(16),
                            child: Image.network(
                              "https://images.pexels.com/photos/1743165/pexels-photo-1743165.jpeg?_gl=1*25kg9x*_ga*MzE4MDYyNzA5LjE3NjgxMTE2MTE.*_ga_8JE65Q40S6*czE3NjgzNTc5NzgkbzYkZzEkdDE3NjgzNTc5ODIkajU2JGwwJGgw",
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                CustomText(
                                  text: 'Mountain',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.location_on_outlined,
                                      size: 18,
                                      color: Colors.white,
                                    ),
                                    CustomSpacing(width: 4),
                                    CustomText(
                                      text: 'Bali, Indonesia',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                                CustomSpacing(height: 4),
                                Row(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                          size: 18,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                          size: 18,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                          size: 18,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.white,
                                          size: 18,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.white,
                                          size: 18,
                                        ),
                                      ],
                                    ),
                                    CustomSpacing(width: 8),
                                    CustomText(
                                      text: '3',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
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
                    CustomSpacing(height: 24),
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadiusGeometry.circular(16),
                      ),
                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadiusGeometry.circular(16),
                            child: Image.network(
                              "https://images.pexels.com/photos/2583847/pexels-photo-2583847.jpeg",
                              fit: BoxFit.cover,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadiusGeometry.circular(16),
                            child: Container(
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
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                CustomText(
                                  text: 'Farm',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.location_on_outlined,
                                      size: 18,
                                      color: Colors.white,
                                    ),
                                    CustomSpacing(width: 4),
                                    CustomText(
                                      text: 'NTT, Indonesia',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                                CustomSpacing(height: 4),
                                Row(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                          size: 18,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                          size: 18,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                          size: 18,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                          size: 18,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                          size: 18,
                                        ),
                                      ],
                                    ),
                                    CustomSpacing(width: 8),
                                    CustomText(
                                      text: '5',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
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
                    CustomSpacing(height: 24),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomText(
                          text: 'What\'s Included?',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                    CustomSpacing(height: 12),
                    Container(color: Colors.amber, width: 1000, height: 80),
                    CustomSpacing(height: 24),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomText(
                          text: 'About Trip',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                    CustomSpacing(height: 12),
                    CustomText(
                      text:
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In euismod ipsum et dui rhoncus auctor.',
                      textAlign: TextAlign.start,
                    ),
                    CustomSpacing(height: 24),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomText(
                          text: 'Gallery Photo',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                    CustomSpacing(height: 12),
                    Container(color: Colors.amber, width: 1000, height: 100),
                    CustomSpacing(height: 24),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomText(
                          text: 'Location',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                    CustomSpacing(height: 12),
                    Container(color: Colors.amber, width: 1000, height: 240),
                    CustomSpacing(height: 24),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                          text: 'Reviews',
                          style: TextStyle(fontSize: 20),
                        ),
                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.amber),
                            CustomSpacing(width: 4),
                            CustomText(
                              text: '4.8',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    CustomSpacing(height: 12),
                    Container(color: Colors.amber, width: 1000, height: 120),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
