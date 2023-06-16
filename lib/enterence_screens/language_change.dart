import 'package:flutter/material.dart';
import 'package:ui_enter/colors/colors.dart';
class LanguagePageChage extends StatelessWidget {
  const LanguagePageChage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
            text: 'Xush kelibsiz',
            style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontFamily: 'Montserrant',
                fontWeight: FontWeight.bold
            ),
          ),
          ),
          const SizedBox(height: 75),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.blue.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.grey)
              ),
              height: 50.0,
              child: Row(
                children: [
                  const SizedBox(width: 115),
                  Image.asset('assets/uzb.png'
                  ),
                  const SizedBox(width: 10),
                  RichText(text: const TextSpan(
                      text: "O'zbek tili",style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      fontFamily: 'Montserrant'

                  )
                  ))
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.03),
                  borderRadius: BorderRadius.circular(15)
              ),
              height: 50.0,
              child: Row(
                children: [
                  SizedBox(width: 115),
                  Image.asset('assets/usa.png'
                  ),
                  const SizedBox(width: 10),
                  RichText(text: const TextSpan(
                      text: "English",style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      fontFamily: 'Montserrant'

                  )
                  ))
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.03),
                borderRadius: BorderRadius.circular(15),
              ),
              height: 50.0,
              child: Row(
                children: [
                  SizedBox(width: 115),
                  Image.asset('assets/russian.png'
                  ),
                  const SizedBox(width: 10),
                  RichText(text: const TextSpan(
                      text: "Русский язык",style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      fontFamily: 'Montserrant'

                  )
                  ))
                ],
              ),
            ),
          ),
          SizedBox(height: 80),
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
                  text: "Boshlash",style: TextStyle(
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
    );
  }
}
