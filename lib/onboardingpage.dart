import 'package:flutter/material.dart';
import 'package:second_project/loginpage.dart';
class Onboardingpage extends StatefulWidget {
  const Onboardingpage({super.key});

  @override
  State<Onboardingpage> createState() => _Onboardingpage();
}

class _Onboardingpage extends State<Onboardingpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar:AppBar(
      //
      // ),
      backgroundColor:Color(0XFFD4E3FF),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/Welcome Screen1.png'),
          Image.asset('assets/Group.png'),
          SizedBox(height:40),
          Text('You Gateway',style:TextStyle(fontSize:24,fontWeight:FontWeight.w600)),
          Text('To',style:TextStyle(fontSize:24,fontWeight:FontWeight.w600)),
          Center(
            child: RichText(
                text:TextSpan(
                  children: [
                    TextSpan(
                      text:'Incr',style:TextStyle(fontSize:40,fontWeight:FontWeight.w600,
                    color:Colors.black),
                    ),
                    TextSpan(
                      text:'edible Deals!',style:TextStyle(fontSize:40,fontWeight:FontWeight.w600,
                        color:Colors.blue),
                    ),
                  ],
                ),
            ),
          ),

          GestureDetector(
            onTap:(){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context)=>Loginpage()),
            );
            },
            child:Container(
              width:double.infinity,
                alignment:Alignment.center,
                padding:EdgeInsets.symmetric(vertical:10),
                margin: EdgeInsets.only(top:10,left:10,right:10),
                decoration:BoxDecoration(
                 borderRadius:BorderRadius.circular(10),
                  color:Color(0XFF63A2FF),
                ),
                child: Text('Get Started',style:TextStyle(fontSize:18,fontWeight:FontWeight.w600
                ,color:Colors.white)),
            ),
          ),

        ],
      ),

    );
  }
}


// bottomSheet:Container(
//   child:Text('data'),
// ),