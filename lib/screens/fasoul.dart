import 'package:flutter/material.dart';
import 'package:flutter_screenutil/size_extension.dart';
import 'package:new_moon_app/components/const.dart';
import 'package:new_moon_app/components/fasoul.dart';
import 'package:new_moon_app/data/fasouldata.dart';
import 'package:new_moon_app/model/fasoul.dart';

class fasoul extends StatefulWidget {
  @override
  State<fasoul> createState() => _fasoulState();
}

class _fasoulState extends State<fasoul> {
  @override
  Widget build(BuildContext context) {
    final List<Widget> _gridCategories = Fasoul_data.map((category) {
      return fasoul_item(category);
    }).toList();
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: test2,
        appBar: AppBar(
          backgroundColor: test2,
          elevation: 0.0,
          centerTitle: true,
          title: Text(
            "الفصول ",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.sp,
              letterSpacing: 3,
              fontWeight: FontWeight.bold,
              fontFamily: "cairo",
            ),
          ),
        ),
        body: ListView.builder(
            itemCount: Fasoul_data.length,
            itemBuilder: (context, itemBuilder) {
              return _gridCategories[itemBuilder];
            }),
      ),
    );
  }
}
/*
    body: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Row(
                    children: [
                      Text(
                        " # 1 | ",
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
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    child: Container(
                        height: 80.h,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color: kDarkPlaceholderText, width: 1.5),
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
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              margin: EdgeInsets.only(left: 20.w, right: 20.w),
              child: Text(
                "يبدأ فصل الصيف في ",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w500,
                  fontFamily: "cairo",
                ),
              ),
            ),
          ],
        ),
*/