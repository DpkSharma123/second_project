import 'package:custom_rating_bar/custom_rating_bar.dart';
import 'package:flutter/material.dart';

class Shopdetailspage extends StatefulWidget {
  const Shopdetailspage({super.key});

  @override
  State<Shopdetailspage> createState() => _Shopdetailspage();
}

class _Shopdetailspage extends State<Shopdetailspage> {
  double rating=0;


  void _navigateToPage(){
    _showalertbox();
  }
  void _showalertbox(){
    showDialog(
      context: context,
      builder:(BuildContext context)=>AlertDialog(
        title:Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            IconButton(onPressed:(){
              Navigator.pop(context);
            },
          icon:Icon(Icons.close),
            ),
            Center(child: Image.asset('assets/star2.png')),
            Text('How would you rate this brand?',
            style:TextStyle(fontSize:16,fontWeight:FontWeight.w600),),
            SizedBox(height:20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                RatingBar(
                  filledIcon:Icons.star,
                  emptyIcon:Icons.star_border,

                  // emptyColor:Color(0XFFEAEAEA),
                  filledColor:Color(0XFFEAEAEA),
                  onRatingChanged:(value){
                    setState(() {
                      rating=value;

                    });
                  },
                  initialRating:rating,
                  maxRating:5,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Good',style:TextStyle(color:Color(0XFF757575),fontSize:14,fontWeight:FontWeight.w400),),
                Text('Dad',style:TextStyle(color:Color(0XFF757575),fontSize:14,fontWeight:FontWeight.w400),),
              ],
            ),
            SizedBox(height:20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap:(){
                    Navigator.pop(context);
                  },
                  child: Container(
                    width:100,
                    height:40,
                    alignment:Alignment.center,
                    decoration:BoxDecoration(
                      color:Color(0XFFF5F5F5),
                      // color:Colors.red,
                      borderRadius:BorderRadius.circular(10),
                    ),
                      child: Text('Cancel',style:TextStyle(color:Color(0XFF048CFF),fontSize:16,fontWeight:FontWeight.w600),)
                  ),
                ),
                GestureDetector(
                  onTap:(){
                    Navigator.pop(context);
                   _navigateToPage2();
                  },
                  child: Container(
                      width:100,
                      height:40,
                      alignment:Alignment.center,
                      decoration:BoxDecoration(
                        color:Color(0XFF63A2FF),
                        // color:Colors.red,
                        borderRadius:BorderRadius.circular(10),
                      ),
                      child: Text('Submit',style:TextStyle(color:Color(0XFFFFFFFF),fontSize:16,fontWeight:FontWeight.w600),),

                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
  void _navigateToPage2(){
    _showsubmit();
  }
      void _showsubmit(){
      showDialog(
        context:context,
        builder:(BuildContext context) =>AlertDialog(
          title:Column(
            crossAxisAlignment:CrossAxisAlignment.end,
            children: [
              IconButton(
                  onPressed:(){
                    Navigator.pop(context);
                  },
                  icon:Icon(Icons.close),
              ),
              Center(child: Image.asset('assets/hand1.png')),
              Center(
                child: Text('Thanks for Your Rating'
                    ,style:TextStyle(color:Color(0XFF000000),fontSize:16,fontWeight:FontWeight.w600),),
              ),
              SizedBox(height:10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  RatingBar(
                    filledIcon:Icons.star,
                    emptyIcon:Icons.star_border,
                    // emptyColor:Color(0xFF009C19),
                  // filledColor: Color(0xFF009C19),
                    onRatingChanged:(value){
                      setState(() {
                        rating=value;
                      });
                    },
                    initialRating:rating,
                    maxRating:5,
                  ),
                ],
              ),
            ],
          ),
        ),
      );
      }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text('FitLife Store',
            style:TextStyle(fontSize: 18,fontWeight:FontWeight.w600)),
        actions: [
          IconButton(
            onPressed:(){},
            icon:Icon(Icons.search),
          ),
        ],
      ),
        body:SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Image.asset('assets/map.png'),
              Row(
                children: [
                  Image.asset('assets/Bambah Boutique banner 2.png') ,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Bambah Boutique'
                      ,style:TextStyle(fontSize:14,fontWeight:FontWeight.w600 )),
                      Text("Women's Fashion"
                          ,style:TextStyle(fontSize:12,fontWeight:FontWeight.w400 )),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/stars.png'),
                        SizedBox(width:5),
                        Text('1.2K Ratings'),
                      ],
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap:(){
                            _navigateToPage();
                          },
                          child: Container(
                            padding:EdgeInsets.symmetric(vertical:10,horizontal:10),
                            decoration:BoxDecoration(
                              border:Border.all(color:Color(0XFF048CFF)),
                              borderRadius:BorderRadius.circular(10),
                            ),
                              child: Text('Rate Now',
                              style:TextStyle(color:Color(0XFF048CFF),
                              fontSize:14,fontWeight:FontWeight.w600),),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Location'
                    ,style:TextStyle(color:Color(0XFF1E1E1E),fontSize:16,fontWeight:FontWeight.w600 )),
              ),
              Padding(
                padding: const EdgeInsets.only(left:8),
                child: Text('Villa No. 964, Al Wasl Road, \nJumeirah 3, Dubai, UAE'
                    ,style:TextStyle(color:Color(0XFF757575),fontSize:14,fontWeight:FontWeight.w400 )),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text('Online Store :'
                    ,style:TextStyle(color:Color(0XFF1E1E1E),fontSize:16,fontWeight:FontWeight.w600 )),
                    RichText(
                      text:TextSpan(
                        children:[
                          TextSpan(
                            text:'www.onlinestore.com',
                              style:TextStyle(color:Color(0XFF63A2FF),fontSize:16,fontWeight:FontWeight.w400 )
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Contact Information'
                    ,style:TextStyle(color:Color(0XFF1E1E1E),fontSize:16,fontWeight:FontWeight.w600 )),
              ),

                GestureDetector(
                  onTap:(){

                  },
                  child: Container(
                    width:203,
                    height:42,
                    // padding:EdgeInsets.symmetric(vertical:15),
                    margin:EdgeInsets.only(left:8),
                  decoration:BoxDecoration(
                    borderRadius:BorderRadius.circular(8),
                    color:Color(0XFFFFFFFF)
                  ),
                    child:Row(
                      children: [
                        Image.asset('assets/Gmail.png'),
                        SizedBox(width:5),
                        Text('support123@gmail.com'
                            ,style:TextStyle(color:Color(0XFF757575),fontSize:14,fontWeight:FontWeight.w400 )),
                      ],
                    ),
                  ),
                ),
              GestureDetector(
                onTap:(){

                },
                child:Container(
                  width:173,
                  height:38,
                  margin:EdgeInsets.only(left:8,top:8),
                  decoration:BoxDecoration(
                      borderRadius:BorderRadius.circular(8),
                      color:Color(0XFFFFFFFF)
                  ),
                  child:Row(
                    children: [
                      Image.asset('assets/phonegreen.png'),
                      SizedBox(width:5),
                      Text('+966   8898764753'
                          ,style:TextStyle(color:Color(0XFF757575),fontSize:14,fontWeight:FontWeight.w400 )),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:8),
                child: Text('About Bambah Boutique '
                    ,style:TextStyle(color:Color(0XFF1E1E1E),fontSize:16,fontWeight:FontWeight.w600 )),
              ),
              Padding(
                padding: const EdgeInsets.only(left:8,right:8),
                child: Text('Bambah Boutique is a luxurious and eco-conscious fashion store located in the heart of Dubai. Renowned for its unique blend of vintage-inspired designs and contemporary styles, Bambah offers a wide range of clothing, accessories, and home decor items. Each piece is meticulously crafted with sustainability in '
                    '\nmind, ensuring that fashion-forward individuals can express their style while contributing to a greener planet.'
                  ,style:TextStyle(color:Color(0XFF757575),fontSize:14,fontWeight:FontWeight.w400),
                  textAlign:TextAlign.justify,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:8,top:8),
                child: Text('Store Timings '
                    ,style:TextStyle(color:Color(0XFF1E1E1E),fontSize:16,fontWeight:FontWeight.w600 )),
              ),

              Padding(
                padding: const EdgeInsets.only(left:8),
                child: Row(
                  children: [
                    Text('Monday to Thursday :'
                    ,style:TextStyle(color:Color(0XFF757575),fontSize:14,fontWeight:FontWeight.w400)),
                    Text('10:00 AM - 8:00 PM'),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:8),
                child: Row(
                  children: [
                    Text('Sunday :'
                        ,style:TextStyle(color:Color(0XFF757575),fontSize:14,fontWeight:FontWeight.w400)),
                    Text('Closed'),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:8,top:8),
                child: Text('Current Offers at Bambah Boutique '
                    ,style:TextStyle(color:Color(0XFF1E1E1E),fontSize:16,fontWeight:FontWeight.w600 )),
              ),
              Padding(
                padding: const EdgeInsets.only(left:8,top:8),
                child: Text('.Summer Sale '
                    ,style:TextStyle(color:Color(0XFF1E1E1E),fontSize:16,fontWeight:FontWeight.w600 )),
              ),

              Padding(
                padding: const EdgeInsets.only(left:8),
                child: Text('Up to 50% Off'
                    ,style:TextStyle(color:Color(0XFF1E1E1E),fontSize:14,fontWeight:FontWeight.w600),),
              ),
              Padding(
                padding: const EdgeInsets.only(left:8),
                child: Text('Refresh your wardrobe with Bambah’s exquisite summer collection. Enjoy up to 50% off on selected items, including dresses, tops, and accessories.'
                    ,style:TextStyle(color:Color(0XFF757575),fontSize:14,fontWeight:FontWeight.w400),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:8,top:8),
                child: Text('.Buy One, Get One Free on Accessories'
                  ,style:TextStyle(color:Color(0XFF1E1E1E),fontSize:14,fontWeight:FontWeight.w600),),
              ),
              Padding(
                padding: const EdgeInsets.only(left:8),
                child: Text('Add the perfect finishing touch to your outfit with our stunning range of accessories. For a limited time, buy one accessory and get another of equal or lesser value for free.'
                  ,style:TextStyle(color:Color(0XFF757575),fontSize:14,fontWeight:FontWeight.w400),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:8,top:8),
                child: Text('.10% Off on New Arrivals'
                  ,style:TextStyle(color:Color(0XFF1E1E1E),fontSize:14,fontWeight:FontWeight.w600),),
              ),
              Padding(
                padding: const EdgeInsets.only(left:8,bottom:50),
                child: Text('Be the first to flaunt the latest trends with our new arrivals. Get an exclusive 10%'
                    ' discount on our latest collection of clothing and home decor items'
                  ,style:TextStyle(color:Color(0XFF757575),fontSize:14,fontWeight:FontWeight.w400),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom:50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset('assets/Instagram.png'),
                    Image.asset('assets/facebook.png'),
                    Image.asset('assets/Youtube.png'),
                  ],
                ),
              ),
            ],
          ),
        ),
    );
  }
}
