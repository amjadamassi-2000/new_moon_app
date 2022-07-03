import 'package:flutter/material.dart';
import 'package:new_moon_app/components/const.dart';
import 'package:new_moon_app/items/date_item.dart';
import 'package:new_moon_app/items/home_screen_item.dart';




class HomeScreen extends StatefulWidget {

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        backgroundColor: test2,
        body:  Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 50,),


            const Text(
              "منازل الشمس و القمر",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                letterSpacing: 3,
                fontWeight: FontWeight.bold,
                fontFamily: "cairo",
              ),
            ),

            SizedBox(height: 30,),


            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 10),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      DateItem(
                        const Text(
                          "الأحد  -  3/7/2022",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            fontFamily: "cairo",
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      DateItem(   //1443
                        const Text(
                          " الأحد  -  3/12/1443",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            fontFamily: "cairo",
                          ),
                        ),
                      ),
                    ],
                  ),

                  Column(
                    children: [
                      DateItem(
                        Padding(
                          padding:  EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "نجم الإكليل",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "cairo",
                                ),
                              ),

                              Icon(Icons.wb_sunny , color: kDarkPlaceholderText,),


                            ],
                          ),
                        ),
                      ),

                      SizedBox(height: 10,),

                      DateItem(
                        Padding(
                          padding:  EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "نجم الإكليل",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "cairo",
                                ),
                              ),
                                        //Crescent
                              Icon(Icons.brightness_3_sharp , color: kDarkPlaceholderText,),


                            ],
                          ),
                        ),
                      ),

                    ],
                  ),
                ],
              ),
            ),

          SizedBox(height: 30,),

            GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.symmetric(horizontal: 18)
                    .add(EdgeInsets.only(bottom:20)),

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
                itemCount: 4,
                itemBuilder: (context, index) {
                  return HomeScreenItem();
                }
            ),
          ],
        ),

      ),
    );
  }
}
