import 'package:flutter/material.dart';
import 'package:second_project/categorypage.dart';
import 'package:second_project/homepage.dart';
import 'package:second_project/offerspage.dart';
import 'package:second_project/shoplistpage.dart';

class Bottomnavigationpage extends StatefulWidget {
  const Bottomnavigationpage({super.key});

  @override
  State<Bottomnavigationpage> createState() => _Bottomnavigationpage();
}

class _Bottomnavigationpage extends State<Bottomnavigationpage> {
  int tabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Container(
          height: 60,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        tabIndex = 0;
                      });
                    },
                    child: Column(
                      children: [
                        Icon(Icons.home,
                            color: tabIndex == 0 ? Color(0XFF048CFF) : Colors
                                .black),
                        Text('Home',
                          style: TextStyle(
                              color: tabIndex == 0 ? Color(0XFF048CFF) : Colors
                                  .black,
                              fontSize: 14, fontWeight: FontWeight.w600),),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        tabIndex = 1;
                      });
                    },
                    child: Column(
                      children: [
                        Icon(Icons.category,
                            color: tabIndex == 1 ? Color(0XFF048CFF) : Colors
                                .black),
                        Text('Category',
                          style: TextStyle(
                              color: tabIndex == 1 ? Color(0XFF048CFF) : Colors
                                  .black,
                              fontSize: 14, fontWeight: FontWeight.w600),),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        tabIndex = 2;
                      });
                    },
                    child: Column(
                      children: [
                        Icon(Icons.shop,
                            color: tabIndex == 2 ? Color(0XFF048CFF) : Colors
                                .black),
                        Text('Shoplist',
                          style: TextStyle(
                              color: tabIndex == 2 ? Color(0XFF048CFF) : Colors
                                  .black,
                              fontSize: 14, fontWeight: FontWeight.w600),),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap:(){
                    setState(() {
                      tabIndex=3;
                    });
                    },
                   child:Column(
                     children: [
                       Icon(Icons.settings,
                       color:tabIndex==3?Color(0XFF048CFF):Colors.black),
                       Text('Offers',
                         style: TextStyle(
                             color: tabIndex == 3 ? Color(0XFF048CFF) : Colors
                                 .black,
                             fontSize: 14, fontWeight: FontWeight.w600),),
                     ],
                   ),
                  ),
                ],
              ),
            ],
          ),
        ),
        body: tabScreen()
    );
  }


      Widget tabScreen(){
      switch (tabIndex){
        case 0:
          return Homepage();
        case 1:
          return Categorypage();
        case 2:
        return Shoplistpage();
        case 3:
          return Offerspage();
        default :
          return Homepage();
      }
      }
}

