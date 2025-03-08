import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:second_project/account.dart';
import 'package:second_project/fitlifestorepage.dart';
import 'package:second_project/productdetailpage.dart';
class Homepage extends StatefulWidget {
  const Homepage ({super.key});

  @override
  State<Homepage> createState() => _Homepage();
}

class _Homepage extends State<Homepage> {
  List<String>nameList=['Modern photorealistic \n lamp design','Striped Sung Sliim fit \n Shirt',
    'Striped Sung Sliim fit\n Shirt','Modern blue high neck\n Shoes'];
  List<String>imageList=['assets/lamp.png','assets/man.png','assets/man2.png','assets/shoes.png'];
  List<String>imageList1=['assets/Light.png','assets/Light.png','assets/Light.png','assets/Light.png'];
  List<String> nameList1=['\$99 ','\$99 ','\$99 ','\$99 '];
  List<String> nameList2=[' \$699 ','\$699', '\$699','\$699'];
  List<String>companyList=['Amazon','Flipkart','Myntra','Bombah Boutique.com'];

  var arrImg = [
    {'img':'assets/flower.webp'},
    {'img':'assets/watch.jpg'},
    {'img':'assets/book.jpeg'},
    // {'img':'assets/Rectangle.png'},
    // {'img':'assets/grocery.png'},
    // {'img':'assets/footwear.png'},
  ];
  int _currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Image.asset('assets/Flimaxads.png'),
        centerTitle:true,
        actions: [
          Image.asset('assets/AR icon.png'),
          SizedBox(width:10),
          Image.asset('assets/bellicon.png'),
        ],
        leading:Padding(
          padding: const EdgeInsets.only(left:10),
          child: GestureDetector(
            onTap:(){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=>Account()),
              );

            },
              child: Image.asset('assets/capman.png'),
          ),
        ),
      ),
      body:SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width:280,
                      decoration:BoxDecoration(
                     borderRadius:BorderRadius.circular(10),
                      color:Colors.white,
                        ),
                  child: TextFormField(
                    decoration:InputDecoration(
                      hintText:'Search',
                      hintStyle:TextStyle(fontSize:14,fontWeight:FontWeight.w400,color:Color(0XFF757575)),
                      prefixIcon:Image.asset('assets/search.png'),
                    border:InputBorder.none,
                    ),
                  ),
                ),
                Container(
                  width:55,
                  height:55,
                  alignment:Alignment.center,
                  decoration: BoxDecoration(
                    // border:Border.all(color:Color(0XFF757575),width:2),
                    borderRadius:BorderRadius.circular(10),
                    color:Colors.white,
                  ),
                  child:Image.asset('assets/speaker3.png'),
                ),

              ],
            ),
            // Padding(
            //   padding: const EdgeInsets.all(12.0),
            //   child: Image.asset('assets/Rectangle.png'),
            // ),
            SizedBox(height:10),
              CarouselSlider(
                items:arrImg
                    .map((e)=>Container(
                    width:340,
                  child:ClipRRect(
                   borderRadius:BorderRadius.circular(20),
                   child: Image.asset(e['img'].toString()
                    ),
                 ),
                ))
                    .toList(),
                options:CarouselOptions(
                  // height:200,
                  initialPage:0,
                  autoPlay:true,
                  autoPlayInterval:Duration(seconds:3),
                  autoPlayAnimationDuration:Duration(microseconds:800),
                  enlargeCenterPage:true,
                  onPageChanged:(index,reason){
                    setState(() {
                      _currentIndex=index;
                    });
                  },
                ),
              ),
            SizedBox(
              height:40,
              child:ListView.builder(
                shrinkWrap:true,
                  scrollDirection:Axis.horizontal,
                  itemCount: arrImg.length,
                  itemBuilder: (context,index){
                    return Container(
                      margin:EdgeInsets.symmetric(horizontal:4),
                      width:8,
                      height:8,
                      decoration:BoxDecoration(
                        color:_currentIndex==index?Colors.blue:Colors.grey,
                        shape:BoxShape.circle,

                      ),
                    );
                  },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('assets/circle.png'),
            ),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.asset('assets/Video banner.png'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Deals For Today',style:TextStyle(fontSize:18,fontWeight:FontWeight.w600)),
                  Text('View All',style:TextStyle(fontSize:14,fontWeight:FontWeight.w400,color:Color(0XFF757575))
                 ),
                ],
              ),
            ),
            GestureDetector(
              onTap:(){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=>Fitlifestorepage()),
                );
              },
              child: Card(
                shadowColor:Colors.grey,
              elevation:5,
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
              
                          children: [
                            Image.asset('assets/banner 1.png'),
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
                        Row(
                          children: [
                            Image.asset('assets/Light.png'),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Enjoy \$ OFF on Orders Over \n  \$59!',
                      style:TextStyle(fontSize:18,fontWeight:FontWeight.w600,color:Color(0XFF1E1E1E)),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment:MainAxisAlignment.spaceBetween,
                        children: [
                          Text('T-Shirts .',style:TextStyle(fontSize:12,fontWeight:FontWeight.w400,
                          color:Color(0XFF757575)),),
              
                          Text('Tops.',style:TextStyle(fontSize:12,fontWeight:FontWeight.w400,
                              color:Color(0XFF757575)),),
              
                          Text('More .',style:TextStyle(fontSize:12,fontWeight:FontWeight.w400,
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
            SizedBox(height:20),
            Card(
              shadowColor:Colors.grey,
              elevation:5,
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset('assets/banner 2.png'),
                          SizedBox(width:10),
                          Column(
                           children: [
                             Text('Desert Oasis Decor',style:TextStyle(fontSize:14,fontWeight:FontWeight.w600),),
                             Text('Home Decor', style:TextStyle(fontSize:12,fontWeight:FontWeight.w400,color:Color(0XFF1E1E1E)),),
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
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Get 25% OFF on all items \n storewide!',
                      style:TextStyle(fontSize:18,fontWeight:FontWeight.w600,color:Color(0XFF1E1E1E)),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment:MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Lamps .',style:TextStyle(fontSize:12,fontWeight:FontWeight.w400,
                            color:Color(0XFF757575)),),

                        Text('Frames.',style:TextStyle(fontSize:12,fontWeight:FontWeight.w400,
                            color:Color(0XFF757575)),),

                        Text('More .',style:TextStyle(fontSize:12,fontWeight:FontWeight.w400,
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
            SizedBox(height:50),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Special Offfers',style:TextStyle(fontSize:18,fontWeight:FontWeight.w600)),
                  Text('View All',style:TextStyle(fontSize:14,fontWeight:FontWeight.w400,color:Color(0XFF757575))),
                ],
              ),
            ),

            GridView.builder(
              shrinkWrap:true,
              physics:ScrollPhysics(),
              gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                crossAxisSpacing:10,
                mainAxisSpacing:10,
                childAspectRatio:0.70,
              ),
              itemCount: nameList.length,
              itemBuilder:(context,index){
              return GestureDetector(
                onTap:(){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=>Productdetailpage(image: '${imageList[index]}')),
                  );
                },
                child: Container(
                  // decoration:BoxDecoration(
                  //   border:Border.all(color:Colors.red,width:2),
                  // ),
                  child:Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            Image.asset('${imageList[index]}'),
                            Positioned(
                              right:0,
                                top:0,
                              child:Image.asset('${imageList1[index]}'),
                            ),
                          ],
                        ),
                        Text('${nameList[index]}',style:TextStyle(fontSize:14,fontWeight:FontWeight.w400,
                    color:Color(0XFF1E1E1E)),),

                        Row(
                          children: [
                            Text('${nameList1[index]}',style:TextStyle( decoration: TextDecoration.lineThrough,
                                color:Color(0XFF1E1E1E)),),
                            Text('${nameList2[index]}',style:TextStyle(fontSize:16,fontWeight:FontWeight.w600,
                    color:Color(0XFF1E1E1E)),),
                          ],
                        ),
                    Text('${companyList[index]}',style:TextStyle(fontSize:12,fontWeight:FontWeight.w400,
                        color:Color(0XFF757575)),),
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
