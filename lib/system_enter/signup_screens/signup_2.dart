import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ui_enter/colors/colors.dart';
class SignUp2Page extends StatefulWidget {
  const SignUp2Page({Key? key}) : super(key: key);

  @override
  State<SignUp2Page> createState() => _SignUp2PageState();
}

class _SignUp2PageState extends State<SignUp2Page> {
  final List<bool> _isSelected =[false, true];

  @override
  Widget build(BuildContext context) {
    double w=MediaQuery.of(context).size.width;
    double h=MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 400,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(42),
                        color: MyColors.bigScreenColor
                    ),
                  ),
                  const Positioned(
                      child: CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.white,
                      )
                  ),
                ],
              ),
              const SizedBox(height: 35.0),
              RichText(text: const TextSpan(
                text: 'Sign Up',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                ),
              ),
              ),
              const SizedBox(height: 24),
              Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(25.0),
                        border: Border.all(color: Colors.white),
                      ),
                      height:40.0,
                      child: ToggleButtons(
                        selectedBorderColor: Colors.white,
                        borderColor: Colors.white,
                        isSelected: _isSelected,
                        onPressed: (index){
                          setState(() {
                            if(index==0){
                              _isSelected[0]=false;
                              _isSelected[1]=true;
                            } else{
                              _isSelected[1]=false;
                              _isSelected[0]=true;
                            }
                          });
                        },
                        children: [
                          Container(
                            decoration:  BoxDecoration(borderRadius:  const BorderRadius.only(topLeft: Radius.circular(25.0),
                              bottomLeft: Radius.circular(25.0),topRight: Radius.circular(25.0),bottomRight: Radius.circular(25.0),
                            ),
                              color: _isSelected[0]? Colors.white:Colors.blue[400],
                            ),
                            height: h,
                            width: w*0.4,
                            alignment: Alignment.center,
                            child: Text("O'quvchi",style: TextStyle(
                              color: _isSelected[0]? Colors.blue:Colors.white,
                            ),),
                          ),
                          Container(
                            decoration:  BoxDecoration(borderRadius:  const BorderRadius.only(topRight: Radius.circular(25.0),
                              bottomRight: Radius.circular(25.0),topLeft: Radius.circular(25.0),bottomLeft: Radius.circular(25.0),
                            ),
                              color: _isSelected[1]? Colors.white:Colors.blue,
                            ),
                            height: h,
                            width: w*0.4,
                            alignment: Alignment.center,
                            child: Text("O'qituvchi",style: TextStyle(
                              color: _isSelected[1]? Colors.blue:Colors.white,
                            ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),
                    Column(
                      children: const [
                        Text(
                          'Ro‘yhatdan o‘tish uchun',
                          style: TextStyle(fontSize: 16,color: Colors.grey,fontWeight: FontWeight.w500),
                        ),
                        Text(
                          'telefon raqamingizni kiriting',
                          style: TextStyle(fontSize: 16,color: Colors.grey,fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ]
              ),
              const SizedBox(height: 16,),
              const Text("Ismingiz",style: TextStyle(
                color: Colors.grey,fontWeight: FontWeight.w500,
              ),
              ),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.grey,
                            blurRadius: 5,
                            offset: Offset(0,1)
                        ),
                      ],
                      borderRadius: BorderRadius.circular(15),
                  ),
                  height: 50.0,
                  alignment: Alignment.centerLeft,
                  child: TextField(
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly
                    ],
                    decoration: InputDecoration(
                      hintText: "Ism",
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(15.0), // Yumaloqligi
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.blue),
                        borderRadius: BorderRadius.circular(15.0), // Yumaloqligi
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16,),
              const Text("Telefon raqamingiz",style: TextStyle(
                color: Colors.grey,fontWeight: FontWeight.w500,
              ),
              ),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.grey,
                          blurRadius: 5,
                          offset: Offset(0,1)
                      ),
                    ],
                    borderRadius: BorderRadius.circular(15),
                  ),
                  height: 50.0,
                  alignment: Alignment.centerLeft,
                  child: TextField(
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly
                    ],
                    decoration: InputDecoration(
                      prefixText: "+998",
                      prefixStyle: TextStyle(color: Colors.black,fontSize: 16),
                      hintText: "+998990000000",
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(15.0), // Yumaloqligi
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.blue),
                        borderRadius: BorderRadius.circular(15.0), // Yumaloqligi
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  height: 60.0,
                  alignment: Alignment.center,
                  child: RichText(text: const TextSpan(
                      text: "Keyingisi",style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      fontFamily: 'Montserrant'

                  )
                  )),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}