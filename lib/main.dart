import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_moon_app/provider/dataadmin.dart';
import 'package:new_moon_app/screens/bnb_screens/main_screen.dart';
import 'package:new_moon_app/screens/calender_screen.dart';
import 'package:new_moon_app/screens/splash_screen.dart';
import 'package:provider/provider.dart';
import 'components/calendar.dart';
import 'cubit/global_cubit.dart';
import 'cubit/global_states.dart';
import 'test_screen.dart';
import 'package:http/http.dart' as http;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  //DatabaseReference _ref = FirebaseDatabase.instance.reference().child('home');
  // final url = 'https://moonapp-f63aa-default-rtdb.firebaseio.com/product.json';
  // final uri = Uri.parse(url);
  // http.post(uri,
  //     body: json.encode({'id': 1, 'title': 'myTitle', 'body': 'mybody'}));
  // _ref.push().set({'id': 10});

  runApp(
    ChangeNotifierProvider<Products>(
      create: (_) => Products(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: () {
        return MultiBlocProvider(
            providers: [
              BlocProvider(create: (context) => GlobalCubit()),
            ],
            child: BlocConsumer<GlobalCubit, GlobalStates>(
              listener: (context, state) {},
              builder: (context, state) {
                return MaterialApp(
                  debugShowCheckedModeBanner: false,
                  home: SplashScreen(),
                );
              },
            ));
      },
    );
  }
}
