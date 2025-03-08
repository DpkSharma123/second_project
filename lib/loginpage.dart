import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:second_project/otppage.dart';
class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _Loginpage();
}

class _Loginpage extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor:Color(0XFFD4E3FF),
      body:SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/Frame1.png',fit:BoxFit.cover),
            Container(
              padding: EdgeInsets.all(16),
              decoration:BoxDecoration(
                color: Colors.white,
                borderRadius:BorderRadius.only(topLeft:Radius.circular(24),
                    topRight:Radius.circular(20)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Enter Mobile Number',style:TextStyle(fontSize:18,fontWeight: FontWeight.w600),),
                  Text('Enter Your Mobile number to continue \n using this app'
                      ,style:TextStyle(fontSize:14,fontWeight: FontWeight.w400,color:Colors.grey)),
                  SizedBox(height:10),
                  Row(
                     children: [
                       SizedBox(
                         width: 70,
                         child: Container(
                           decoration:BoxDecoration(
                             border:Border.all(color:Colors.black,width:2),
                             borderRadius:BorderRadius.circular(10),
                           ),
                           child: CountryCodePicker(
                             onChanged:(code){
                               print("Selected Country Code:${code.dialCode}");
                               print("Selected Country Name: ${code.name}");
                             },

                             initialSelection:'IN',
                             showFlagDialog:false,
                             showFlag:false,
                             alignLeft:true,
                             padding:EdgeInsets.symmetric(horizontal:6),
                             onInit: (code) => debugPrint("on init ${code?.name} ${code?.dialCode} ${code?.name}"),
                           ),
                         ),
                       ),
                       SizedBox(width:10),
                       Expanded(
                         child: TextFormField(
                           keyboardType:TextInputType.number,
                        decoration:InputDecoration(
                          border:OutlineInputBorder(
                            borderRadius:BorderRadius.circular(10),
                          ),
                          hintText:'Phone Number',
                          hintStyle:TextStyle(fontSize:14,fontWeight:FontWeight.w400),

                        ),
                         ),
                       ),
                     ],
                   ),
                  SizedBox(height:30),
                  GestureDetector(
                    onTap:(){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>Otppage()),
                      );
                    },
                    child:Container(
                      width:double.infinity,
                      alignment:Alignment.center,
                      padding:EdgeInsets.symmetric(vertical:10),
                      decoration:BoxDecoration(
                        borderRadius:BorderRadius.circular(10),
                        color:Color(0xFF63A2FF),
                      ),
                        child: Text('Get OTP',style:TextStyle(fontSize:18,fontWeight:FontWeight.w600,
                        color:Colors.white),)),
                  ),
                  SizedBox(height:20),
                  Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Divider(
                              color:Colors.grey,
                              thickness:1,
                              indent:20,
                              endIndent:10,
                            ),
                          ),
                          Text('OR',style:TextStyle(fontSize:14,fontWeight:FontWeight.w400,color:Colors.grey),),
                            Expanded(
                              child:Divider(
                                color:Colors.grey,
                                thickness:1,
                                indent:10,
                                endIndent:20,
                              ),
                            ),
                        ],
                      ),
                    ],
                  ),
                    SizedBox(height:10),
                  GestureDetector(
                    onTap:(){
                      
                    },
                    child:Container(
                      width:double.infinity,
                      padding:EdgeInsets.symmetric(vertical:15),
                      decoration:BoxDecoration(
                        // border:Border.all(color:Colors.black,width:2),
                        color:Color(0xFFD4E3FF),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/google.png'),
                          SizedBox(width:5),
                          Text('Continue with google',style:TextStyle(color:Color(0XFF757575),
                          fontSize:16,fontWeight:FontWeight.w400),),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height:10),
                  GestureDetector(
                    onTap:(){

                    },
                    child:Container(
                      width:double.infinity,
                      padding:EdgeInsets.symmetric(vertical:15),
                      decoration:BoxDecoration(
                        // border:Border.all(color:Colors.black,width:2),
                        color:Color(0xFFD4E3FF),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/apple.png'),
                          SizedBox(width:5),
                          Text('Continue with Apple',style:TextStyle(color:Color(0XFF757575),
                              fontSize:16,fontWeight:FontWeight.w400),),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height:10),
                  GestureDetector(
                    onTap:(){

                    },
                    child:Container(
                      width:double.infinity,
                      padding:EdgeInsets.symmetric(vertical:15),
                      decoration:BoxDecoration(
                        // border:Border.all(color:Colors.black,width:2),
                        color:Color(0xFFD4E3FF),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/facebook.png'),
                          SizedBox(width:5),
                          Text('Continue with Facebook',style:TextStyle(color:Color(0XFF757575),
                              fontSize:16,fontWeight:FontWeight.w400),),
                        ],
                      ),
                    ),
                  ),
                    SizedBox(height:30),
                  Padding(
                    padding: const EdgeInsets.only(top:30,left:30),
                    child: RichText(
                      text:TextSpan(
                       children: [
                        TextSpan(
                          text:'By Logging into this app, you agree to our\n',
                          style:TextStyle(fontSize:14,fontWeight:FontWeight.w400,color:Color(0XFF757575)),
                        ),
                         TextSpan(
                           text:'Terms of Service',
                           style:TextStyle(fontSize:14,fontWeight:FontWeight.w400,
                               color:Color(0XFF63A2FF)),
                         ),
                         TextSpan(
                           text:' and ',
                           style:TextStyle(fontSize:14,fontWeight:FontWeight.w400,
                               color:Color(0XFF757575)),
                         ),
                         TextSpan(
                           text:'Privacy Policy.',
                           style:TextStyle(fontSize:14,fontWeight:FontWeight.w400,
                               color:Color(0XFF63A2FF)),
                         ),
                       ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
        
        
          ],
        ),
      ),
    );
  }
}
