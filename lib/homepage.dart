import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:sheikhtalhaportfolio/global/button.dart';
import 'package:sheikhtalhaportfolio/global/constant.dart';
import 'package:sheikhtalhaportfolio/responsive/responsiveclass.dart';

class home_page extends StatelessWidget {
  home_page({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return responsive(
        mobile: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: 250,
                    height: 400,
                    decoration: const BoxDecoration(
                        color: Color(0xffFEC859),
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(5),
                            bottomRight: Radius.circular(15))),
                    child: Image(
                      image: AssetImage('assets/images/talha2.png'),
                    ),
                  ),
                  constants.size(width: 30),
                  Column(
                    children: [
                      constants.size(height: 10),
                      Text(
                        'Sheikh',
                        style: constants.style(fontsize: 50),
                      ),
                      constants.size(height: 10),
                      Text(
                        'Talha',
                        style: constants.style(fontsize: 50),
                      ),
                      constants.size(height: 10),
                      Text(
                        'Zafar',
                        style: constants.style(fontsize: 50),
                      ),
                      constants.size(height: 10),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 80,
                ),
                child: Row(
                  children: [
                    Text(
                      'I am ',
                      style: constants.style(fontsize: 40),
                    ),
                    buildanimatedrow(),
                  ],
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(top: 70),
                  child: appbutton.button(value: 'More About me')),
              constants.size(height: 50),
            ],
          ),
        ),
        tablet: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: 400,
                    height: 450,
                    decoration: const BoxDecoration(
                        color: Color(0xffFEC859),
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(5),
                            bottomRight: Radius.circular(15))),
                    child: Image(
                      image: AssetImage('assets/images/talha2.png'),
                    ),
                  ),
                  constants.size(width: 30),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hello, It's me ",
                          style: constants.style(fontsize: 40),
                        ),
                        constants.size(height: 10),
                        Text(
                          'Sheikh Talha Zafar',
                          style: constants.style(fontsize: 40),
                        ),
                        constants.size(height: 10),
                        Row(
                          children: [
                            Text(
                              'I am ',
                              style: constants.style(fontsize: 40),
                            ),
                            Expanded(child: buildanimatedrow()),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                  padding: EdgeInsets.only(top: 70),
                  child: appbutton.button(value: 'More About me')),
              constants.size(height: 50),
            ],
          ),
        ),
        desktop: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: size.width * 0.1),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hello, It's me ",
                          style: constants.style(fontsize: 40),
                        ),
                        constants.size(height: 10),
                        Text(
                          'Sheikh Talha Zafar',
                          style: constants.style(fontsize: 40),
                        ),
                        constants.size(height: 10),
                        Row(
                          children: [
                            Text(
                              'I am ',
                              style: constants.style(fontsize: 40),
                            ),
                            buildanimatedrow(),
                          ],
                        ),
                        Padding(
                            padding: EdgeInsets.only(top: 70),
                            child: appbutton.button(value: 'More About me'))
                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    width: 500,
                    height: 600,
                    decoration: const BoxDecoration(
                        color: Color(0xffFEC859),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 5.0,
                              spreadRadius: 1.0,
                              offset: Offset(
                                -4.0, // Move to right 7.0 horizontally
                                -8.0, // Move to bottom 8.0 Vertically
                              ))
                        ]),
                    child: Image(
                      image: AssetImage('assets/images/talha2.png'),
                    ),
                  )
                ],
              ),
              constants.size(height: 50)
            ],
          ),
        ));
  }

  AnimatedTextKit buildanimatedrow() {
    return AnimatedTextKit(
      animatedTexts: [
        TypewriterAnimatedText('Flutter Developer',
            textStyle: constants.style1(fontsize: 30)),
        TypewriterAnimatedText('Designer',
            textStyle: constants.style1(fontsize: 30)),
        TypewriterAnimatedText('Video Editor',
            textStyle: constants.style1(fontsize: 30)),
      ],
      totalRepeatCount: 4,
      pause: Duration(milliseconds: 200),
    );
  }
}
