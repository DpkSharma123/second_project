import 'package:flutter/material.dart';
import 'package:second_project/offdetailspage.dart';

class Reedemnowpage extends StatefulWidget {
  const Reedemnowpage({super.key});

  @override
  State<Reedemnowpage> createState() => _Reedemnowpage();
}

class _Reedemnowpage extends State<Reedemnowpage> {
  List<String>nameList1=['Modern photorealistic \n lamp design','Striped Sung Sliim fit \n Shirt',
    'Striped Sung Sliim fit\n Shirt','Modern blue high neck\n Shoes'];
  List<String>imageList1=['assets/lamp.png','assets/man.png','assets/man2.png','assets/shoes.png'];

  List<String>companyList=['Amazon','Flipkart','Myntra','Bombah Boutique.com'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text('Reedeem Offers',style:TextStyle(fontSize:18,fontWeight:FontWeight.w600),),
      ),
      body:Column(
        children: [
          Container(
            margin:EdgeInsets.all(10),
            decoration:BoxDecoration(
              // border:Border.all(color:Colors.red,width:2),

              borderRadius:BorderRadius.circular(10),
              color:Color(0xFFD4E3FF),
            ),
            child:Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/Bambah Boutique banner 2.png'),
                        SizedBox(width: 8),
                        Text('Glamour Essentials \n Store',style:TextStyle(color:Color(0xFF1E1E1E),fontSize:18,fontWeight:FontWeight.w600),),
                      ],
                    ),
                    Image.asset('assets/Light.png'),
                    Image.asset('assets/Vector.png'),
                  ],
                ),
                Text('Enjoy \$12 OFF on Orders \nOver \$59!',
                    style:TextStyle(fontSize:24,fontWeight:FontWeight.w600),),

                Container(
                  margin:EdgeInsets.only(top:10,left:10,right:10,bottom:10),
                  padding:EdgeInsets.symmetric(horizontal:10),
                  decoration:BoxDecoration(
                    color:Color(0XFFFFFFFF),
                    borderRadius:BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('DISOV12',style:TextStyle(fontSize:18,fontWeight:FontWeight.w400),),
                      ElevatedButton(
                       style:ElevatedButton.styleFrom(
                         backgroundColor:Color(0XFF63A2FF),
                         foregroundColor:Color(0xFFFFFFFF),
                       ),
                        onPressed:(){

                        },
                        child:Text('Copy',style:TextStyle(fontSize:16,fontWeight:FontWeight.w600),),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text('234 Products',
                            style:TextStyle(color:Color(0XFF757575),fontSize:14,fontWeight:FontWeight.w400),),
                        ],
                      ),
                      GestureDetector(
                        onTap:(){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context)=>Offdetailspage()),
                          );
                        },
                        child: Row(
                          children: [
                            Text('Offer Details',
                            style:TextStyle(color:Color(0XFF048CFF),fontSize:14,fontWeight:FontWeight.w600),),
                            SizedBox(width:2),
                            Image.asset('assets/arrowblue.png'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

          ),

          Expanded(
            child: GridView.builder(
              shrinkWrap:true,
              gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount:2,
                crossAxisSpacing:10,
                mainAxisSpacing:10,
                childAspectRatio:0.69
              ),
              itemCount:nameList1.length,
              itemBuilder:(context,index){
                return Container(
                  child:Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:[
                        Stack(
                          children: [
                            Image.asset('${imageList1[index]}'),
                            Positioned(
                              right:0,
                              child:Image.asset('assets/Light.png'),
                            ),
                          ],
                        ),
                        Text('${nameList1[index]}',style:TextStyle(fontSize:14,fontWeight:FontWeight.w400,
                            color:Color(0XFF1E1E1E)),),
                        Row(
                          children: [
                            Text('\$99',style:TextStyle(decoration:TextDecoration.lineThrough,color:Color(0XFF1E1E1E)),),
                            SizedBox(width:5),
                            Text('\$69',style:TextStyle(fontSize:16,fontWeight:FontWeight.w600,
                                color:Color(0XFF1E1E1E))),
                          ],
                        ),
                        Text('${companyList[index]}',style:TextStyle(fontSize:12,fontWeight:FontWeight.w400,
                            color:Color(0XFF757575)),),
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
