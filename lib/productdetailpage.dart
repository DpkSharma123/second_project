import 'package:flutter/material.dart';
import 'package:second_project/reedemnowpage.dart';
class Productdetailpage extends StatefulWidget {
  final String image;
  const Productdetailpage({super.key, required this.image});

  @override
  State<Productdetailpage> createState() => _Productdetailpage();
}

class _Productdetailpage extends State<Productdetailpage> {
  List<Map<String,dynamic>>nameList=[
    {
      'question' :'Terms and Conditions:',
      'status':false,
      'answer':'.The coupon code SUMMER20 is valid only for purchases made through the Store.'
          '\n.The discount is applicable only to items listed under the summer fashion collection.'
          '\n .This offer cannot be combined with any other promotions or discounts123.'
    }

  ];
  List<String>nameList1=['Modern photorealistic \n lamp design','Striped Sung Sliim fit \n Shirt',
    'Striped Sung Sliim fit\n Shirt','Modern blue high neck\n Shoes'];
  List<String>imageList1=['assets/lamp.png','assets/man.png','assets/man2.png','assets/shoes.png'];

  List<String>companyList=['Amazon','Flipkart','Myntra','Bombah Boutique.com'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text('Lamp',style:TextStyle(fontSize:18,fontWeight:FontWeight.w600),),
      ),
      body:SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset(widget.image,width:358,height:250),
                Positioned(
                  right:0,
                  child:Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      children: [
                        Image.asset('assets/Light.png'),
                        Image.asset('assets/Vector.png'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Modern photorealistic lamp design',
                style:TextStyle(color:Color(0XFF1E1E1E),fontSize:18,fontWeight:FontWeight.w600),),
            ),
            Padding(
              padding: const EdgeInsets.only(left:8),
              child: Row(
                children: [
                  Text('\$99',style:TextStyle(color:Color(0xFF757575),
                  decoration:TextDecoration.lineThrough),),
                  Text('\$69',style:TextStyle(color:Color(0XFF1E1E1E),fontSize:24,fontWeight:FontWeight.w600),),
                  SizedBox(width:5),
                  Image.asset('assets/off.png'),
                ],
              ),
            ),
           Padding(
             padding: const EdgeInsets.only(left:8,right:8),
             child: Card(
               color:Colors.white,
                child: Row(
                  children: [
                    Image.asset('assets/Bambah Boutique banner 2.png'),
                    SizedBox(width:5),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Website123-',style:TextStyle(color:Color(0XFF757575),fontSize:12,fontWeight:FontWeight.w400),),
                        Text('Glamouressentials.com',style:TextStyle(fontSize:14,fontWeight:FontWeight.w600),),
                      ],
                    ),
                  ],
                ),
              ),
           ),
            ListView.builder(
              shrinkWrap:true,
            physics:ScrollPhysics(),
            itemCount:nameList.length,
              itemBuilder:(context,index){
              return Container(
                child:Column(
                  children: [
                    ListTile(
                      title:Text(nameList[index]['question']
                        ,style:TextStyle(color:Color(0XFF1E1E1E),
                            fontSize:16,fontWeight:FontWeight.w600),),
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
                        child: Text(nameList[index]['answer'],
                          style:TextStyle(color:Color(0XFF757575),fontSize:14,fontWeight:FontWeight.w400),),
                      ),
                    GestureDetector(
                      onTap:(){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context)=>Reedemnowpage()),
                      );
                      },
                      child:Container(
                        padding:EdgeInsets.symmetric(vertical:15),
                        margin:EdgeInsets.only(left:10,right:10,top:10),
                        decoration:BoxDecoration(
                          color:Color(0XFF63A2FF),
                          borderRadius:BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment:MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/Vector 1.png'),
                            SizedBox(width:10),
                            Text('Redeem Now',style:TextStyle(color:Color(0XFFFFFFFF),
                            fontSize:18,fontWeight:FontWeight.w600),),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
              },
            ),
            SizedBox(height:30),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Similar Products',style:TextStyle(color:Color(0XFF1E1E1E),
                  fontSize:18,fontWeight:FontWeight.w600),),
            ),
            GridView.builder(
              shrinkWrap:true,
               physics:ScrollPhysics(),
               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                   crossAxisCount:2,
                 crossAxisSpacing:10,
                 mainAxisSpacing:10,
                 childAspectRatio:0.69,
               ),
              itemCount:nameList1.length,
              itemBuilder:(context,index){
                 return Container(
                   decoration:BoxDecoration(
                     // border:Border.all(color:Colors.red,width:2),
                   ),
                   child:Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Column(
                       crossAxisAlignment:CrossAxisAlignment.start,
                       children: [
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
          ],
        ),
      ),
    );
  }
}
