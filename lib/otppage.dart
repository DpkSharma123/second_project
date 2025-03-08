import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:second_project/bottomnavigationpage.dart';
class Otppage extends StatefulWidget {
  const Otppage({super.key});

  @override
  State<Otppage> createState() => _Otppage();
}

class _Otppage extends State<Otppage> {
  final TextEditingController pinController = TextEditingController();
  final FocusNode focusNode = FocusNode();

        final defaultPinTheme = PinTheme(
          width:56,
          height:56,
          textStyle:TextStyle(fontSize:22,color:Colors.black),
          decoration:BoxDecoration(
            border:Border.all(color:Colors.black),
            borderRadius:BorderRadius.circular(12),

          ),
        );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          Image.asset('assets/Frame1.png'),
          Container(
            decoration:BoxDecoration(
              border:Border.all(color:Colors.white,width:2),
              borderRadius:BorderRadius.only(topLeft:Radius.circular(20),topRight:Radius.circular(20)),
            ),
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Verify OTP',style:TextStyle(fontSize:16,fontWeight:FontWeight.w600),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:8),
                  child: Text('Enter the OTP sent to your mobile number \n  to continue',
                    style:TextStyle(fontSize:14,fontWeight:FontWeight.w400),),
                ),
                SizedBox(height:10),
                Center(
                  child: Pinput(
                    length: 4,
                    controller:pinController,
                    focusNode:focusNode,
                    defaultPinTheme:defaultPinTheme,
                    // separatorBuilder:(index)=> const SizedBox(width:8),
                    validator:(value){
                      return value =='2222' ? null : 'Pin is incorrect';
                    },
                    hapticFeedbackType:HapticFeedbackType.lightImpact,
                    onCompleted:(pin){
                      debugPrint('onComplete:$pin');

                    },
                    onChanged:(value){
                      debugPrint('onChanged:$value');
                    },

                  ),
                ),

                SizedBox(height:20),
                GestureDetector(
                  onTap:(){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=>Bottomnavigationpage()),
                    );
                  },
                  child:Container(
                      width:double.infinity,
                      alignment:Alignment.center,
                      padding:EdgeInsets.symmetric(vertical:10),
                      margin:EdgeInsets.only(left:10,right:10),
                      decoration:BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color:Color(0XFF63A2FF),
                      ),
                      child: Text('Verify',style:TextStyle(color:Color(0XFFFFFFFF),fontSize:18,
                          fontWeight:FontWeight.w600),)

                  ),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}


