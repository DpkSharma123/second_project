import 'package:flutter/material.dart';
class Generalquestions extends StatefulWidget {
  const Generalquestions({super.key});

  @override
  State<Generalquestions> createState() => _Generalquestions();
}

class _Generalquestions extends State<Generalquestions> {
      List<Map<String,dynamic>> nameList=[
        {
          'question':'What is Flimaxads?',
          'status' :false,
          'answer':'Flimaxads is an app that provides advertisements and offers for '
              'various startup brands and well-established'
              ' brands across different categories.'
              ' It allows users to find and redeem offers easily.'
        },
        {
          'question':'Is there any cost to use Flimaxads?',
          'status':false,
          'answer':'Flimaxads is an app that provides advertisements and offers for '
              'various startup brands and well-established'
              ' brands across different categories.'
              ' It allows users to find and redeem offers easily.'

        },

      ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text('Geneal Questions',style:TextStyle(color:Color(0XFF1E1E1E),
        fontSize:18,fontWeight:FontWeight.w600),),
      ),
        body:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Select issues',
              style: TextStyle(
                color: Color(0XFF1E1E1E),
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
            Expanded(
              child: ListView.builder(
                itemCount: nameList.length,
                itemBuilder:(context,index){
                  return Container(
                    child:Column(
                      children: [
                        ListTile(
                          title:Text(nameList[index]['question'],
                          style:TextStyle(fontSize:14,fontWeight:FontWeight.w400),),
                          trailing: Icon(nameList[index]['status']?Icons.keyboard_arrow_up:Icons.keyboard_arrow_down,),
                          splashColor:Colors.green,
                            shape:RoundedRectangleBorder(
                              borderRadius:BorderRadius.circular(10),
                            ),
                            onTap:(){
                            setState(() {
                              nameList[index]['status']=!nameList[index]['status'];
                            });
                            },
                          ),
                          if(nameList[index]['status'])
                            Padding(
                              padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                              child: Text(nameList[index]['answer'],
                              style:TextStyle(color:Color(0XFF757575),fontSize:14,fontWeight:FontWeight.w400),),
                            ),

                      ],
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











