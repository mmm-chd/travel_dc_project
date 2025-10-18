import 'package:dicoding_project/components/widgets/icon_button_widget/myicon_button.dart';
import 'package:dicoding_project/components/widgets/spacing_widget/myspacing.dart';
import 'package:dicoding_project/components/widgets/text_widget/Mytext_normal.dart';
import 'package:dicoding_project/components/widgets/text_widget/mytext_bold.dart';
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
                margin: const EdgeInsets.only(left: 4, right: 4, top: 14),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyIconButton(onPressed: () {}, icon: Icons.arrow_back),
                    MyTextBold(text: 'Detail', fontSize: 20),
                    MyIconButton(onPressed: () {}, icon: Icons.bookmark_border),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 14, right: 14, bottom: 24),
                child: Column(
                  children: [
                    MySpacing(height: 24),
                    Container(color: Colors.amber, width: 1000, height: 200),
                    MySpacing(height: 24),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        MyTextBold(text: 'What\'s Included?', fontSize: 20),
                      ],
                    ),
                    MySpacing(height: 12),
                    Container(color: Colors.amber, width: 1000, height: 80),
                    MySpacing(height: 24),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [MyTextBold(text: 'About Trip', fontSize: 20)],
                    ),
                    MySpacing(height: 12),
                    MyTextNormal(
                      text:
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In euismod ipsum et dui rhoncus auctor.',
                      textAlign: TextAlign.start,
                    ),
                    MySpacing(height: 24),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        MyTextBold(text: 'Gallery Photo', fontSize: 20),
                      ],
                    ),
                    MySpacing(height: 12),
                    Container(color: Colors.amber, width: 1000, height: 100),
                    MySpacing(height: 24),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [MyTextBold(text: 'Location', fontSize: 20)],
                    ),
                    MySpacing(height: 12),
                    Container(color: Colors.amber, width: 1000, height: 240),
                    MySpacing(height: 24),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MyTextBold(text: 'Reviews', fontSize: 20),
                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.amber),
                            MySpacing(width: 4),
                            MyTextNormal(
                              text: '4.8',
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ],
                        ),
                      ],
                    ),
                    MySpacing(height: 12),
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
