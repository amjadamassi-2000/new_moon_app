import 'package:flutter/material.dart';
import 'package:flutter_screenutil/size_extension.dart';
import 'package:new_moon_app/components/calendar.dart';
import 'package:new_moon_app/components/const.dart';
import 'package:new_moon_app/components/global_componnets.dart';
import 'package:new_moon_app/data/grid_view_data.dart';




class HomeScreenItem extends StatelessWidget {


  GridViewData gridViewData;
  Function  func;

  HomeScreenItem(this.gridViewData , this.func);



  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Positioned(
          top: 45,
          child: Container(
            height: 170.h,
            width: 150.w,
            decoration: BoxDecoration(
              border: Border.all(color: primaryColor, width: 1.5),
              borderRadius: BorderRadius.circular(10),
              color: item,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,

              children: [

                SizedBox(height: 35.h,),
                    Text(
                 gridViewData.titleP1,
                  style: TextStyle(
                    color: kLightAccent,
                    fontSize: 19.sp,
                    fontWeight: FontWeight.bold,
                    fontFamily: "cairo",
                  ),
                ),

                SizedBox(height: 5.h,),

                 Text(
                  gridViewData.titleP2,
                  style: TextStyle(
                    color: kLightAccent,
                    fontSize: 19.sp,
                    fontWeight: FontWeight.bold,
                    fontFamily: "cairo",
                  ),
                ),
                SizedBox(height: 10.h,),


                myButton("عرض", func),

              ],
            ),
          ),
        ),

        Positioned(
          top: 0,
          child: SizedBox(
              height: 70.h,
              child: Image.asset("assets/icons/item_icon.png" , width: 90 , )),
        ),


      ],
    );
  }
}
