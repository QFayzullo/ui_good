import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ui_enter/colors/colors.dart';
class SignUp3Page extends StatefulWidget {
  const SignUp3Page({Key? key}) : super(key: key);

  @override
  State<SignUp3Page> createState() => _SignUp3PageState();
}

class _SignUp3PageState extends State<SignUp3Page> {
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
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 38),
                      child: RichText(text: const TextSpan(
                          text: "Ro‘yxatdan o‘tish uchun quyidagilarni to‘ldiring",style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.grey,
                      )
                      ),
                      ),
                    ),
                    const SizedBox(height: 38),
                    Padding(
                      padding:  const EdgeInsets.symmetric(horizontal: 16),
                      child: TextField(
                        textCapitalization: TextCapitalization.words,
                        decoration: InputDecoration(
                          labelText: 'Ismingiz',
                          hintText: "Ism",
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.circular(20.0), // Yumaloqligi
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.blue),
                            borderRadius: BorderRadius.circular(20.0), // Yumaloqligi
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: TextField(
                        textCapitalization: TextCapitalization.words,
                        decoration: InputDecoration(
                          labelText: 'Familyangiz',
                          hintText: "Familya",
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.circular(20.0), // Yumaloqligi
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.blue),
                            borderRadius: BorderRadius.circular(20.0), // Yumaloqligi
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child:TextField(
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        decoration: InputDecoration(
                          labelText: 'Telefon raqamingiz',
                          prefixText: "+998",
                          prefixStyle: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold,
                              fontSize: 17),
                          hintText: "_______",
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.circular(20.0), // Yumaloqligi
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.blue),
                            borderRadius: BorderRadius.circular(20.0), // Yumaloqligi
                          ),
                        ),
                      ),
                    ),
                  ]
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