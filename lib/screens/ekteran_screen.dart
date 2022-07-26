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

        body: Padding(
          padding: const EdgeInsets.only(top: 30 , bottom: 10),
          child: ListView.builder(
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
    );
  }
}
