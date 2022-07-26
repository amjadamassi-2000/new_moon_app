import 'package:flutter/material.dart';
import 'package:flutter_screenutil/size_extension.dart';
import 'package:hijri/hijri_calendar.dart';
import 'package:intl/date_symbol_data_file.dart';
import 'package:intl/intl.dart';
import 'package:new_moon_app/components/calendar.dart';
import 'package:new_moon_app/components/const.dart';
import 'package:new_moon_app/components/global_componnets.dart';
import 'package:new_moon_app/data/grid_view_data.dart';
import 'package:new_moon_app/items/current_fasl.dart';
import 'package:new_moon_app/items/date_item.dart';
import 'package:new_moon_app/items/home_screen_item.dart';
import 'package:new_moon_app/screens/drawer_screen/admin_screen.dart';
import 'package:new_moon_app/screens/drawer_screen/lock_admin_screen.dart';

import '../../items/HomeScreenItemfosool.dart';
import '../../items/HomeScreenItem_ekteran.dart';
import '../fasoul.dart';
import '../gregorian_calendar_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var now = DateTime.now();
    var formatter = DateFormat.yMMMd('ar_SA');
    print(formatter.locale);
    String formatted = formatter.format(now);
    DateTime now2 = new DateTime.now();
    DateTime lastDayOfMonth = new DateTime(now2.year, now2.month, now2.day);
    print(lastDayOfMonth.month);
    print(lastDayOfMonth.day);

    HijriCalendar _today = HijriCalendar.now();
    HijriCalendar.setLocal('ar');
    List<Function> fuctions = [
      () {},
      () {
        To(context, GregorianCalendarScreen());
      },
    ];

    return Center(
      child: Scaffold(
        backgroundColor: test2,
        appBar: AppBar(
          backgroundColor: test2,
          elevation: 0.0,
          centerTitle: true,
          title: Text(
            "منازل الشمس و القمر",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
              fontFamily: "almarai",
            ),
          ),
        ),
        drawer: Drawer(
          child: Container(
            color: test2,
            child: Column(
              children: [
                SizedBox(
                  height: 70,
                ),
                Image.asset(
                  "assets/icons/splash_icon.png",
                  width: 130,
                ),
                SizedBox(
                  height: 50,
                ),
                ListTile(
                  title: Row(
                    children: [
                      Icon(
                        Icons.person,
                        color: Colors.white,
                        size: 30,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "الأدمن",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17.sp,
                          fontWeight: FontWeight.bold,
                          fontFamily: "almarai",
                        ),
                      ),
                    ],
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                  onTap: () {
                    To(context, LockAdminScreen());

                    DateTime now = new DateTime.now();

                    DateTime lastDayOfMonth =
                        DateTime(now.year, now.month + 1, 0);

                    print("${lastDayOfMonth.month}/${lastDayOfMonth.day}");
                  },
                ),
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 30.h,
              ),



              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  alignment: Alignment.center,
                  height: 60.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: item,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "تاريخ اليوم الميلادي",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16.sp,
                            fontFamily: "almarai",

                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          formatted,
                          style: TextStyle(
                            color: Colors.white70,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.sp,
                            fontFamily: "almarai",

                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),



              SizedBox(
                height: 10.h,
              ),



              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  height: 60.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: item,
                  ),

                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'تاريخ اليوم الهجري',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16.sp,
                              fontFamily: "almarai"


                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          '${_today.toFormat("MMMM dd yyyy")}',
                          style: TextStyle(
                            color: Colors.white70,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.sp,
                            fontFamily: "almarai"
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),




              SizedBox(
                height: 30.h,
              ),
              current_fasl(),


              SizedBox(
                height: 20.h,
              ),

              // Padding(
              //   padding: EdgeInsets.symmetric(horizontal: 15.w),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: [
              //       Column(
              //         children: [
              //           DateItem(
              //             Padding(
              //               padding: EdgeInsets.symmetric(horizontal: 20),
              //               child: Row(
              //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //                 children: [
              //                   Icon(
              //                     Icons.wb_sunny,
              //                     color: kDarkPlaceholderText,
              //                   ),
              //                   Text(
              //                     "نجم الإكليل",
              //                     style: TextStyle(
              //                       color: Colors.white,
              //                       fontSize: 16.sp,
              //                       fontWeight: FontWeight.bold,
              //                       fontFamily: "cairo",
              //                     ),
              //                   ),
              //                 ],
              //               ),
              //             ),
              //           ),
              //           SizedBox(
              //             height: 10,
              //           ),
              //           DateItem(
              //             Padding(
              //               padding: EdgeInsets.symmetric(horizontal: 20),
              //               child: Row(
              //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //                 children: [
              //                   //Crescent
              //                   Icon(
              //                     Icons.brightness_3_sharp,
              //                     color: kDarkPlaceholderText,
              //                   ),
              //
              //                   Text(
              //                     "نجم الإكليل",
              //                     style: TextStyle(
              //                       color: Colors.white,
              //                       fontSize: 16.sp,
              //                       fontWeight: FontWeight.bold,
              //                       fontFamily: "cairo",
              //                     ),
              //                   ),
              //                 ],
              //               ),
              //             ),
              //           ),
              //         ],
              //       ),
              //       // Column(
              //       //   children: [
              //       //     DateItem(
              //       //       Text(
              //       //         "الأحد  -  3/7/2022",
              //       //         style: TextStyle(
              //       //           color: Colors.white,
              //       //           fontSize: 16.sp,
              //       //           fontWeight: FontWeight.bold,
              //       //           fontFamily: "cairo",
              //       //         ),
              //       //       ),
              //       //     ),
              //       //     SizedBox(
              //       //       height: 10,
              //       //     ),
              //       //     DateItem(
              //       //       //1443
              //       //       Text(
              //       //         " الأحد  -  3/12/1443",
              //       //         style: TextStyle(
              //       //           color: Colors.white,
              //       //           fontSize: 16.sp,
              //       //           fontWeight: FontWeight.w600,
              //       //           fontFamily: "cairo",
              //       //         ),
              //       //       ),
              //       //     ),
              //       //   ],
              //       // ),
              //     ],
              //   ),
              // ),

              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      children: [
                        Container(width: 150.w, height: 280,
                            child: HomeScreenItemCalender(),),


                        Container(
                            width: 150.w, height: 280,
                            child: HomeScreenItemFosool()),
                      ],
                    ),
                  ),

                  Container(
                      width: 150.w, height: 280,
                      child: HomeScreenItemEkteran()),
                ],
              ),






              SizedBox(
                height: 20.h,
              )
            ],
          ),
        ),
      ),
    );
  }
}
