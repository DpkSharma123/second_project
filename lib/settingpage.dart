import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
class Settingpage extends StatefulWidget {
  const Settingpage({super.key});

  @override
  State<Settingpage> createState() => _Settingpage();
}

class _Settingpage extends State<Settingpage> {
  bool _isSwitched = false;
  List<Map<String,dynamic>>nameList=[
    {
    'value' : 'Delete Account',
    },
    {
      'value' : 'Terms and Conditions',
    },
    {
      'value' : 'Terms & Services',
    },
    {
      'value' : 'Privacy policy',
    },
  ];
  void _navigateToPage(int index){
    switch(index){
      case 0:{
        _showalertbox();
        break;
      }
    }
  }
  void _showalertbox(){
    showDialog(
      context:context,
      builder:(BuildContext context)=>AlertDialog(
        title:Column(
          children: [
            Text('Do you want to delete account?'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap:(){
                    Navigator.pop(context);
                  },
                    child: Container(
                        padding:EdgeInsets.symmetric(vertical:15,horizontal:30),
                      decoration:BoxDecoration(
                        // border:Border.all(color:Colors.red,width:2),
                        borderRadius:BorderRadius.circular(10),
                        color:Colors.red,
                      ),
                        child: Text('No',style:TextStyle(fontSize:12,color:Colors.white),)
                    )
                ),
                GestureDetector(
                    onTap:(){
                      Navigator.pop(context);
                    },
                    child: Container(
                        padding:EdgeInsets.symmetric(vertical:15,horizontal:30),
                        decoration:BoxDecoration(
                          // border:Border.all(color:Colors.red,width:2),
                          borderRadius:BorderRadius.circular(10),
                          color:Color(0XFF63A2FF),
                        ),
                        child: Text('Yes',style:TextStyle(fontSize:12,color:Colors.white),)
                    )
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
  //       List<String>nameList =['Delete Account','Terms and Conditions','Terms & Services','Privacy policy'];
    @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            'Settings',
            style: TextStyle(
                color: Color(0XFF1E1E1E),
                fontSize: 18,
                fontWeight: FontWeight.w600),
          )),
      body:Column(
        crossAxisAlignment:CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('General Settings',style:TextStyle(color:Color(0XFF1E1E1E),fontSize:16,fontWeight:FontWeight.w600),),
          ),
          Container(
            // width:double.infinity,
            padding:EdgeInsets.symmetric(horizontal:10),
            margin:EdgeInsets.only(left:10,right:10,bottom:10),
            decoration:BoxDecoration(
              color:Color(0XFFFFFFFF),
              borderRadius:BorderRadius.circular(10),
            ),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Text('Notification',style:TextStyle(fontSize:16,fontWeight:FontWeight.w400),),
               Switch(
              value: _isSwitched,
              onChanged: (bool value){
                setState(() {
                _isSwitched =value;
                });
              },
                 activeColor:Color(0XFF1F1F1F),
                 inactiveThumbColor:Colors.white,
              ),
             ],
           ),
          ),

          Container(
            // width:double.infinity,
            padding:EdgeInsets.symmetric(vertical:10,horizontal:10),
            margin:EdgeInsets.only(left:10,right:10,bottom:10),
            decoration:BoxDecoration(
              borderRadius:BorderRadius.circular(10),
              color:Color(0XFFFFFFFF),
            ),
            child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Language',style:TextStyle(fontSize:16,fontWeight:FontWeight.w400),),
                Row(
                  children: [
                    Text('English',style:TextStyle(color:Color(0XFF757575),fontSize:14,
                    fontWeight:FontWeight.w400),),
                    Icon(Icons.arrow_forward_ios,size:13,color:Color(0XFF757575),),
                  ],
                ),
              ],
            ),
          ),
          Container(
            // width:double.infinity,
            padding:EdgeInsets.symmetric(vertical:10,horizontal:10),
            margin:EdgeInsets.only(left:10,right:10),
            decoration:BoxDecoration(
              borderRadius:BorderRadius.circular(10),
              color:Color(0XFFFFFFFF),
            ),
            child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Currency',style:TextStyle(fontSize:16,fontWeight:FontWeight.w400),),
                Row(
                  children: [
                    Text('USD',style:TextStyle(color:Color(0XFF757575),fontSize:14,
                        fontWeight:FontWeight.w400),),
                    Icon(Icons.arrow_forward_ios,size:13,color:Color(0XFF757575),),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Security Settings',style:TextStyle(color:Color(0XFF1E1E1E),fontSize:16,fontWeight:FontWeight.w600),),
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap:true,
              itemCount: nameList.length,
              itemBuilder:(context,index){
                return GestureDetector(
                  onTap:(){
                    _navigateToPage(index);
                  },
                  child: Container(
                    margin:EdgeInsets.only(left:10,right:10,bottom:10),
                    padding:EdgeInsets.symmetric(vertical:10,horizontal:10),
                    decoration:BoxDecoration(
                      borderRadius:BorderRadius.circular(10),
                      color:Color(0XFFFFFFFF),
                    ),
                    child:Column(
                      children: [
                      Row(
                        mainAxisAlignment:MainAxisAlignment.spaceBetween,
                        children: [
                          Text('${nameList[index]['value']}',style:TextStyle(fontSize:16,fontWeight:FontWeight.w400),),
                          Icon(Icons.arrow_forward_ios,size:13,color:Color(0XFF757575)),
                        ],
                      ),
            
                      ],
                    ),
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
