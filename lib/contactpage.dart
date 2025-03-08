import 'package:flutter/material.dart';
class Contactpage extends StatefulWidget {
  const Contactpage({super.key});

  @override
  State<Contactpage> createState() => _Contactpage();
}

class _Contactpage extends State<Contactpage> {
      List<Map<String,dynamic>>nameList=[
        {
          'question':'How can i contact Flimaxads support?',
          'status' : false,
          'answer':'You can contact us via email at support@flimaxads.com \n or call us at +1-800-FLIMAX. '
        }

    ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text('Contact us',
        style: TextStyle(
            color: Color(0XFF1E1E1E),
            fontSize: 18,
            fontWeight: FontWeight.w600)),
      ),
      body:Column(
        crossAxisAlignment:CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Select issues',style:TextStyle(color:Color(0XFF1E1E1E),fontSize:16,fontWeight:FontWeight.w600),),
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap:true,
              itemCount: nameList.length,
              itemBuilder:(context,index){
                return Container(
                  child:Column(
                    children: [
                      ListTile(
                        title:Text(nameList[index]['question'],style:TextStyle(color:Color(0XFF1E1E1E),
                        fontSize:14,fontWeight:FontWeight.w400),),
                        trailing:Icon(nameList[index]['status']?Icons.keyboard_arrow_up:Icons.keyboard_arrow_down),
                        onTap:(){
                          setState(() {
                            nameList[index]['status']=!nameList[index]['status'];
                          });
                        },
                      ),
                      if(nameList[index]['status'])
                      Padding(
                        padding: const EdgeInsets.only(left:16,right:16),
                        child: RichText(
                          text:TextSpan(
                            children:[
                              TextSpan(
                                text:nameList[index]['answer'],
                                style: TextStyle(
                                  color: Color(0XFF1E1E1E),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                             ),
                              ),
                            ],
                          ),
                        ),

                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          GestureDetector(
            onTap:(){

            },
              child: Container(
                // alignment:Alignment.center,
                padding:EdgeInsets.symmetric(vertical:10),
                margin:EdgeInsets.only(left:10,right:10),
                width:double.infinity,
                  decoration:BoxDecoration(
                    borderRadius:BorderRadius.circular(12),
                    color:Color(0XFF63A2FF),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/Calling.png'),
                      Text('Contact Us',
                      style:TextStyle(color:Color(0XFFFFFFFF),
                      fontSize:18,
                      fontWeight:FontWeight.w600),),
                    ],
                  )
              )
          ),
        ],
      ),
    );
  }
}
