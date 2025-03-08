import 'package:flutter/material.dart';
import 'package:second_project/contactpage.dart';
import 'package:second_project/generalquestions.dart';

class Helppage extends StatefulWidget {
  const Helppage({super.key});

  @override
  State<Helppage> createState() => _Helppage();
}

class _Helppage extends State<Helppage> {
  List<String>nameList=['General Questions','Using the App','Account Management','Technical issues',
    'Contact Us'];
    void _navigateToPage(int index){
      switch(index){
        case 0:{
          Navigator.push(
              context,
            MaterialPageRoute(builder: (context)=>Generalquestions()),
              );
          break;
        }
        case 4 :{
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context)=>Contactpage()),
          );
          break;
        }
      }
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            'Help',
            style: TextStyle(
                color: Color(0XFF1E1E1E),
                fontSize: 18,
                fontWeight: FontWeight.w600),
          )),
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Select Questions',style:TextStyle(color:Color(0XFF1E1E1E),fontSize:16,fontWeight:FontWeight.w600),),
          ),
         ListView.builder(
           shrinkWrap:true,
           itemCount:nameList.length,
           itemBuilder:(context,index){
             return GestureDetector(
               onTap:(){
                 _navigateToPage(index);
               },
               child: Container(
                 padding:EdgeInsets.only(left:10,right:10),
                 child:Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Text('${nameList[index]}',
                     style:TextStyle(color:Color(0XFF1E1E1E),
                     fontSize:14,
                     fontWeight:FontWeight.w400),),
                     SizedBox(height:50),
                     Icon(Icons.arrow_forward_ios,
                         size:18,color:Color(0XFF1E1E1E)),
                   ],
                 ),
               ),
             );
           },
         ),
        ],
      ),
    );
  }
}
