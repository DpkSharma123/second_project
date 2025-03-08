import 'package:flutter/material.dart';
import 'package:second_project/shopdetailspage.dart';
class Fitlifestorepage extends StatefulWidget {
  const Fitlifestorepage({super.key});

  @override
  State<Fitlifestorepage> createState() => _Fitlifestorepage();
}

class _Fitlifestorepage extends State<Fitlifestorepage> {
  List<Map<String,dynamic>>nameList=[
    {
      'value' : 'assets/Bambah Boutique banner 2.png',
    },
    {
      'value' : 'assets/Bambah Boutique banner 2.png',
    },
    {
      'value' : 'assets/Bambah Boutique banner 2.png',
    },
    {
      'value' : 'assets/Bambah Boutique banner 2.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text('FitLife Store',
        style:TextStyle(fontSize: 18,fontWeight:FontWeight.w600)),
        actions: [
          IconButton(
              onPressed:(){},
              icon: Icon(Icons.search),
          ),
        ],
      ),
      body:Column(

        children: [
          Container(
            padding:EdgeInsets.all(8),
            margin:EdgeInsets.all(8),
            decoration:BoxDecoration(
              color:Color(0XFFD4E3FF),
              borderRadius:BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset('assets/Bambah Boutique banner 2.png'),
                    SizedBox(width:5),
                    Column(
                      crossAxisAlignment:CrossAxisAlignment.start,
                      children: [
                        Text('Glamour Essentials \nStore',
                            style:TextStyle(fontSize: 18,fontWeight:FontWeight.w600)),
                        Text('Beauty & Health',
                            style:TextStyle(fontSize: 14,fontWeight:FontWeight.w400)),
                      ],
                    ),

                  ],
                ),
                SizedBox(height:15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/stars.png'),
                        Text('1.2k Ratings'),
                      ],
                    ),

                    GestureDetector(
                      onTap:(){
                        Navigator.push(
                        context,
                          MaterialPageRoute(builder:(context)=>Shopdetailspage()),
                        );
                      },
                      child: Row(
                        children: [
                          Text('Shop Details',
                          style:TextStyle(color:Color(0XFF048CFF),fontSize:14,fontWeight:FontWeight.w600),),
                          SizedBox(width:5),
                          Image.asset('assets/arrowblue.png'),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount:nameList.length,
              itemBuilder:(context,index){
                return Container(
                  margin:EdgeInsets.all(8),
                  child:Card(
                    color:Color(0XFFFFFFFF),
                    elevation:5,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image.asset(nameList[index]['value']),
                                  SizedBox(width:10),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Bambah Boutique',style:TextStyle(fontSize:14,fontWeight:FontWeight.w600),),
                                      Text("Women's Fashion",
                                        style:TextStyle(fontSize:12,fontWeight:FontWeight.w400,color:Color(0XFF1E1E1E)),),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Image.asset('assets/Light.png'),
                                ],
                              ),
                            ],
                          ),
                          Text('Enjoy \$12 OFF on Orders Over\n \$59!',
                              style:TextStyle(fontSize: 18,fontWeight:FontWeight.w600)),
            
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('T-shirts .Tops .More',
                                  style:TextStyle(color:Color(0XFF757575), fontSize:12,fontWeight:FontWeight.w400)),
                              RichText(
                                text:TextSpan(
                                  children: [
                                    TextSpan(
                                      text:'Use Code:',
                                        style:TextStyle(color:Color(0XFF757575), fontSize:12,fontWeight:FontWeight.w400),
                                    ),
                                    TextSpan(
                                      text:'DISOV12',
                                      style:TextStyle(color:Color(0XFF757575), fontSize:18,fontWeight:FontWeight.w600),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
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
