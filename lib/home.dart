import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:sheikhtalhaportfolio/aboutme.dart';
import 'package:sheikhtalhaportfolio/contactus.dart';
import 'package:sheikhtalhaportfolio/footer.dart';
import 'package:sheikhtalhaportfolio/global/constant.dart';
import 'package:sheikhtalhaportfolio/homepage.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:sheikhtalhaportfolio/services.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  ItemScrollController _itemScrollController = ItemScrollController();
  final menueitems = <String>['Home', 'About', 'MyServices', 'ContactUs'];
  var menuindex = 0;

  final Screenlist = <Widget>[
    home_page(),
    aboutme(),
    myservices(),
    contactus(),
    FooterClass()
  ];

  void scrollto({required int index}) {
    _itemScrollController
        .scrollTo(
            index: index,
            duration: Duration(seconds: 2),
            curve: Curves.fastLinearToSlowEaseIn)
        .whenComplete(() {
      setState(() {
        menuindex = index;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        titleSpacing: 1,
        elevation: 1,
        backgroundColor: Color(0xffFFA300),
        title: LayoutBuilder(builder: (context, Constraints) {
          if (Constraints.maxWidth < 768) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.02),
              child: Row(
                children: [
                  Text('MyPortfolio'),
                  Spacer(),
                  PopupMenuButton(
                      icon: Icon(
                        Icons.menu,
                        color: Colors.white,
                      ),
                      position: PopupMenuPosition.under,
                      itemBuilder: (BuildContext context) => menueitems
                          .asMap()
                          .entries
                          .map((e) => PopupMenuItem(
                              onTap: () {
                                scrollto(index: e.key);
                              },
                              child: Text(
                                e.value,
                                style: TextStyle(color: Colors.black),
                              )))
                          .toList())
                ],
              ),
            );
          } else {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.02),
              child: Row(
                children: [
                  const Text('MyPortfolio'),
                  const Spacer(),
                  SizedBox(
                      height: 30,
                      child: ListView.separated(
                          shrinkWrap: true,
                          itemCount: menueitems.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return InkWell(
                                onTap: () {
                                  scrollto(index: index);
                                },
                                onHover: (value) {
                                  setState(() {
                                    if (value) {
                                      menuindex = index;
                                    } else {
                                      menuindex = -1;
                                    }
                                  });
                                },
                                child: buildanimatedcontainer(menueitems, index,
                                    menuindex == index ? true : false));
                          },
                          separatorBuilder: (context, child) =>
                              constants.size(width: 40)))
                ],
              ),
            );
          }
        }),
      ),
      body: Scrollbar(
        trackVisibility: true,
        isAlwaysShown: true,
        child: ScrollablePositionedList.builder(
            itemScrollController: _itemScrollController,
            itemCount: Screenlist.length,
            itemBuilder: (context, index) {
              return Screenlist[index];
            }),
      ),

      // ListView.builder(
      //     itemCount: Screenlist.length,
      //     itemBuilder: (context, index) {
      //       return Screenlist[index];
      //     })
    );
  }

  AnimatedContainer buildanimatedcontainer(
      List<String> menueitems, int index, bool hover) {
    return AnimatedContainer(
      duration: Duration(seconds: 1),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      child: Text(
        menueitems[index],
        style: TextStyle(color: hover ? Colors.black : Colors.white),
      ),
    );
  }
}
