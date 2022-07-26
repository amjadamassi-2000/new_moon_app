import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_moon_app/components/const.dart';
import 'package:new_moon_app/data/najomdata.dart';
import 'package:new_moon_app/model/najom.dart';
import 'package:new_moon_app/screens/najom.dart';

class NajomGrid extends StatefulWidget {
  final id;

  NajomGrid(this.id);

  @override
  State<NajomGrid> createState() => _NajomGridState();
}

class _NajomGridState extends State<NajomGrid> {
  List<dynamic> mynajom;

  getnajom() {
    mynajom = najom_data.where((element) {
      return element.id == widget.id;
    }).toList();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getnajom();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: test2,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          "النجوم ",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.sp,
            letterSpacing: 3,
            fontWeight: FontWeight.bold,
            fontFamily: "cairo",
          ),
        ),
      ),
      backgroundColor: test2,
      body: ListView.builder(
          itemCount: mynajom.length,
          itemBuilder: (context, index) {
            return najom(mynajom[index]);
          }),
    );
  }
}
