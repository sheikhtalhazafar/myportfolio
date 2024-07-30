import 'package:flutter/material.dart';
import 'package:sheikhtalhaportfolio/global/button.dart';
import 'package:sheikhtalhaportfolio/global/constant.dart';

class contactus extends StatelessWidget {
  const contactus({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      // height: size.height,
      width: size.width,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Contact ',
                    style: constants.style(fontsize: 30),
                  ),
                  Text(
                    'me ',
                    style: constants.style1(fontsize: 35),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                buildtextfield(text: 'Full Name', line: 1),
                buildtextfield(text: 'Email', line: 1),
              ],
            ),
            Row(
              children: [
                buildtextfield(text: 'Country', line: 1),
                buildtextfield(text: 'Mobile-Number', line: 1),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                maxLines: 10,
                decoration: InputDecoration(
                    hintText: 'your message',
                    fillColor: Colors.amber.shade100,
                    filled: true,
                    focusColor: Colors.amber,
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none)),
              ),
            ),
            appbutton.button(value: 'Submit'),
            constants.size(height: 15),
          ],
        ),
      ),
    );
  }

  Expanded buildtextfield({required String text, required int line}) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Material(
          borderRadius: BorderRadius.circular(10),
          elevation: 1,
          child: TextField(
            maxLines: line,
            decoration: InputDecoration(
              fillColor: Colors.amber.shade100,
              filled: true,
              hintText: text,
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none),
            ),
          ),
        ),
      ),
    );
  }
}
