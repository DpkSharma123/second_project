import 'package:flutter/material.dart';
class Offdetailspage extends StatefulWidget {
  const Offdetailspage({super.key});

  @override
  State<Offdetailspage> createState() => _Offdetailspage();
}

class _Offdetailspage extends State<Offdetailspage> {
  List<Map<String,dynamic>>nameList=[
    {
      'question' : 'Coupon Detail',
      'status' :false,
      'answer' :' .Valid from July 25th to August 10th \n 20% off on all summer fashion items\n '
          ' All blouses, dresses, pants, and tops listed under the summer collection'
    },

  ];
  List<Map<String,dynamic>>nameList1=[
    {
      'question':'Terms and Conditions:',
      'status':false,
      'answer':'.The coupon code SUMMER20 is valid only for purchases made through the Store.\n'
          '.The discount is applicable only to items listed under the summer fashion collection.\n'
      '.This offer cannot be combined with any other promotions or discounts'
      '.Only one coupon can be used per transaction.\n'
      '.The coupon is not redeemable for cash or credit.\n'
      '.The offer is subject to stock availability.'

    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text('Reedeem Offers',style:TextStyle(fontSize:18,fontWeight:FontWeight.w600),),
      ),
      body:SingleChildScrollView(
        child: Column(
        
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
                ],
              ),
        
            ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  color:Color(0XFFFFFFFF),
                  elevation:5,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset('assets/Online Store.png'),
                        SizedBox(width:15),
                        Column(
                          crossAxisAlignment:CrossAxisAlignment.start,
                          children: [
                            Text('No Online Store',
                              style:TextStyle(color:Color(0XFF048CFF),fontSize:18,fontWeight:FontWeight.w600),),
                            Text('This Brand do not have online \nstore, Please download the \ncoupon and Redeem from Store.',
                            style:TextStyle(color:Color(0XFF757575),fontSize:14,fontWeight:FontWeight.w400),),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
        
             Padding(
               padding: const EdgeInsets.only(left:8,right:8),
               child: Card(
                 color:Color(0XFFFFFFFF),
                 elevation:5,
                 child: Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Store Address ',
                            style:TextStyle(fontSize:16,fontWeight:FontWeight.w600)),
                        Row(
                          children: [
                            Image.asset('assets/location.png'),
                            SizedBox(width:10),
                            Text('Villa No. 964, Al Wasl Road, \n Jumeirah 3, Dubai, UAE ',
                          style:TextStyle(color:Color(0XFF757575),fontSize:16,fontWeight:FontWeight.w400),),
                          ],
                        ),
                      ],
                    ),
                 ),
               ),
             ),
                  ListView.builder(
                    shrinkWrap:true,
                    physics: ScrollPhysics(),
                    itemCount: nameList.length,
                    itemBuilder:(context,index){
                      return Container(
                        child:Padding(
                          padding: const EdgeInsets.only(left:8,right:8),
                          child: Card(
                            color:Color(0XFFFFFFFF),
                            elevation:5,
                            child: Column(
                              children: [
                                ListTile(
                                  title:Text(nameList[index]['question']
                              ,style:TextStyle(color:Color(0XFF1E1E1E),
                                fontSize:16,fontWeight:FontWeight.w600),
                                  ),
                                  trailing:Icon(nameList[index]['status']?Icons.keyboard_arrow_up:Icons.keyboard_arrow_down),
                                  onTap:(){
                                    setState(() {
                                      nameList[index]['status']=!nameList[index]['status'];
                                    });
                                  },
                                ),
                                if(nameList[index]['status'])
                                  Padding(
                                    padding: const EdgeInsets.only(left:16,right:16,bottom:16),
                                    child: Text(nameList[index]['answer']),
                                  ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                  GestureDetector(
                    onTap:(){
        
                    },
                    child:Container(
                      alignment:Alignment.center,
                      padding:EdgeInsets.symmetric(vertical:10),
                      margin:EdgeInsets.all(10),
                      width:double.infinity,
                      decoration:BoxDecoration(
                        borderRadius:BorderRadius.circular(10),
                        color:Color(0XFF63A2FF),
                      ),
                        child: Text('Download Coupon',style:TextStyle(color:Color(0XFFFFFFFF),
                        fontSize:18,fontWeight:FontWeight.w600),)
                    ),
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            width:30,
                            height:30,
                            alignment:Alignment.center,
                            decoration:BoxDecoration(
                              color:Color(0XFFFFFFFFF),
                              // color:Colors.red,
                              shape:BoxShape.circle,
                            ),
                              child: Text('1',style:TextStyle(color:Color(0xFF048CFF),
                              fontSize:18,fontWeight:FontWeight.w600),)
                          ),
                          SizedBox(width:5),
                          Text('Purchase from Products from store',
                          style:TextStyle(color:Color(0XFF757575),fontSize:14,fontWeight:FontWeight.w600),),

                        ],
                      ),
                      Row(
                        children: [
                          Container(
                              width:30,
                              height:30,
                              alignment:Alignment.center,
                              decoration:BoxDecoration(
                                color:Color(0XFFFFFFFFF),
                                // color:Colors.red,
                                shape:BoxShape.circle,
                              ),
                              child: Text('2',style:TextStyle(color:Color(0xFF048CFF),
                                  fontSize:18,fontWeight:FontWeight.w600),)
                          ),
                          SizedBox(width:5),
                          Text('Purchase from Products from store',
                            style:TextStyle(color:Color(0XFF757575),fontSize:14,fontWeight:FontWeight.w600),),

                        ],
                      ),
                      Row(
                        children: [
                          Container(
                              width:30,
                              height:30,
                              alignment:Alignment.center,
                              decoration:BoxDecoration(
                                color:Color(0XFFFFFFFFF),
                                // color:Colors.red,
                                shape:BoxShape.circle,
                              ),
                              child: Text('3',style:TextStyle(color:Color(0xFF048CFF),
                                  fontSize:18,fontWeight:FontWeight.w600),)
                          ),
                          SizedBox(width:5),
                          Text('Redeem at the counter',
                            style:TextStyle(color:Color(0XFF757575),fontSize:14,fontWeight:FontWeight.w600),),

                        ],
                      ),
                    ],
                  ),
            ListView.builder(
              shrinkWrap:true,
              itemCount:nameList1.length,
              itemBuilder:(context,index){
                return Container(
                  margin:EdgeInsets.all(8),
                  child:Card(
                    color:Color(0XFFFFFFFF),
                    elevation:5,
                    child: Column(
                      children: [
                        ListTile(
                          title:Text(nameList1[index]['question']
                            ,style:TextStyle(color:Color(0XFF1E1E1E),
                                fontSize:16,fontWeight:FontWeight.w600),),
                          trailing:Icon(nameList1[index]['status']?Icons.keyboard_arrow_up:Icons.keyboard_arrow_down),
                          onTap:(){
                            setState(() {
                              nameList1[index]['status']=!nameList1[index]['status'];
                            });
                          },
                        ),
                        if(nameList1[index]['status'])
                          Padding(
                            padding: const EdgeInsets.only(left:16,right:16,bottom:16),
                            child: Text(nameList1[index]['answer'],
                              textAlign:TextAlign.justify),
                          ),
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
