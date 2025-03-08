import 'package:flutter/material.dart';

class Notificationpage extends StatefulWidget {
  const Notificationpage({super.key});

  @override
  State<Notificationpage> createState() => _Notificationpage();
}

class _Notificationpage extends State<Notificationpage> {
  int tabIndex=0;
  List<String>nameList =[];
  List<String>imageList=['assets/Bambah Boutique  banner 1.png','assets/Bambah Boutique banner 2.png',
    'assets/Bambah Boutique  banner 1.png','assets/Bambah Boutique banner 2.png'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        'Notifications',
        style: TextStyle(
            color: Color(0XFF1E1E1E),
            fontSize: 18,
            fontWeight: FontWeight.w600),
      )),
        body:Column(
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap:(){
                    setState(() {
                      tabIndex=0;
                    });
                  },
                    child: Container(
                      width:49,
                      height:34,
                      margin:EdgeInsets.only(left:5),
                      alignment:Alignment.center,
                      decoration:BoxDecoration(
                        color:tabIndex==0?Color(0XFF048CFF):Color(0XFFD6D6D6),
                        borderRadius:BorderRadius.circular(10),
                      ),

                      child: Text('All',style:TextStyle(color:tabIndex==0?Color(0XFFFFFFFF):Color(0XFF757575),
                          fontSize:14,fontWeight:FontWeight.w600
                      ),
                      ),
                    ),
                ),
                GestureDetector(
                  onTap:(){
                    setState(() {
                      tabIndex=1;
                    });
                  },
                  child:Container(
                    alignment:Alignment.center,
                    margin:EdgeInsets.only(left:5),
                    width:65,
                    height:34,
                    decoration:BoxDecoration(
                      color:tabIndex==1?Color(0XFF048CFF):Color(0XFFD6D6D6),
                      borderRadius:BorderRadius.circular(10),
                    ),
                     child: Text('Unread',style:TextStyle(color:tabIndex==1?Color(0XFFFFFFFF):Color(0XFF757575),
                     fontSize:14,fontWeight:FontWeight.w600
                    ),
                     ),
                  ),
                ),
                GestureDetector(
                  onTap:(){
                    setState(() {
                      tabIndex=2;
                    });
                  },
                  child:Container(
                    alignment:Alignment.center,
                    margin:EdgeInsets.only(left:5),
                    width:67,
                    height:34,
                    decoration:BoxDecoration(
                      color:tabIndex==2?Color(0XFF048CFF):Color(0XFFD6D6D6),
                      borderRadius:BorderRadius.circular(10),
                    ),
                    child: Text('read',style:TextStyle(color:tabIndex==2?Color(0XFFFFFFFF):Color(0XFF757575),
                        fontSize:14,fontWeight:FontWeight.w600
                    ),
                    ),
                  ),
                ),
              ],
            ),
            ListView.builder(
              shrinkWrap:true,
              itemCount:imageList.length,
              itemBuilder:(context,index){
                return Container(
                  padding:EdgeInsets.all(10),
                  child:Card(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset('${imageList[index]}'),
                                SizedBox(width:5),
                                Column(
                                  crossAxisAlignment:CrossAxisAlignment.start,
                                  children: [
                                    Text('Desert Oasis Decor .5h ago',style:TextStyle(color:Color(0XFF757575),
                                    fontSize:12,fontWeight:FontWeight.w400),),
                                    Text('Get 25% OFF an all items \n storewide!',
                                    style:TextStyle(color:Color(0XFF1E1E1E),fontSize:16,
                                    fontWeight:FontWeight.w600),),
                                  ],
                                ),
                              ],
                            ),
                            Icon(Icons.more_vert,color:Color(0XFF757575),),

                          ],
                        ),
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
