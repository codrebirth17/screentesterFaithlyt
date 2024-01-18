import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:screetester/PrayerTime.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const ScreenUtilInit(
      designSize: Size(360, 731),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: SafeArea(
            child: Scaffold(
              // appBar: AppBar(
              //   toolbarHeight: 70,
              //   title: Image.asset(
              //     "Assets/almussad.png",
              //   ),
              //   centerTitle: true,
              //   leading: const IconButton(
              //     onPressed: null,
              //     icon: Icon(Icons.menu),
              //   ),
              //   backgroundColor: const Color(0xffffffff),
              // ),
              body: PrayerTimeScreen(),
            ),
          )),
    );
  }
}
