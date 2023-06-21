import 'package:flutter/material.dart';
import 'package:ui_enter/colors/colors.dart';

import '../system_enter/system/enter_system.dart';
import '../system_enter/system/system_enter_1.dart';
class LanguagePage1 extends StatefulWidget {
  const LanguagePage1({Key? key}) : super(key: key);

  @override
  State<LanguagePage1> createState() => _LanguagePage1State();
}

class _LanguagePage1State extends State<LanguagePage1> {
  String selectedLanguage = '';
  bool showButton = false;
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
                      borderRadius: BorderRadius.circular(30),
                      color: MyColors.bigScreenColor
                  ),
                ),
                Center(
                  child: Stack(
                    children: const [
                      CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.white,
                    ),

                    ],
                  ),
                )
              ],
            ),
            const SizedBox(height: 35.0),
            RichText(text: const TextSpan(
              text: 'Xush kelibsiz',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontFamily: 'MontserrantBold',
                 fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w700
              ),
            ),
            ),
            const SizedBox(height: 75),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    selectedLanguage = "O'zbek tili";
                    showButton = true;
                  });
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(MediaQuery.of(context).size.width,50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                  ),
                  backgroundColor: selectedLanguage == "O'zbek tili" ? Colors.blue : Colors.white,
                  elevation: 4,
                  shadowColor: Colors.grey.withOpacity(0.4),
                ),
                child: Row(
                  children: [
                    const SizedBox(width: 115),
                    Image.asset('assets/uzb.png'),
                    const SizedBox(width: 10,),
                    const Text("O'zbek tili",style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        fontFamily: "Montserrat"
                    ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child:  ElevatedButton(
                onPressed: () {
                  setState(() {
                    selectedLanguage = "English";
                    showButton = true;
                  });
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(MediaQuery.of(context).size.width,50),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                  ),
                  backgroundColor: selectedLanguage == "English" ? Colors.blue : Colors.white,
                  elevation: 4,
                  shadowColor: Colors.grey.withOpacity(0.4),
                ),
                child: Row(
                  children: [
                    const SizedBox(width: 115),
                    Image.asset('assets/usa.png'),
                    const SizedBox(width: 10,),
                    const Text("English",style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        fontFamily: "Montserrat"
                    ),
                    ),

                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child:  ElevatedButton(
                onPressed: () {
                  setState(() {
                    selectedLanguage = "Русский язык";
                    showButton = true;
                  });
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(MediaQuery.of(context).size.width,50),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                  ),
                  backgroundColor: selectedLanguage == "Русский язык" ? Colors.blue : Colors.white,
                  elevation: 4,
                  shadowColor: Colors.grey.withOpacity(0.4),
                ),
                child: Row(
                  children: [
                    const SizedBox(width: 115),
                    Image.asset('assets/russian.png'),
                    const SizedBox(width: 10,),
                    const Text("Русский язык",style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      fontFamily: "Montserrat"
                    ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 100),
            if (showButton)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(MediaQuery.of(context).size.width,50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                    ),
                  ),
                  onPressed: () {
                    toNextPage();
                  },
                  child: const Text('Boshlash',style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'MontserrantBold',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w700
                  ),),
                ),
              ),
          ]
          ,
        )
        ,
      ),
    );
  }
  void toNextPage(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>SystemEnterencePage()));
  }
  }