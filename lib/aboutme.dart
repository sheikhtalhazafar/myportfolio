import 'package:flutter/material.dart';
import 'package:sheikhtalhaportfolio/global/constant.dart';
import 'package:sheikhtalhaportfolio/responsive/responsiveclass.dart';

class aboutme extends StatelessWidget {
  const aboutme({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return responsive(
        mobile: Column(
          children: [
            aboutmebuild(),
            Expanded(
              child: Image(
                image: AssetImage('assets/images/talha2.png'),
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.all(15),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.amber)),
                child: Text(
                  'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used '
                  '\nto demonstratethe visual form of a document or a typeface without relying on '
                  '\nmeaningful content Lorem ipsum may be used as a placeholder before final copy is available',
                  style: constants.style(fontsize: 20),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            constants.size(height: 100),
          ],
        ),
        tablet: Padding(
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
          child: Column(
            children: [
              aboutmebuild(),
              Expanded(
                child: Image(
                  image: AssetImage('assets/images/talha2.png'),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(15),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.amber)),
                  child: Text(
                    'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used '
                    '\nto demonstratethe visual form of a document or a typeface without relying on '
                    '\nmeaningful content Lorem ipsum may be used as a placeholder before final copy is available',
                    style: constants.style(fontsize: 20),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              constants.size(height: 100),
            ],
          ),
        ),
        desktop: Padding(
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'About ',
                      style: constants.style(fontsize: 30),
                    ),
                    Text(
                      'Me ',
                      style: constants.style1(fontsize: 35),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  const Image(
                    image: AssetImage('assets/images/talha2.png'),
                    width: 500,
                    height: 500,
                  ),
                  Expanded(
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.amber)),
                      child: Text(
                        'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used '
                        '\nto demonstratethe visual form of a document or a typeface without relying on '
                        '\nmeaningful content Lorem ipsum may be used as a placeholder before final copy is available',
                        style: constants.style(fontsize: 20),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  )
                ],
              ),
              constants.size(height: 100)
            ],
          ),
        ));
  }

  Padding aboutmebuild() {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'About ',
            style: constants.style(fontsize: 30),
          ),
          Text(
            'Me ',
            style: constants.style1(fontsize: 35),
          ),
        ],
      ),
    );
  }
}
