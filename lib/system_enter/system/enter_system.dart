import 'package:flutter/material.dart';
import 'package:ui_enter/colors/colors.dart';
class SystemEnterencePage1 extends StatelessWidget {
   SystemEnterencePage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
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
              text: 'Tizimga kirish',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold
              ),
            ),
            ),
            const SizedBox(height: 24),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 44),
                  child: RichText(text: TextSpan(
                    text: 'Telefon raqamingiz',style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.grey,
                  )
                  ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Container(
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
                        border: Border.all(color: Colors.grey)
                    ),
                    height: 50.0,
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 24),
                      child: RichText(text: const TextSpan(
                          text: "+998",style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          fontFamily: 'MontserratBold'

                      )
                      )),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 24),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 44),
                  child: RichText(text: TextSpan(
                      text: 'Parol',style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.grey,
                  )
                  ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Container(
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
                        border: Border.all(color: Colors.grey),
                    ),
                    height: 50.0,
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 24),
                      child: RichText(text: const TextSpan(
                          text: "00000",style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          fontFamily: 'MontserratBold'
                      ),
                      ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 32),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(text: const TextSpan(
                        text: 'Parolni unutdim', style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        decoration: TextDecoration.underline
                      )
                      )
                      ),
                      RichText(text: const TextSpan(
                        text: "Ro'yxatdan o'tish", style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        decoration: TextDecoration.underline
                      )
                      ))
                    ],
                  ),
                ),
                SizedBox(height: 100),
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
                        text: "Kirish",style: TextStyle(
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
          ],
        ),
      ),
    );
  }
}

