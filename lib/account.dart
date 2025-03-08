import 'package:flutter/material.dart';
import 'package:second_project/editpage.dart';
import 'package:second_project/helppage.dart';
import 'package:second_project/loginpage.dart';
import 'package:second_project/notificationpage.dart';
import 'package:second_project/savepage.dart';
import 'package:second_project/settingpage.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _Account();
}

class _Account extends State<Account> {
  List<String> nameList = [
    'Saved',
    'Notificatios',
    'Help?',
    'Settings',
    'Logout'
  ];
  List<String> imageList = [
    'assets/dil.png',
    'assets/bell.png',
    'assets/help.png',
    'assets/setting.png',
    'assets/logout1.png'
  ];
      void _navigateToPage(int index){
      switch(index){
        case 0:{
          Navigator.push(
            context,
           MaterialPageRoute(builder: (context)=>Savepage()),

          );
          break;
        }
        case 1:{
          Navigator.push(
            context,
            MaterialPageRoute(builder:(context)=>Notificationpage()),
          );
          break;
        }
        case 2:{
          Navigator.push(
          context,
          MaterialPageRoute(builder: (context)=>Helppage()),
          );
          break;
        }
        case 3:{
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context)=>Settingpage()),
          );
          break;
        }
        case 4:{
          _showLogoutDialog();
          break;
        }
      }
      }
      void _showLogoutDialog(){
        showDialog(
          context:context,
        builder:(BuildContext context)=>AlertDialog(
          title:Column(
            children: [
              Image.asset('assets/logout2.png'),
              SizedBox(height: 10),
              Text('Are you Sure want to \n logout?'),
              Row(
                mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap:(){
                    Navigator.pop(context);
                    },
                    child:Text('Cancel',style:TextStyle(fontSize:16,fontWeight:FontWeight.w600),),
                  ),
                  GestureDetector(
                    onTap:(){
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context)=>Loginpage()),
                        (route)=>false,
                    );
                    },
                    child:Container(
                      padding:EdgeInsets.symmetric(vertical:10,horizontal:15),
                      decoration:BoxDecoration(
                        // border:Border.all(color:Colors.red,width:2),
                        borderRadius:BorderRadius.circular(10),
                        color:Color(0XFF63A2FF),
                      ),
                        child: Text('Logout',style:TextStyle(color:Color(0XFFFFFFFF),fontSize:16,fontWeight:FontWeight.w600),)),
                  ),
                ],
              ),
            ],
          ),
        ),
        );

      }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Account',
          style: TextStyle(
              color: Color(0XFF1E1E1E),
              fontSize: 18,
              fontWeight: FontWeight.w600),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              // border:Border.all(color:Colors.red,width:2),
              borderRadius: BorderRadius.circular(10),
              color: Color(0XFFD4E3FF),
            ),
            child: Row(
              children: [
                Image.asset('assets/capman2.png'),
                SizedBox(width: 10),
                Column(
                  children: [
                    Text(
                      'Aman Kumar',
                      style: TextStyle(
                          color: Color(0XFF1E1E1E),
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      '+0987654321',
                      style: TextStyle(
                          color: Color(0XFF757575),
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(height: 5),
                    GestureDetector(
                      onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context)=>Editpage()),
                      );
                      },
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        decoration: BoxDecoration(
                          // border:Border.all(color:Colors.red,width:2),
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0XFFF5F5F5),
                        ),
                        child: Row(
                          children: [
                            Image.asset('assets/Edit Square.png'),
                            SizedBox(width: 5),
                            Text(
                              'Edit',
                              style: TextStyle(
                                  color: Color(0XFF757575),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Other Information',
              style: TextStyle(
                  color: Color(0XFF1E1E1E),
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
            ),
          ),
         Expanded(
           child: ListView.builder(
             shrinkWrap:true,
             itemCount:nameList.length,
             itemBuilder:(context,index){
               return GestureDetector(
                 onTap:(){
                   _navigateToPage(index);
                 },
                 child: Container(
                   padding:EdgeInsets.symmetric(vertical:15,horizontal:15),
                   child:Row(
                     mainAxisAlignment:MainAxisAlignment.spaceBetween,
                     children: [
                      Row(
                        children: [
                          Image.asset('${imageList[index]}'),
                          SizedBox(width:8),
                          Text('${nameList[index]}',style:TextStyle(color:Color(0XFF1E1E1E),fontSize:16,
                              fontWeight:FontWeight.w400),),
                        ],
                      ),
                       Icon(Icons.arrow_forward_ios,size:18,color:Color(0XFF1E1E1E),),
                     ],
                   ),
                   // Image.asset('assets/rightarrow.png'),

                 ),
               );
             },
           ),
         ),
        ],
      ),
    );
  }
}
