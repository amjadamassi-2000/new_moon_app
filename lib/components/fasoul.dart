import 'package:flutter/material.dart';
import 'package:flutter_screenutil/size_extension.dart';
import 'package:intl/intl.dart';
import 'package:new_moon_app/components/const.dart';
import 'package:new_moon_app/components/global_componnets.dart';
import 'package:new_moon_app/components/najomdisplay.dart';
import 'package:new_moon_app/model/fasoul.dart';

class fasoul_item extends StatefulWidget {
  // ignore: non_constant_identifier_names
  final Myfasoul myfasoul;

  fasoul_item(this.myfasoul);

  @override
  State<fasoul_item> createState() => _fasoul_itemState();
}

class _fasoul_itemState extends State<fasoul_item> {
  @override
  Widget build(BuildContext context) {
    var now = new DateTime.now();
    var formatter = new DateFormat('MM');
    String formattedDate = formatter.format(now);

    print(formattedDate.toString());

    return SingleChildScrollView(
      child: InkWell(
        onTap: () {
          To(context, NajomGrid(widget.myfasoul.id));
        },
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 30.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  decoration: BoxDecoration(color: Colors.amber),
                  child: Row(
                    children: [
                      Text(
                        " الفصل  | ",
                        style: TextStyle(
                          color: kDarkPlaceholderText,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                          fontFamily: "cairo",
                        ),
                      ),
                      Text(
                        '${widget.myfasoul.name}',
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
                          '${widget.myfasoul.image}',
                          fit: BoxFit.fill,
                        ),
                      ),
                    )),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  Text(
                    " بداية الفصل   ",
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                      fontFamily: "cairo",
                    ),
                  ),
                  Spacer(),
                  Container(
                    margin: EdgeInsets.only(left: 20, right: 20),
                    child: Text(
                      "${widget.myfasoul.date}  ",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                        fontFamily: "cairo",
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "عدد النجوم ",
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                      fontFamily: "cairo",
                    ),
                  ),
                  Spacer(),
                  Container(
                    margin: EdgeInsets.only(left: 20, right: 20),
                    child: Text(
                      "${widget.myfasoul.najom}  ",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                        fontFamily: "cairo",
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "عدد الأيام ",
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                      fontFamily: "cairo",
                    ),
                  ),
                  Spacer(),
                  Container(
                    margin: EdgeInsets.only(left: 20, right: 20),
                    child: Text(
                      "${widget.myfasoul.days}  ",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                        fontFamily: "cairo",
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  width: double.infinity,
                  child:
                      myButton('اضغط على الصورة لمشاهدة نجوم الفصل ', () {})),
            ]),
      ),
    );
  }
}
