import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';

import 'components/const.dart';
import 'components/global_componnets.dart';




class TestScreen extends StatefulWidget {

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: test2,
      body:

      Stack(
        alignment: Alignment.topCenter,
        children: [
          Positioned(
            top: 45,
            child: Container(
              height: 200,
              width: 150,
              decoration: BoxDecoration(
                border: Border.all(color: primaryColor, width: 1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,

                children: [

                  SizedBox(height: 45,),
                  const    Text(
                    "التقويم",
                    style: TextStyle(
                      color: primaryColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: "cairo",
                    ),
                  ),

                  SizedBox(height: 5,),

                  const Text(
                    "الهجري",
                    style: TextStyle(
                      color: primaryColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: "cairo",
                    ),
                  ),
                  SizedBox(height: 10,),


                  myButton("عرض", (){}),

                ],
              ),
            ),
          ),

          Positioned(
            top: 0,
            child: SizedBox(
              height: 90,
                child: Image.asset("assets/icons/item_icon.png" , width: 90 , )),
          ),


        ],
      ),
    );
  }
}
