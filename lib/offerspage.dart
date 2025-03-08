import 'package:flutter/material.dart';
import 'package:second_project/account.dart';
import 'package:second_project/searchpage.dart';
class Offerspage extends StatefulWidget {
  const Offerspage({super.key});

  @override
  State<Offerspage> createState() => _Offerspage();
}

class _Offerspage extends State<Offerspage> {
  int tabindex=0;

  List<String>nameList=['Enjoy \$12 OFF on  orders Over \n \$59!','Get 25% OFF on all items \n storewide!','Enjoy \$12 OFF on  orders Over \n \$59!','Get 25% OFF on all items \n storewide!'];
  List<String>imageList=['assets/banner 1.png','assets/banner 2.png','assets/banner 1.png','assets/banner 2.png'];
  List<bool> isChecked = [false, false,false,false,false,false,false,false];

  List<String>nameList1=['Fashion','Footwear','Beauty', 'Personal Care','Groeries',
  'Home Decore','Electronics','Kitchen'];

void showfilterDialog(){
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        builder:(BuildContext context) {
          return StatefulBuilder(
            builder:(BuildContext context, StateSetter setState){
              return Container(
                // height:heightOfModalBottomSheet,
                child:Column(
                  children:[
                    ElevatedButton(
                      onPressed:(){
                        setState((){
                          // heightOfModalBottomSheet+=8;
                        });
                      },
                      child:Text('Increase Height'),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Filter by Category',style:TextStyle(fontSize:18,fontWeight:FontWeight.w600),),
                        IconButton(
                          icon:Icon(Icons.close),
                          onPressed:(){
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    ),
                    Expanded(
                      child: ListView.builder(
                        shrinkWrap:true,
                        itemCount: nameList1.length,
                        itemBuilder:(context,index){
                          return Container(
                            child:Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('${nameList1[index]}',style:TextStyle(fontSize:16,fontWeight:FontWeight.w400,
                                          color:Color(0XFF1E1E1E)),),
                                      GestureDetector(
                                        onTap:(){
                                          setState(() {
                                            isChecked[index]=!isChecked[index];
                                          });
                                        },
                                        child:Icon(isChecked[index]?Icons.check_box:Icons.check_box_outline_blank,
                                            color:isChecked[index]?Color(0XFF048CFF):Colors.black),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                            style:ElevatedButton.styleFrom(
                              shape:RoundedRectangleBorder(
                                borderRadius:BorderRadius.circular(10),
                              ),
                              minimumSize:Size(150,50),
                            ),
                            onPressed:(){
                              setState((){
                                // isChecked.clear();
                                isChecked = [false, false,false,false,false,false,false,false];
                              });
                            },
                            child:Text('Clear Filter',style:TextStyle(fontSize:16,fontWeight:FontWeight.w600,
                                color:Color(0XFF048CFF)),),
                          ),
                          ElevatedButton(
                            style:ElevatedButton.styleFrom(
                              backgroundColor:Color(0XFF048CFF),
                              shape:RoundedRectangleBorder(
                                borderRadius:BorderRadius.circular(10),
                              ),
                              minimumSize:Size(150, 50),
                            ),
                            onPressed:(){
                              // isChecked.clear();
                              // isChecked = [true, true,true,true,true,true,true,true];
                            },
                            child:Text('Apply',style:TextStyle(fontSize:16,fontWeight:FontWeight.w600,
                                color:Color(0XFFFFFFFF)),),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        },
    );
}



  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body:SingleChildScrollView(
       child: Column(
         children: [
           SizedBox(height:50),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Row(
               mainAxisAlignment:MainAxisAlignment.spaceBetween,
               children: [
                 Text('Fitness',style:TextStyle(fontSize:18,fontWeight:FontWeight.w600,color:Color(0XFF1E1E1E)),),
                 GestureDetector(
                   onTap:(){
                     Navigator.push(
                         context,
                       MaterialPageRoute(builder: (context)=>Searchpage()),
                         );
                   },
                     child: Image.asset('assets/search.png')
                 ),
               ],
             ),
           ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Text('Recommended For You',style:TextStyle
                   (fontSize:16,fontWeight:FontWeight.w400,color:Color(0XFF757575)),),
                 GestureDetector(
                   onTap:showfilterDialog,

                   child:Container(
                     alignment:Alignment.center,
                     decoration:BoxDecoration(
                       border:Border.all(color:Colors.white,width:2),
                       borderRadius:BorderRadius.circular(10),
                       color:Colors.white,
                     ),
                       child: Row(
                         children: [
                           Text('Filter Offers',style:TextStyle(fontSize:14,fontWeight:FontWeight.w600,
                           color:Color(0XFF757575)),),
                           Image.asset('assets/filtericon.png'),
                         ],
                       )
                   ),
                 ),
               ],
             ),
           ),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
              GestureDetector(
                onTap:(){
                  setState(() {
                    tabindex=0;
                  });
                },
                child:Container(
                  padding:EdgeInsets.symmetric(vertical:10,horizontal:10),
                  decoration:BoxDecoration(
                    // border:Border.all(color:tabindex==0?Colors.blue:Colors.white,width:2),
                      borderRadius:BorderRadius.circular(10),
                      color:tabindex==0?Color(0XFF048CFF):Color(0XFFD6D6D6),
                  ),
                    child: Text('All offers',style:TextStyle(color:tabindex==0?Color(0XFFFFFFFF):Color(0XFF757575),
                    fontSize:14,fontWeight:FontWeight.w600)),
                ),
              ),
               GestureDetector(
                 onTap:(){
                   setState(() {
                     tabindex=1;
                   });
                 },
                 child:Container(
                   padding:EdgeInsets.symmetric(vertical:10,horizontal:10),
                   decoration:BoxDecoration(
                     // border:Border.all(color:tabindex==1?Colors.blue:Colors.black,width:2),
                     borderRadius:BorderRadius.circular(10),
                     color:tabindex==1?Color(0XFF048CFF):Color(0XFFD6D6D6),
                   ),
                   child: Text('Fashion',style:TextStyle(color:tabindex==1?Color(0XFFFFFFFF):Color(0XFF757575),
                       fontSize:14,fontWeight:FontWeight.w600)),
                 ),
               ),
               GestureDetector(
                 onTap:(){
                   setState(() {
                     tabindex=2;
                   });
                 },
                 child:Container(
                   padding:EdgeInsets.symmetric(vertical:10,horizontal:10),
                   decoration:BoxDecoration(
                     borderRadius:BorderRadius.circular(10),
                     color:tabindex==2?Color(0XFF048CFF):Color(0XFFD6D6D6),
                   ),
                   child: Text('Footwear',style:TextStyle(color:tabindex==2?Color(0XFFFFFFFF):Color(0XFF757575),
                   fontSize:14,fontWeight:FontWeight.w600)),
                 ),
               ),
               GestureDetector(
                 onTap:(){
                   setState(() {
                     tabindex=3;
                   });
                 },
                 child:Container(
                   padding:EdgeInsets.symmetric(vertical:10,horizontal:10),
                   decoration:BoxDecoration(
                     borderRadius:BorderRadius.circular(10),
                     color:tabindex==3?Color(0XFF048CFF):Color(0XFFD6D6D6),
                   ),
                   child: Text('Beauty',style:TextStyle(color:tabindex==3?Color(0XFFFFFFFF):Color(0XFF757575),
                   fontSize:14,fontWeight:FontWeight.w600),),
                 ),
               ),

             ],
           ),
           ListView.builder(
             shrinkWrap:true,
             physics:ScrollPhysics(),
             itemCount:nameList.length,
             itemBuilder:(context,index){
               return Container(
                 child:Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Card(
                     shadowColor:Colors.black,
                     elevation:5,
                     child:Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset('${imageList[index]}'),
                              SizedBox(width:10),
                              Column(
                                children: [
                                  Text('Bambah Boutique',style:TextStyle(fontSize:14,fontWeight:FontWeight.w600),),
                                  Text("Women's Fashion",
                                    style:TextStyle(fontSize:12,fontWeight:FontWeight.w400,color:Color(0XFF1E1E1E)),),
                                ],
                              ),
                            ],
                          ),
                          Image.asset('assets/Light.png'),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('${nameList[index]}',style:TextStyle(fontSize:18,fontWeight:FontWeight.w600,color:Color(0XFF1E1E1E)),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom:20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text('T-Shirts',style:TextStyle(fontSize:12,fontWeight:FontWeight.w400,
                            color:Color(0XFF757575)),),
                            Container(
                              width:5,
                              height:5,
                              decoration:BoxDecoration(
                                shape:BoxShape.circle,
                                color:Color(0XFF757575),
                              ),
                            ),

                            Text('Top',style:TextStyle(fontSize:12,fontWeight:FontWeight.w400,
                                color:Color(0XFF757575)),),
                            // SizedBox(width:5),
                            Container(
                              width:5,
                              height:5,
                              decoration:BoxDecoration(
                                shape:BoxShape.circle,
                                color:Color(0XFF757575),
                              ),
                            ),

                            Text('More',style:TextStyle(fontSize:12,fontWeight:FontWeight.w400,
                                color:Color(0XFF757575)),),

                            Row(

                              children: [
                                Text('Use Code:',style:TextStyle(fontSize:12,fontWeight:FontWeight.w400,
                                    color:Color(0XFF757575)),),
                                SizedBox(width:5),
                                Text('DISOV12',style:TextStyle(fontSize:14,fontWeight:FontWeight.w600,
                                    color:Color(0XFF1E1E1E)),),
                              ],
                            ),
                          ],
                        ),
                      ),

                    ],
                     ),
                   ),
                 ),
               );
             },
           ),


         ],
       ),
     ),
    );
  }

}




