import 'package:flutter/material.dart';
import 'package:new_moon_app/components/const.dart';
import 'package:new_moon_app/components/global_componnets.dart';




class HomeScreenItem extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Stack(
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
              color: item,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,

              children: [

                SizedBox(height: 45,),
                const    Text(
                  "التقويم",
                  style: TextStyle(
                    color: kLightAccent,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: "cairo",
                  ),
                ),

                SizedBox(height: 5,),

                const Text(
                  "الهجري",
                  style: TextStyle(
                    color: kLightAccent,
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
    );
  }
}
