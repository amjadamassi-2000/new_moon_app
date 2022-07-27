import 'package:adhan/adhan.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:location/location.dart';
import 'package:new_moon_app/prayer-time/components/icon_text.dart';
import 'package:new_moon_app/prayer-time/components/waktuSalat.dart';
import 'package:new_moon_app/prayer-time/utils/constants.dart';

class TimesPage extends StatefulWidget {
  final dynamic timesData;
  TimesPage({this.timesData});

  @override
  _TimesPageState createState() => _TimesPageState();
}

class _TimesPageState extends State<TimesPage> {
  String todayTime;
  String imsakTime;
  String fajrTime;
  String duhrTime;
  String asrTime;
  String maghrebTime;
  String aishaTime;
  String sunriseTime;
  String cityName;
  String countryName;
  dynamic data;

  final location = Location();
  String locationError;
  PrayerTimes prayerTimes;
  dynamic fajer = '';
  dynamic Duhur = '';
  dynamic Asr = '';
  dynamic Maghrib = '';
  dynamic Isha = '';
  dynamic time_zone = '';

  @override
  void initState() {
    getLocationData().then((locationData) {
      if (!mounted) {
        return;
      }
      if (locationData != null) {
        setState(() async {
          prayerTimes = await PrayerTimes(
              Coordinates(locationData.latitude, locationData.longitude),
              DateComponents.from(DateTime.now()),
              CalculationMethod.karachi.getParameters());
          fajer = DateFormat.jm().format(prayerTimes.fajr);
          Duhur = DateFormat.jm().format(prayerTimes.dhuhr);
          Asr = DateFormat.jm().format(prayerTimes.asr);
          Maghrib = DateFormat.jm().format(prayerTimes.maghrib);
          Isha = DateFormat.jm().format(prayerTimes.isha);

          setState(() {});
          print(fajer);
        });
      } else {
        setState(() {
          locationError = "Couldn't Get Your Location!";
        });
      }
    });
    //print('${)}');

    super.initState();
  }

  Future<LocationData> getLocationData() async {
    var _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();

      if (!_serviceEnabled) {
        return null;
      }
    }

    var _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.DENIED) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.GRANTED) {
        return null;
      }
    }

    return await location.getLocation();
  }

  @override
  Widget build(BuildContext context) {
    var now = DateTime.now();
    var formatter = DateFormat.yMMMd('ar_SA');
    print(formatter.locale);
    String formatted = formatter.format(now);
    return Scaffold(
        body: Container(
      padding: EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 10.0),
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [color1, color2])),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/');
                },
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
              ),
              Icon(Icons.menu, color: Colors.white)
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            "Prayer Alarms",
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
          Text(
            "Prayer becomes timely",
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
          SizedBox(
            height: 25,
          ),
          SizedBox(
            height: 15,
          ),
          SizedBox(
            height: 15,
          ),
          IconText(
              icon: Icon(
                Icons.calendar_today,
                color: Colors.white,
                size: 15,
              ),
              title: formatted ?? "",
              subTitle: "Today's Date"),
          SizedBox(
            height: 10,
          ),
          Expanded(
            flex: 3,
            child: Container(
              child: ListView(
                children: <Widget>[
                  WaktuSalat(
                    name: "Fajr",
                    time: fajer ?? "",
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  WaktuSalat(
                    name: "Duhur",
                    time: Duhur ?? "",
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  WaktuSalat(
                    name: "Asr",
                    time: Asr ?? "",
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  WaktuSalat(
                    name: "Maghrib",
                    time: Maghrib ?? "",
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  WaktuSalat(
                    name: "Isha",
                    time: Isha ?? "",
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    ));
  }
}
