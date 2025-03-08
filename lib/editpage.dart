import 'package:flutter/material.dart';
class Editpage extends StatefulWidget {
  const Editpage({super.key});

  @override
  State<Editpage> createState() => _Editpage();
}

class _Editpage extends State<Editpage> {
  TextEditingController nameText = TextEditingController();
  TextEditingController numberText=TextEditingController();
  TextEditingController emailText=TextEditingController();
  TextEditingController dateText = TextEditingController();
  String selectedGender='Male';
  List<String>genderitems=['Male','Female'];

  String selectedCountry='India';
  List<String>countryitems=['India','America','Japan','Russia','China'];

  String selectedCity='Bhopal Madhya Pradesh';
  List<String>cityitems=['Jaipur Rajasthan','Gandhi Nagar Gujrat','Lucknow UP','Bhopal Madhya Pradesh'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text(
          'Edit',
          style: TextStyle(
              color: Color(0XFF1E1E1E),
              fontSize: 18,
              fontWeight: FontWeight.w600),
        ),
      ),
      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Stack(
                  children: [
                    Image.asset('assets/capman2.png'),
                    Positioned(
                      bottom:0,
                      right:0,
                      child:Image.asset('assets/pen.png'),
                    ),
                  ],
                ),
              ),
              SizedBox(height:30),
              TextFormField(
                controller:nameText,
                keyboardType:TextInputType.text,
                decoration:InputDecoration(
                  focusedBorder:OutlineInputBorder(
                    borderSide:BorderSide(color:Colors.red),
                    borderRadius:BorderRadius.circular(10),
                  ),
                  enabledBorder:OutlineInputBorder(
                    borderSide:BorderSide(color:Colors.green),
                    borderRadius:BorderRadius.circular(10),
                  ),
                  labelText:'Full Name',
                  labelStyle:TextStyle(fontSize:14,fontWeight:FontWeight.w400),
                  hintText:'Aman Kumar',
                  hintStyle:TextStyle(color:Color(0XFFA4A4A4),fontSize:14,fontWeight:FontWeight.w400),
                ),
              ),
              SizedBox(height:10),
              TextFormField(
                controller: numberText,
                keyboardType:TextInputType.number,
                decoration:InputDecoration(
                  focusedBorder:OutlineInputBorder(
                    borderSide:BorderSide(color:Colors.red),
                    borderRadius:BorderRadius.circular(10),
                  ),
                  enabledBorder:OutlineInputBorder(
                    borderSide:BorderSide(color:Colors.green,width:2),
                  ),
                  labelText:'Number',
                  labelStyle:TextStyle(fontSize:14,fontWeight:FontWeight.w400),
                  hintText:'098765432',
                  hintStyle:TextStyle(color:Color(0XFFA4A4A4),fontSize:14,fontWeight:FontWeight.w400),
                ),
              ),
              SizedBox(height:10),
              TextFormField(
                controller: dateText,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Date of Birth',
                  labelStyle:TextStyle(fontSize:14,fontWeight:FontWeight.w400),
                  hintText: 'YYYY-MM-DD',
                  hintStyle:TextStyle(color:Color(0XFFA4A4A4),fontSize:14,fontWeight:FontWeight.w400),
                  suffixIcon: IconButton(
                    icon: Icon(Icons.calendar_month),
                    onPressed: () async {
                      DateTime? datePicked = await showDatePicker(
                        context: context,
                        barrierColor: Colors.orange,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(1950),
                        lastDate: DateTime(2050),
                        builder:(context,child){
                          return Theme(
                            data: ThemeData.light().copyWith(
                              colorScheme: ColorScheme.light(
                                primary: Colors.green,
                                onPrimary: Colors.white,
                                onSurface: Colors.black,

                              ),
                              textButtonTheme: TextButtonThemeData(
                                style: TextButton.styleFrom(
                                  foregroundColor: Colors.blue,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.zero, // Remove rounded corners
                                  ),

                                ),
                              ),
                            ),
                            child:child!,
                          );
                        },
                      );
                      if (datePicked != null) {
                        String formattedDate =
                            '${datePicked.year}-${datePicked.month}-${datePicked.day}';
                        dateText.text = formattedDate;
                        print('Date selected:$formattedDate');
                      }
                    },


                  ),
                ),
              ),
              SizedBox(height:10),
              TextFormField(
                controller:emailText,
                keyboardType:TextInputType.emailAddress,
                decoration:InputDecoration(
                  focusedBorder:OutlineInputBorder(
                    borderSide:BorderSide(color:Colors.red,width:2),
                    borderRadius:BorderRadius.circular(10),
                  ),
                  enabledBorder:OutlineInputBorder(
                    borderSide:BorderSide(color:Colors.green,width:2),
                    borderRadius:BorderRadius.circular(10),
                  ),
                  labelText:'Mail',
                  labelStyle:TextStyle(fontSize:14,fontWeight:FontWeight.w400),
                  hintText:'support1123@gmail.com',
                  hintStyle:TextStyle(color:Color(0XFFA4A4A4),fontSize:14,fontWeight:FontWeight.w400),
                ),
              ),
              SizedBox(height:10),
              Text(
                'Gender',
                style: TextStyle(color:Color(0XFFA4A4A4),fontSize: 14, fontWeight: FontWeight.w500),
              ),
              Container(
                padding:EdgeInsets.only(left:10,right:10),
                decoration:BoxDecoration(
                  border:Border.all(color:Colors.green,width:2),
                  borderRadius:BorderRadius.circular(10),
                ),
                child: DropdownButton(
                  isExpanded:true,
                  underline:SizedBox(),
                  value:selectedGender,
                    icon:Icon(Icons.keyboard_arrow_down),
                  items:genderitems.map((String genderItem){
                    return DropdownMenuItem(
                      value:genderItem,
                      child:Text(genderItem,style:TextStyle(color:Color(0XFFA4A4A4)),),
                    );
                    }).toList(),
                    onChanged:(String? newValue){
                    setState(() {
                      selectedGender=newValue!;
                    });
                    },
                ),
              ),
              SizedBox(height:10),
              Text(
                'Country',
                style: TextStyle(color:Color(0XFFA4A4A4),fontSize: 14, fontWeight: FontWeight.w500),
              ),
              Container(
                padding:EdgeInsets.only(left:10,right:10),
                decoration:BoxDecoration(
                  border:Border.all(color:Colors.green,width:2),
                  borderRadius:BorderRadius.circular(10),
                ),
                child: DropdownButton(
                  isExpanded: true,
                  underline:SizedBox(),
                  value:selectedCountry,
                    icon:Icon(Icons.keyboard_arrow_down),
                    items: countryitems.map((String countryItem){
                      return DropdownMenuItem(
                        value:countryItem,
                          child:Text(countryItem,style:TextStyle(color:Color((0XFFA4A4A4))),),
                      );
                    }).toList(),
                    onChanged:(String? newValue){
                      setState(() {
                        selectedCountry=newValue!;
                      });
                    },
                ),
              ),
              SizedBox(height:10),
              Text(
                'city & State',
                style: TextStyle(color:Color(0XFFA4A4A4),fontSize: 14, fontWeight: FontWeight.w500),
              ),
              Container(
                padding:EdgeInsets.only(left:10,right:10),
                decoration:BoxDecoration(
                  border:Border.all(color:Colors.green,width:2),
                  borderRadius:BorderRadius.circular(10),
                ),
                child: DropdownButton(
                    isExpanded:true,
                    underline:SizedBox(),
                    value:selectedCity,
                    icon:Icon(Icons.keyboard_arrow_down),
                    items:cityitems.map((String cityItem){
                      return DropdownMenuItem(
                          value:cityItem,
                          child:Text(cityItem,style:TextStyle(color:Color((0XFFA4A4A4))),),
                      );
                    }).toList(),
                    onChanged:(String ?newValue){
                      setState(() {
                        selectedCity =newValue!;
                      });
                    },
                ),
              ),
              SizedBox(height:10),
              GestureDetector(
                onTap:(){
                  
                },
                child:Container(
                  width:double.infinity,
                  alignment:Alignment.center,
                  padding:EdgeInsets.symmetric(vertical:10),
                  decoration:BoxDecoration(
                    border:Border.all(color:Color(0XFF63A2FF),width:2),
                    borderRadius:BorderRadius.circular(10),
                    color:Color(0XFF63A2FF),
                  ),
                    child: Text('Update Profile',style:TextStyle(color:Color(0XFFFFFFFF),
                    fontSize:18,fontWeight:FontWeight.w600),)
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
