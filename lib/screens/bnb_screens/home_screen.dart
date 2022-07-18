import 'package:flutter/material.dart';
import 'package:flutter_screenutil/size_extension.dart';
import 'package:new_moon_app/components/calendar.dart';
import 'package:new_moon_app/components/const.dart';
import 'package:new_moon_app/components/global_componnets.dart';
import 'package:new_moon_app/data/grid_view_data.dart';
import 'package:new_moon_app/items/date_item.dart';
import 'package:new_moon_app/items/home_screen_item.dart';
import 'package:new_moon_app/screens/drawer_screen/admin_screen.dart';
import 'package:new_moon_app/screens/drawer_screen/lock_admin_screen.dart';

import '../fasoul.dart';
import '../gregorian_calendar_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
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
              letterSpacing: 3,
              fontWeight: FontWeight.bold,
              fontFamily: "cairo",
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
                          fontFamily: "cairo",
                        ),
                      ),
                    ],
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                  onTap: () {
                    //   To(context, LockAdminScreen());

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
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    Text(
                      " الفصل الحالي | ",
                      style: TextStyle(
                        color: kDarkPlaceholderText,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                        fontFamily: "cairo",
                      ),
                    ),
                    Text(
                      "فصل الصيف",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                        fontFamily: "cairo",
                      ),
                    ),
                    Spacer(),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Container(
                    height: MediaQuery.of(context).size.height * 0.2,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border:
                          Border.all(color: kDarkPlaceholderText, width: 1.5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(5),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          "assets/images/summer_6.jpg",
                          fit: BoxFit.fill,
                        ),
                      ),
                    )),
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    Text(
                      "  جميع الفصول وموعد كل فصل  | ",
                      style: TextStyle(
                        color: kDarkPlaceholderText,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                        fontFamily: "cairo",
                      ),
                    ),
                    myButton('إضغط هنا ', () {
                      To(context, fasoul());
                    }),
                    Spacer(),
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        DateItem(
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.wb_sunny,
                                  color: kDarkPlaceholderText,
                                ),
                                Text(
                                  "نجم الإكليل",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "cairo",
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        DateItem(
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                //Crescent
                                Icon(
                                  Icons.brightness_3_sharp,
                                  color: kDarkPlaceholderText,
                                ),

                                Text(
                                  "نجم الإكليل",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "cairo",
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        DateItem(
                          Text(
                            "الأحد  -  3/7/2022",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold,
                              fontFamily: "cairo",
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        DateItem(
                          //1443
                          Text(
                            " الأحد  -  3/12/1443",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                              fontFamily: "cairo",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.symmetric(horizontal: 18)
                    .add(EdgeInsets.only(bottom: 0)),

                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 0.7,
                  // number of items per row
                  crossAxisCount: 2,
                  // vertical spacing between the items
                  mainAxisSpacing: 2,
                  // horizontal spacing between the items
                  crossAxisSpacing: 10,
                ),
                // number of items in your list
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return data
                      .map((e) => HomeScreenItem(data[index], fuctions[index]))
                      .toList()[index];
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
