// final List<Map<String,dynamic>> name=[
//   {
//     'name':'Raj',
//     'ischeked':false,
//   }
// ];
import 'package:flutter/material.dart';
class Searchpage extends StatefulWidget {
  const Searchpage({super.key});

  @override
  State<Searchpage> createState() => _Searchpage();
}

class _Searchpage extends State<Searchpage> {
  List<String>nameList=['Footwear','Kitchens','Beauty','Home Decor','Gym','Fashion'];
  List<String>imageList=['assets/Shoe.png','assets/Cutlery.png','assets/Makeup.png','assets/Plant.png',
  'assets/Dumbbell.png','assets/Fashion (1).png'];

  List<String>nameList1=['Modern photorealistic \n lamp design','Striped Sung Sliim fit \n Shirt',
    'Striped Sung Sliim fit\n Shirt','Modern blue high neck\n Shoes'];
  List<String>imageList1=['assets/lamp.png','assets/man.png','assets/man2.png','assets/shoes.png'];

  List<String>companyList=['Amazon','Flipkart','Myntra','Bombah Boutique.com'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text('Search',style:TextStyle(fontSize:18,fontWeight:FontWeight.w600),),
      ),
      body:SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width:280,
                  height:48,
                  child: TextFormField(
                    decoration:InputDecoration(
                      border:OutlineInputBorder(
                        borderRadius:BorderRadius.circular(10),
                      ),
                      // border:InputBorder.none,
                      hintText: 'Search',
                      hintStyle:TextStyle(fontSize:16,fontWeight:FontWeight.w400,color:Color(0XFF757575)),
                      prefixIcon:Image.asset('assets/search.png'),
                      fillColor:Colors.white,
                      filled:true,
                    ),
                  ),
                ),
               Container(
                 width:MediaQuery.of(context).size.width*0.1,
                 height:MediaQuery.of(context).size.height*0.06,

                 decoration:BoxDecoration(
                   border:Border.all(color:Colors.grey,width:2),
                   borderRadius:BorderRadius.circular(10),
                   color:Colors.white,
                 ),
                 child: Image.asset('assets/speaker3.png'),
               ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Recent Search',style:TextStyle(fontSize:16,fontWeight:FontWeight.w600,color:Color(0XFF141414)),),
                  GestureDetector(
                    onTap:(){
                      print('Hello');
                    },
                    child:Container(
                      padding:EdgeInsets.symmetric(horizontal:10),
                      decoration:BoxDecoration(
                        border:Border.all(color:Colors.white,width:2),
                        color:Colors.white,
                      ),
                        child: Text('Clear',style:TextStyle(fontSize:14,fontWeight:FontWeight.w400,color:Color(0XFF757575)),)
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
        
                  },
                    child: Container(
                      padding:EdgeInsets.symmetric(vertical:10,horizontal:10),
                      decoration:BoxDecoration(
                        border:Border.all(color:Color(0XFFD6D6D6),width:2),
                        borderRadius:BorderRadius.circular(10),
                      ),
                        child: Text('Kitchen appliances',style:TextStyle(fontSize:14,fontWeight:FontWeight.w400,color:Color(0XFF757575))
                        ),
                    ),
                ),
                GestureDetector(
                  onTap:(){
        
                  },
                  child: Container(
                    padding:EdgeInsets.symmetric(vertical:10,horizontal:10),
                    decoration:BoxDecoration(
                      border:Border.all(color:Color(0XFFD6D6D6),width:2),
                      borderRadius:BorderRadius.circular(10),
                    ),
                    child: Text('T-shirts',style:TextStyle(fontSize:14,fontWeight:FontWeight.w400,color:Color(0XFF757575))
                    ),
                  ),
                ),
                GestureDetector(
                  onTap:(){
        
                  },
                  child: Container(
                    padding:EdgeInsets.symmetric(vertical:10,horizontal:10),
                    decoration:BoxDecoration(
                      border:Border.all(color:Color(0XFFD6D6D6),width:2),
                      borderRadius:BorderRadius.circular(10),
                    ),
                    child: Text('Shirts',style:TextStyle(fontSize:14,fontWeight:FontWeight.w400,color:Color(0XFF757575))
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height:10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap:(){
        
                  },
                  child: Container(
                    padding:EdgeInsets.symmetric(vertical:10,horizontal:10),
                    decoration:BoxDecoration(
                      border:Border.all(color:Color(0XFFD6D6D6),width:2),
                      borderRadius:BorderRadius.circular(10),
                    ),
                    child: Text('Gym dresses',style:TextStyle(fontSize:14,fontWeight:FontWeight.w400,color:Color(0XFF757575))
                    ),
                  ),
                ),
                GestureDetector(
                  onTap:(){
        
                  },
                  child: Container(
                    padding:EdgeInsets.symmetric(vertical:10,horizontal:10),
                    decoration:BoxDecoration(
                      border:Border.all(color:Color(0XFFD6D6D6),width:2),
                      borderRadius:BorderRadius.circular(10),
                    ),
                    child: Text('Home decor',style:TextStyle(fontSize:14,fontWeight:FontWeight.w400,color:Color(0XFF757575))
                    ),
                  ),
                ),
                GestureDetector(
                  onTap:(){
        
                  },
                  child: Container(
                    padding:EdgeInsets.symmetric(vertical:10,horizontal:10),
                    decoration:BoxDecoration(
                      border:Border.all(color:Color(0XFFD6D6D6),width:2),
                      borderRadius:BorderRadius.circular(10),
                    ),
                    child: Text('Groceries',style:TextStyle(fontSize:14,fontWeight:FontWeight.w400,color:Color(0XFF757575))
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment:MainAxisAlignment.spaceBetween,
                children: [
                  Text('Search by Category',style:TextStyle(fontSize:16,fontWeight:FontWeight.w600,color:Color(0XFF141414)),),
                  GestureDetector(
                    onTap:(){
        
                    },
                    child:Container(
                      padding:EdgeInsets.symmetric(horizontal:10),
                      decoration:BoxDecoration(
                        // border:Border.all(color:Colors.white,width:2),
                        borderRadius:BorderRadius.circular(10),
                        color:Colors.white,
                      ),
                        child: Text('View All',style:TextStyle(fontSize:14,fontWeight:FontWeight.w400,color:Color(0XFF757575)),
                        ),
                    ),
                  ),
                ],
              ),
            ),

            GridView.builder(
              shrinkWrap:true,
              physics:ScrollPhysics(),
              gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount:3,
                crossAxisSpacing:3,
                mainAxisSpacing:10,
                childAspectRatio:2.5,
              ),
              itemCount:nameList.length,
              itemBuilder:(context,index){
                return GestureDetector(
                  child: Container(
                    margin:EdgeInsets.symmetric(horizontal:5),
                    decoration:BoxDecoration(
                        // border:Border.all(color:Colors.red,width:2),
                      borderRadius:BorderRadius.circular(10),
                      color:Colors.white,
                      ),
                  child:Row(
                    mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset('${imageList[index]}'),
                      // SizedBox(width:5),
                      Text('${nameList[index]}',style:TextStyle(fontSize: 12,fontWeight:FontWeight.w400,
                      color:Color(0XFF1E1E1E)),),
                    ],
                  ),
                  ),
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10,right:10,top:20),
              child: Row(
                mainAxisAlignment:MainAxisAlignment.spaceBetween,
                children: [
                  Text('Recommended Products',style:TextStyle(fontSize:16,fontWeight:FontWeight.w600,color:Color(0XFF141414)),),
                  GestureDetector(
                    onTap:(){

                    },
                    child:Container(
                      padding:EdgeInsets.symmetric(horizontal:10),
                      decoration:BoxDecoration(
                        // border:Border.all(color:Colors.white,width:2),
                        borderRadius:BorderRadius.circular(10),
                        color:Colors.white,
                      ),
                      child: Text('View All',style:TextStyle(fontSize:14,fontWeight:FontWeight.w400,color:Color(0XFF757575)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            GridView.builder(
              shrinkWrap:true,
              physics:ScrollPhysics(),
              gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount:2,
                  crossAxisSpacing:10,
                mainAxisSpacing:10,
                childAspectRatio:0.70,

              ),
              itemCount:nameList1.length,
              itemBuilder:(context,index){
                return Container(
                  // decoration:BoxDecoration(
                  //   border: Border.all(color:Colors.red),
                  // ),
                  child:Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                             Image.asset('${imageList1[index]}'),
                           Positioned(
                             top:0,
                             right:0,
                             child:Image.asset('assets/Light.png'),
                           ),
                          ],
                        ),
                                Text('${nameList1[index]}',style:TextStyle(fontSize:14,fontWeight:FontWeight.w400,
                                    color:Color(0XFF1E1E1E)),),
                        Row(
                          children: [
                            Text('99',style:TextStyle(decoration:TextDecoration.lineThrough,color:Color(0XFF1E1E1E))),
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
          ],
        ),
      ),
    );
  }
}

