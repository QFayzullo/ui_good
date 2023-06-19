import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ui_enter/colors/colors.dart';
class ConfirmPasswordPage1 extends StatelessWidget {
  const ConfirmPasswordPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                  Positioned(
                      child: CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.white,
                      )
                  ),
                ],
              ),
              const SizedBox(height: 35.0),
              RichText(text: const TextSpan(
                text: 'Kodni tasdiqlash',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold
                ),
              ),
              ),
              const SizedBox(height: 20),
              RichText(text: TextSpan(
                text: "Sizga sms orqali parol yuboriladi",style: TextStyle(color: Colors.grey)
              ),),
              const SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  RichText(text: TextSpan(
                      text: 'Parolni kiriting',style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.grey,
                  )
                  ),
                  ),
                  SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 5,
                                  offset: Offset(0,1)
                              ),
                            ],
                            borderRadius: BorderRadius.circular(15),

                        ),
                        height: 50,
                        width: 50,
                        alignment: Alignment.center,
                        child: TextField(
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          decoration: InputDecoration(
                            hintText: "o",hintStyle: TextStyle(fontSize: 20),
                            border: InputBorder.none,
                          ),style: TextStyle(fontSize: 16),
                        )
                      ), SizedBox(width: 2,),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 5,
                                  offset: Offset(0,1)
                              ),
                            ],
                            borderRadius: BorderRadius.circular(15),

                        ),
                        height: 50,
                        width: 50,
                        alignment: Alignment.center,
                        child: TextField(
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          decoration: InputDecoration(
                            hintText: "o",hintStyle: TextStyle(fontSize: 20),
                            border: InputBorder.none,
                          ),style: TextStyle(fontSize: 16),
                        )
                      ), SizedBox(width: 2,),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 5,
                                  offset: Offset(0,1)
                              ),
                            ],
                            borderRadius: BorderRadius.circular(15),

                        ),
                        height: 50,
                        width: 50,
                        alignment: Alignment.center,
                        child: TextField(
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          decoration: InputDecoration(
                            hintText: "o",hintStyle: TextStyle(fontSize: 20),
                            border: InputBorder.none,
                          ),style: TextStyle(fontSize: 16),
                        )
                      ), SizedBox(width: 2,),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 5,
                                  offset: Offset(0,1)
                              ),
                            ],
                            borderRadius: BorderRadius.circular(15),

                        ),
                        height: 50,
                        width: 50,
                        alignment: Alignment.center,
                        child: TextField(
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          decoration: InputDecoration(
                            hintText: "o",hintStyle: TextStyle(fontSize: 20),
                            border: InputBorder.none,
                          ),style: TextStyle(fontSize: 16),
                        )
                      ), SizedBox(width: 2,),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 5,
                                  offset: Offset(0,1)
                              ),
                            ],
                            borderRadius: BorderRadius.circular(15),

                        ),
                        height: 50,
                        width: 50,
                        alignment: Alignment.center,
                        child: TextField(
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          decoration: InputDecoration(
                            hintText: "o",hintStyle: TextStyle(fontSize: 20),
                            border: InputBorder.none,
                          ),style: TextStyle(fontSize: 16),
                        )
                      ), SizedBox(width: 2,),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 5,
                                  offset: Offset(0,1)
                              ),
                            ],
                            borderRadius: BorderRadius.circular(15),

                        ),
                        height: 50,
                        width: 50,
                        alignment: Alignment.center,
                        child: TextField(
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          decoration: InputDecoration(
                            hintText: "o",hintStyle: TextStyle(fontSize: 20),
                            border: InputBorder.none,
                          ),style: TextStyle(fontSize: 16),
                        )
                      ), SizedBox(width: 2,),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 34,),
              Text("Parolni qayta jo‘natish vaqti:"),
              SizedBox(height:10 ,),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        blurRadius: 5,
                        offset: Offset(0,1)
                    ),
                  ],
                  borderRadius: BorderRadius.circular(15),

                ),
                height: 50,
                width: 200,
              ),
              SizedBox(height: 20,),
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
                      text: "tasdiqlash",style: TextStyle(
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

