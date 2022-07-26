import 'package:flutter/material.dart';

import '../components/const.dart';
import '../components/global_componnets.dart';



class EkteranItem extends StatefulWidget {
  String month;
  String day;
  String name;

  EkteranItem(this.month ,  this.day , this.name);


  @override
  _EkteranItemState createState() => _EkteranItemState();
}

class _EkteranItemState extends State<EkteranItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5 , horizontal: 10),
      child: Container(
          decoration: BoxDecoration(
          color: item,
          borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        myRowItem("شهر  /" , "${widget.month}"),
        myRowItem("اليوم /" , "${widget.day}"),
        myRowItem("اسم الإقتران /" , "${widget.name}"),
        ],
        ),
      ),
      ),
    );
  }
}


/*
 myRowItem("شهر  /" , "يناير "),
    myRowItem("اليوم /" , "11 - يناير "),
    myRowItem("اسم الإقتران /" , "الشتاء"),
 */