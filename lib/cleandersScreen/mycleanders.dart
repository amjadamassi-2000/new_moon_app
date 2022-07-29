import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hijri/hijri_calendar.dart';
import 'package:new_moon_app/cleandersScreen/hijri.dart';
import 'package:new_moon_app/items/calenderidtem.dart';
import 'package:new_moon_app/items/current_ecteran.dart';
import 'package:new_moon_app/items/hijri.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import '../components/const.dart';

class Cleanders extends StatefulWidget {
  const Cleanders({Key key}) : super(key: key);

  @override
  State<Cleanders> createState() => _CleandersState();
}

class _CleandersState extends State<Cleanders> {
  @override
  Widget build(BuildContext context) {
    HijriCalendar _today = HijriCalendar.now();
    HijriCalendar.setLocal('ar');

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: test2,
        appBar: AppBar(
          backgroundColor: test2,
          elevation: 0.0,
          centerTitle: true,
          title: Text(
            "التقويم وتفاصيل أُخرى ",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
              fontFamily: "almarai",
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15)
                    .add(EdgeInsets.only(bottom: 10)),
                child: Container(
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          color: Colors.grey,
                          thickness: 1,
                          indent: 20,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          " الإقتران الحالي",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                            fontFamily: "almarai",
                          ),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          color: Colors.grey,
                          thickness: 1,
                          endIndent: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Current_ecteran(),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15)
                    .add(EdgeInsets.only(bottom: 10)),
                child: Container(
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          color: Colors.grey,
                          thickness: 1,
                          indent: 20,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          " التقويم الميلادي ",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                            fontFamily: "almarai",
                          ),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          color: Colors.grey,
                          thickness: 1,
                          endIndent: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                  margin:
                      EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.r)),
                  child: SfDateRangePicker()),
              SizedBox(
                height: 20.h,
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15)
                    .add(EdgeInsets.only(bottom: 10)),
                child: Container(
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          color: Colors.grey,
                          thickness: 1,
                          indent: 20,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          " التقويم الهجري ",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                            fontFamily: "almarai",
                          ),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          color: Colors.grey,
                          thickness: 1,
                          endIndent: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 20.w),
                  height: 250.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.r)),
                  child: hijri()),
              SizedBox(
                height: 20.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
