import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_moon_app/components/const.dart';
import 'package:new_moon_app/data/najomdata.dart';
import 'package:new_moon_app/model/desc_najom.dart';
import 'package:new_moon_app/model/najom.dart';

class najomDesc extends StatefulWidget {
  final Mynajom mynajom;

  najomDesc(this.mynajom);

  @override
  State<najomDesc> createState() => _najomDescState();
}

class _najomDescState extends State<najomDesc> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getnajom();
  }

  Desc_najom mynajomDesc;

  getnajom() {
    mynajomDesc = najom_Desc.firstWhere((element) {
      return element.id == widget.mynajom.descId;
    }) as Desc_najom;
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(),
        backgroundColor: test2,
        body: Padding(
          padding: EdgeInsets.only(top: 20.h, left: 10.w, right: 10.w),
          child: SingleChildScrollView(
            child: Column(children: [
              Material(
                elevation: 5,
                child: Container(
                  padding:
                      EdgeInsets.symmetric(vertical: 5.h, horizontal: 10.w),
                  width: double.infinity,
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                      color: Colors.blue,
                      blurRadius: 8,
                      spreadRadius: 4,
                      offset: Offset(0, 10),
                    ),
                  ], color: Colors.black),
                  child: Text(
                    '${mynajomDesc.Desc}',
                    style: TextStyle(
                        color: Colors.white, fontSize: 20, wordSpacing: 2),
                  ),
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
