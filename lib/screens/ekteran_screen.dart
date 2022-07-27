import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../components/const.dart';
import '../components/global_componnets.dart';
import '../items/ekteran_item.dart';




class EcteranScreen extends StatefulWidget {

  @override
  _EcteranScreenState createState() => _EcteranScreenState();
}

class _EcteranScreenState extends State<EcteranScreen> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: test2,
        appBar: AppBar(
          backgroundColor: test2,
          elevation: 0.0,
          centerTitle: true,
          title: Text(
             "اقترانات القمر والثريا",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
              fontFamily: "almarai",
            ),
          ),
        ),
        
        
        

        body:SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 30,),

              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    border: Border.all(width: 1 , color: Colors.grey),
                    // color: item,
                  ),

                  child:  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      'يرصد بسماء الوطن العربي قبل شروق الشمس، الثلاثاء، هلال القمر قرب "عنقود نجوم الثريا" الذي يعرف أيضاً بتسمية "الشقيقات السبع"، بسبب ألمع سبعة نجوم في هذا العنقود.',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        height: 1.5,
                        color: Colors.white70,
                        fontWeight: FontWeight.w600,
                        fontSize: 12.sp,
                        wordSpacing: 2,
                        fontFamily: "almarai",
                      ),
                    ),
                  ),
                ),
              ),



              Padding(
                padding: const EdgeInsets.only(top: 30 , bottom: 10),
                child: Expanded(
                  child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 12,
                    itemBuilder: (context , index){
                      return  EkteranItem(
                        "يناير",
                        "11 - يناير",
                        "الشتاء",

                      );
                    }
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
