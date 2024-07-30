import 'package:flutter/material.dart';
import 'package:sheikhtalhaportfolio/global/constant.dart';
import 'package:sheikhtalhaportfolio/responsive/responsiveclass.dart';

class myservices extends StatefulWidget {
  const myservices({super.key});

  @override
  State<myservices> createState() => _myservicesState();
}

class _myservicesState extends State<myservices> {
  bool box = false;
  bool box1 = false;
  bool box2 = false;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return responsive(
        mobile: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: size.width * 0.1,
            vertical: size.height * 0.1,
          ),
          child: SingleChildScrollView(
            child: Container(
              color: Colors.amber.shade50,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'My ',
                          style: constants.style(fontsize: 30),
                        ),
                        Text(
                          'Services ',
                          style: constants.style1(fontsize: 35),
                        ),
                      ],
                    ),
                  ),
                  constants.size(height: 60),
                  InkWell(
                      onTap: () {},
                      onHover: (value) {
                        setState(() {
                          if (value) {
                            box = true;
                          } else {
                            box = false;
                          }
                        });
                      },
                      child: servicebox(
                          hover: box,
                          image: 'assets/images/coding.png',
                          text:
                              'Flutter Developer is responsible for running and designing /n'
                              'product application features across multiple devices across platforms. /n'
                              'flutter is a google UI toolkit for building beautiful, natively  compiled /n'
                              'apps for mobile,web, and desktop from a single codebase.')),
                  constants.size(height: 15),
                  InkWell(
                      onTap: () {},
                      onHover: (value) {
                        setState(() {
                          if (value) {
                            box1 = true;
                          } else {
                            box1 = false;
                          }
                        });
                      },
                      child: servicebox(
                          hover: box1,
                          image: 'assets/images/brush-stroke.png',
                          text:
                              'Flutter Developer is responsible for running and designing /n'
                              'product application features across multiple devices across platforms. /n'
                              'flutter is a google UI toolkit for building beautiful, natively  compiled /n'
                              'apps for mobile,web, and desktop from a single codebase.')),
                  constants.size(height: 15),
                  InkWell(
                      onTap: () {},
                      onHover: (value) {
                        setState(() {
                          if (value) {
                            box2 = true;
                          } else {
                            box2 = false;
                          }
                        });
                      },
                      child: servicebox(
                          hover: box2,
                          image: 'assets/images/analytics.png',
                          text:
                              'Flutter Developer is responsible for running and designing /n'
                              'product application features across multiple devices across platforms. /n'
                              'flutter is a google UI toolkit for building beautiful, natively  compiled /n'
                              'apps for mobile,web, and desktop from a single codebase.'))
                ],
              ),
            ),
          ),
        ),
        tablet: SingleChildScrollView(
          child: Container(
            color: Colors.amber.shade50,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'My ',
                        style: constants.style(fontsize: 30),
                      ),
                      Text(
                        'Services ',
                        style: constants.style1(fontsize: 35),
                      ),
                    ],
                  ),
                ),
                constants.size(height: 60),
                Container(
                  width: double.infinity,
                  child: InkWell(
                      onTap: () {},
                      onHover: (value) {
                        setState(() {
                          if (value) {
                            box = true;
                          } else {
                            box = false;
                          }
                        });
                      },
                      child: servicebox(
                          hover: box,
                          image: 'assets/images/coding.png',
                          text:
                              'Flutter Developer is responsible for running and designing /n'
                              'product application features across multiple devices across platforms. /n'
                              'flutter is a google UI toolkit for building beautiful, natively  compiled /n'
                              'apps for mobile,web, and desktop from a single codebase.')),
                ),
                constants.size(height: 10),
                Container(
                  width: double.infinity,
                  child: InkWell(
                      onTap: () {},
                      onHover: (value) {
                        setState(() {
                          if (value) {
                            box1 = true;
                          } else {
                            box1 = false;
                          }
                        });
                      },
                      child: servicebox(
                          hover: box1,
                          image: 'assets/images/brush-stroke.png',
                          text:
                              'Flutter Developer is responsible for running and designing /n'
                              'product application features across multiple devices across platforms. /n'
                              'flutter is a google UI toolkit for building beautiful, natively  compiled /n'
                              'apps for mobile,web, and desktop from a single codebase.')),
                ),
                constants.size(height: 10),
                Container(
                  width: double.infinity,
                  child: InkWell(
                      onTap: () {},
                      onHover: (value) {
                        setState(() {
                          if (value) {
                            box2 = true;
                          } else {
                            box2 = false;
                          }
                        });
                      },
                      child: servicebox(
                          hover: box2,
                          image: 'assets/images/analytics.png',
                          text:
                              'Flutter Developer is responsible for running and designing /n'
                              'product application features across multiple devices across platforms. /n'
                              'flutter is a google UI toolkit for building beautiful, natively  compiled /n'
                              'apps for mobile,web, and desktop from a single codebase.')),
                ),
              ],
            ),
          ),
        ),
        desktop: Padding(
          padding: EdgeInsets.only(
            left: size.width * 0.01,
            right: size.width * 0.01,
          ),
          child: SingleChildScrollView(
            child: Container(
              width: size.width,
              height: size.height,
              color: Colors.amber.shade50,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'My ',
                          style: constants.style(fontsize: 30),
                        ),
                        Text(
                          'Services ',
                          style: constants.style1(fontsize: 35),
                        ),
                      ],
                    ),
                  ),
                  constants.size(height: 60),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkWell(
                          onTap: () {},
                          onHover: (value) {
                            setState(() {
                              if (value) {
                                box = true;
                              } else {
                                box = false;
                              }
                            });
                          },
                          child: servicebox(
                              hover: box,
                              image: 'assets/images/coding.png',
                              text:
                                  'Flutter Developer is responsible for running and designing /n'
                                  'product application features across multiple devices across platforms. /n'
                                  'flutter is a google UI toolkit for building beautiful, natively  compiled /n'
                                  'apps for mobile,web, and desktop from a single codebase.')),
                      InkWell(
                          onTap: () {},
                          onHover: (value) {
                            setState(() {
                              if (value) {
                                box1 = true;
                              } else {
                                box1 = false;
                              }
                            });
                          },
                          child: servicebox(
                              hover: box1,
                              image: 'assets/images/brush-stroke.png',
                              text:
                                  'Flutter Developer is responsible for running and designing /n'
                                  'product application features across multiple devices across platforms. /n'
                                  'flutter is a google UI toolkit for building beautiful, natively  compiled /n'
                                  'apps for mobile,web, and desktop from a single codebase.')),
                      InkWell(
                          onTap: () {},
                          onHover: (value) {
                            setState(() {
                              if (value) {
                                box2 = true;
                              } else {
                                box2 = false;
                              }
                            });
                          },
                          child: servicebox(
                              hover: box2,
                              image: 'assets/images/analytics.png',
                              text:
                                  'Flutter Developer is responsible for running and designing /n'
                                  'product application features across multiple devices across platforms. /n'
                                  'flutter is a google UI toolkit for building beautiful, natively  compiled /n'
                                  'apps for mobile,web, and desktop from a single codebase.')),
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }

  Padding servicebox(
      {required bool hover, required String image, required String text}) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: AnimatedContainer(
          duration: Duration(milliseconds: 100),
          width: hover ? 330 : 320,
          height: hover ? 340 : 330,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.amber),
              color: Colors.grey.shade100,
              boxShadow: const [
                BoxShadow(
                    color: Colors.grey, blurRadius: 1.0, offset: Offset(1, 6))
              ]),
          child: Column(
            children: [
              constants.size(height: 15),
              Image(
                image: AssetImage(image),
                width: 50,
                height: 50,
                color: Colors.amber,
              ),
              constants.size(height: 15),
              Expanded(
                  child: Center(
                      child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  text,
                  textAlign: TextAlign.center,
                  style: constants.style(fontsize: 18),
                ),
              )))
            ],
          ),
        ));
  }
}
