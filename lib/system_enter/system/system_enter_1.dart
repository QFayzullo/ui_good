import 'package:flutter/material.dart';
import 'package:ui_enter/colors/colors.dart';

import '../signup_screens/signup_1.dart';
import 'enter_system.dart';
class SystemEnterencePage extends StatefulWidget {
  const SystemEnterencePage({Key? key}) : super(key: key);

  @override
  State<SystemEnterencePage> createState() => _SystemEnterencePageState();
}

class _SystemEnterencePageState extends State<SystemEnterencePage> {
  String selectedButton = '';

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
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  selectedButton = "Ro'yxatdan o'tish";
                  nextToPageSignUp();
                });
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(MediaQuery.of(context).size.width,50),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                ),
                backgroundColor: selectedButton == "Ro'yxatdan o'tish" ? Colors.blue : Colors.white,
                elevation: 4,
                shadowColor: Colors.grey.withOpacity(0.4),
              ),
              child: const Text("Ro'yxatdan o'tish",style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      fontFamily: "Montserrat"
                  ),
                  ),

            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  selectedButton = "Tizimga kirish";
                  nextToPageSystemEnterence();
                });
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(MediaQuery.of(context).size.width,50),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                ),
                backgroundColor: selectedButton == "Tizimga kirish" ? Colors.blue : Colors.white,
                elevation: 4,
                shadowColor: Colors.grey.withOpacity(0.4),
              ),
              child: const Text("Tizimga kirish",style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold
              ),
              ),

            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  selectedButton = "facebook";

                });
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(MediaQuery.of(context).size.width,50),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                ),
                backgroundColor: selectedButton == "facebook" ? Colors.blue : Colors.white,

                elevation: 4,
                shadowColor: Colors.grey.withOpacity(0.4),
              ),
              child: const Text("facebook",style: TextStyle(
                  color: Colors.blue,
                  fontSize: 16,
                  fontWeight: FontWeight.bold
              ),
              ),

            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  selectedButton = "Gmail";
                });
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(MediaQuery.of(context).size.width,50),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                ),
                backgroundColor: selectedButton == "Gmail" ? Colors.blue : Colors.white,
                elevation: 4,
                shadowColor: Colors.grey.withOpacity(0.4),
              ),
              child: Row(
                children: [
                  const SizedBox(width: 115),
                  Image.asset('assets/gmail.png'),
                  const SizedBox(width: 10,),
                  const Text("Gmail",style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    fontWeight: FontWeight.w500
                  ),
                  ),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
  void nextToPageSignUp(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp1Page()));
  }
  void nextToPageSystemEnterence(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>SystemEnterencePage1()));
  }
}

