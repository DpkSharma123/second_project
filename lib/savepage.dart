import 'package:flutter/material.dart';

class Savepage extends StatefulWidget {
  const Savepage({super.key});

  @override
  State<Savepage> createState() => _Savepage();
}

class _Savepage extends State<Savepage> {
  int tabIndex=0;
  List<String>nameList=['Enjoy \$12 OFF on  orders Over \n \$59!','Get 25% OFF on all items \n storewide!','Enjoy \$12 OFF on  orders Over \n \$59!','Get 25% OFF on all items \n storewide!'];
  List<String>imageList=['assets/banner 1.png','assets/banner 2.png','assets/banner 1.png','assets/banner 1.png','assets/banner 2.png','assets/banner 1.png'];

  List<String>nameList1=['Modern photorealistic \n lamp design','Striped Sung Sliim fit \n Shirt',
    'Striped Sung Sliim fit\n Shirt','Modern blue high neck\n Shoes'];
  List<String>imageList1=['assets/lamp.png','assets/man.png','assets/man2.png','assets/shoes.png'];

  List<String>companyList=['Amazon','Flipkart','Myntra','Bombah Boutique.com'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Save',
          style: TextStyle(
              color: Color(0XFF1E1E1E),
              fontSize: 18,
              fontWeight: FontWeight.w600),
        ),
      ),
            body:Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap:(){
                        setState(() {
                          tabIndex=0;
                        });
                      },
                      child: Container(
                        padding:EdgeInsets.symmetric(vertical:10,horizontal:30),
                        decoration:BoxDecoration(
                          borderRadius:BorderRadius.circular(10),
                          color:tabIndex==0?Color(0XFF048CFF):Color(0XFFD6D6D6),
                        ),
                        child: Text('Saved Offers',
                        style:TextStyle(color:tabIndex==0?Color(0XFFFFFFFF):Color(0XFF1E1E1E),
                        fontSize:14,fontWeight:FontWeight.w600),),
                      ),
                    ),
                    GestureDetector(
                      onTap:(){
                        setState(() {
                          tabIndex=1;
                        });
                      },
                      child:Container(
                        padding:EdgeInsets.symmetric(vertical:10,horizontal:30),
                        decoration:BoxDecoration(
                          borderRadius:BorderRadius.circular(10),
                          color:tabIndex==1?Color(0XFF048CFF):Color(0XFFD6D6D6),

                        ),
                        child: Text('Saved Products',
                        style:TextStyle(color:tabIndex==1?Color(0XFFFFFFFF):Color(0XFF1E1E1E),
                        fontSize:14,fontWeight:FontWeight.w600),
                        ),
                      ),
                    ),

                  ],
                ),
                Expanded(child: tabScreen()),
              ],
            ),
    );
  }
  tabScreen(){
    switch(tabIndex){
      case 0:
        return Savedofferspage();
      case 1:
        return Savedproducts();
      default:
        return Text('unknown tab');
    }
  }

  Widget Savedofferspage(){
      return ListView.builder(
        shrinkWrap:true,
        itemCount:nameList.length,
        itemBuilder:(context,index){
        return Container(
        child:Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            shadowColor:Colors.black,
            elevation:5,
            child: Column(
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
                          crossAxisAlignment: CrossAxisAlignment.start,
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      Text('Tops',style:TextStyle(fontSize:12,fontWeight:FontWeight.w400,
                          color:Color(0XFF757575)),),
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
        }
      );
  }

  Widget Savedproducts(){
    return GridView.builder(
      shrinkWrap:true,
      physics:ScrollPhysics(),
      gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount:2,
          crossAxisSpacing:10,
        mainAxisSpacing:10,
        childAspectRatio:0.67
      ),
      itemCount:nameList1.length,
      itemBuilder:(context,index){
      return Container(
        margin:EdgeInsets.only(top:20),
        padding:EdgeInsets.all(10),
        // decoration:BoxDecoration(
        //   border:Border.all(color:Colors.red,width:2),
        // ),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset('${imageList1[index]}'),
                Positioned(
                  right:0,
                  top:0,
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
      );
      },
    );
  }
}