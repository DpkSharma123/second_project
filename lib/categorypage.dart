import 'package:flutter/material.dart';
class Categorypage extends StatefulWidget {
  const Categorypage({super.key});

  @override
  State<Categorypage> createState() => _Categorypage();
}

class _Categorypage extends State<Categorypage> {
  List<String>nameList=['Fashion','FootWear','Home & Kitchen','Beauty','Sports','Grocery'];
  List<String>imageList=['assets/fashion.png','assets/footwear.png','assets/kitchen.png','assets/beauty.png',
  'assets/sports.png','assets/grocery1.png'];
    @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height:50),
            Text('Category',style:TextStyle(fontSize:18,fontWeight:FontWeight.w600),),
            SizedBox(height:20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width:280,
                    child: TextFormField(
                      decoration:InputDecoration(
                        border:OutlineInputBorder(
                          borderRadius:BorderRadius.circular(15),
                        ),
        
                        // border:InputBorder.none,
                        hintText:'Search',
                        hintStyle:TextStyle(fontSize:16,fontWeight:FontWeight.w400,color:Color(0XFF757575)),
                        prefixIcon:Image.asset('assets/search.png'),
                        fillColor:Colors.white,
                        filled:true,
                      ),
                    ),
                ),
                Container(
                  width:55,
                  child:TextFormField(
                    decoration:InputDecoration(
                      border:OutlineInputBorder(
                        borderRadius:BorderRadius.circular(15),
        
                      ),
                      // border:InputBorder.none,
                      fillColor:Colors.white,
                      filled:true,
                      prefixIcon:Padding(
                        padding: const EdgeInsets.only(top:8.0,left:8),
                        child: Image.asset('assets/speaker2.png'),
                      ),
                    ),
        
                  ),
                ),
              ],
            ),
            SizedBox(height:20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text('12 Categories',style:TextStyle(fontSize:18,fontWeight:FontWeight.w600),),
                ],
              ),
            ),
            SizedBox(height:20),
            GridView.builder(
              shrinkWrap:true,
              physics: ScrollPhysics(),
              gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount:2,
                crossAxisSpacing:5,
                mainAxisSpacing:10,
              ),
              itemCount: nameList.length,
              itemBuilder:(context,index){
                return Container(
                  child:Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Image.asset('${imageList[index]}'),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('${nameList[index]}',style:TextStyle(fontSize:16,fontWeight:FontWeight.w600,
                            color:Color(0XFF1E1E1E)),),
                            Row(
                              mainAxisAlignment:MainAxisAlignment.spaceBetween,
                              children: [
                              Text('15 Offers Available',style:TextStyle(fontSize:12,fontWeight:FontWeight.w400,
                                color:Color(0XFF757575))),
                                Image.asset('assets/arrow.png'),
                              ],
                            ),
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
