import 'package:flutter/material.dart';
import 'package:second_project/onboardingpage.dart';
class Splashscreenpage extends StatefulWidget {
  const Splashscreenpage({super.key});

  @override
  State<Splashscreenpage> createState() => _Splashscreenpage();
}

class _Splashscreenpage extends State<Splashscreenpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar:AppBar(
      //   title:Text('abc'),
      //   centerTitle: true,
      //   backgroundColor:Color(0XFFD4E3FF),
      // ),
      backgroundColor:Color(0XFFD4E3FF),
      body:Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width:428,
              height:428,
              decoration:BoxDecoration(
                  color: Colors.white.withOpacity(0.15),
                shape:BoxShape.circle,
              ),
             child:Center(
               child: Container(
                  width:348,
                  height:348,
                 decoration:BoxDecoration(
                   color: Colors.white.withOpacity(0.15),
                   shape:BoxShape.circle,
                 ),
                 child:Center(
                   child: Container(
                     width:268,
                     height:268,
                     decoration:BoxDecoration(
                       color: Colors.white.withOpacity(0.2),
                       shape:BoxShape.circle,
                     ),
                     child:GestureDetector(
                       onTap:(){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>Onboardingpage()),
                      );
                       },
                         child: Image.asset('assets/frame.png')
                     ),
                   ),
                 ),
                ),
             ),

            ),
          ],
        ),
      ),
    );
  }
}
