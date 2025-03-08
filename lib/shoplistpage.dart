import 'package:flutter/material.dart';
class Shoplistpage extends StatefulWidget {
  const Shoplistpage ({super.key});

  @override
  State<Shoplistpage > createState() => _Shoplistpage ();
}

class _Shoplistpage  extends State<Shoplistpage > {
  List<String>nameList=['Glambour Essentials \n Store','Bambah Boutique','Desert Oasis Decor','Desert Oasis Decor'];
  List<String>imageList=['assets/beauty &health.png','assets/women.png','assets/homedecore.png',
  'assets/homedecore.png'];
  List<String>imageList2=['assets/Bambah Boutique  banner 1.png','assets/Bambah Boutique banner 2.png','assets/Logo.png','assets/Logo.png'];
  List<String>nameList2=['Beauty & Health',"Womens's Fashion",'Home Decor','Home Decor'];



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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Shoplist',style:TextStyle(fontSize:18,fontWeight:FontWeight.w600,color:Color(0XFF1E1E1E)),),
                  Image.asset('assets/search.png'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Recommended For You',style:TextStyle(fontSize:14,fontWeight:FontWeight.w400,
                      color:Color(0XFF757575)),),
                    GestureDetector(
                      onTap:(){

                      },
                      child:Container(
                        alignment:Alignment.center,
                        // width:100,
                          decoration:BoxDecoration(
                            border:Border.all(color:Colors.white,width:2),
                            borderRadius:BorderRadius.circular(10),
                            color:Colors.white,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Filter by Categories',style:TextStyle(fontSize:14,fontWeight:FontWeight.w400,
                                  color:Color(0XFF757575)),),
                             Image.asset('assets/filtericon.png'),
                            ],
                          ),

                      ),

                    ),

                ],
              ),
            ),
           ListView.builder(
             shrinkWrap:true,
             physics:ScrollPhysics(),
             itemCount: nameList.length,
             itemBuilder:(context,index){
               return Container(
                 margin:EdgeInsets.all(20),
                 child:Card(
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Stack(
                         children: [
                           Image.asset('${imageList[index]}'),
                           Positioned(
                             bottom:0,
                             child:Image.asset('${imageList2[index]}'),
                           ),
                           Positioned(
                            right:0,
                             bottom:8,
                             child:Image.asset('assets/stars.png'),
                           )
                         ],
                       ),
                       SizedBox(height:20),
                       Text('${nameList[index]}',style:TextStyle(fontSize:18,fontWeight:FontWeight.w600,color:Color(0XFF1E1E1E)),),
                       Text('${nameList2[index]}',style:TextStyle(fontSize:14,fontWeight:FontWeight.w400,color:Color(0XFF757575)),),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.end,
                         children: [
                           Text('View Offers',style:TextStyle(fontSize:14,fontWeight:FontWeight.w400,color:Color(0XFF1E1E1E)),),
                           SizedBox(width:2),
                           Image.asset('assets/rightarrow.png'),
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
      ),
    );
  }
}
