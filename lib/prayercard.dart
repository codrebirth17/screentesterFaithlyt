import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrayerCard extends StatefulWidget {
  const PrayerCard({super.key});

  @override
  State<PrayerCard> createState() => _PrayerCardState();
}

class _PrayerCardState extends State<PrayerCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("Assets/prayerbackground.jpg"))),
        height: 200.h,
        width: 361.w,
        padding: const EdgeInsets.fromLTRB(17.5, 20.5, 8, 0),
        child: Column(
          children: [
            const Row(
              //17, Jumada-Al-Ukhra, 1445AH
              children: [
                IslamicDateNextPrayer(),
              ],
            ),
            Row(
//isha
              children: [
                const PrayerTime(),
                SizedBox(
                  width: 74.w,
                ),
                const DateLocation()
              ],
            ),
            SizedBox(
              height: 33.5.w,
            ),
            const LinearIndicatorPrayerTime(),
          ],
        ));
  }
}

class IslamicDateNextPrayer extends StatefulWidget {
  const IslamicDateNextPrayer({super.key});

  @override
  State<IslamicDateNextPrayer> createState() => _IslamicDateNextPrayerState();
}

class _IslamicDateNextPrayerState extends State<IslamicDateNextPrayer> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30.h,
      width: 150.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(children: [
            const Icon(Icons.calendar_month,
                color: Color(0xffFBE555), size: 16),
            SizedBox(
              width: 7.w,
            ),
            Text("17, Jumada-Al-Ukhra, 1445AH",
                style: TextStyle(
                    fontSize: 9.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.white)),
            // IconButton(onPressed: null, icon: Icon(Icons.speaker_group_sharp)),
          ]),
          const SizedBox(
            height: 2,
          ),
          Row(
            children: [
              SizedBox(
                width: 24.w,
              ),
              Text("Next : Fajr in -6:10hrs",
                  style: TextStyle(
                      fontSize: 9.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.white)),
            ],
          ),
        ],
      ),
    );
  }
}

class DateLocation extends StatefulWidget {
  const DateLocation({super.key});

  @override
  State<DateLocation> createState() => _DateLocationState();
}

class _DateLocationState extends State<DateLocation> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 175.w,
      child: Column(children: [
        Row(children: [
          const Icon(
            size: 24,
            Icons.calendar_month,
            color: Color(0xffFBE555),
          ),
          SizedBox(
            width: 10.w,
          ),
          Text("Fri 29 December 2023",
              style: TextStyle(
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w600,
                  color: Colors.white))
        ]),
        SizedBox(
          height: 16.h,
        ),
        Row(
          children: [
            const Icon(Icons.location_on, color: Color(0xffFBE555)),
            SizedBox(
              width: 10.w,
            ),
            Text("Pune , Maharashtra",
                style: TextStyle(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.white))
          ],
        )
      ]),
    );
  }
}

class PrayerTime extends StatefulWidget {
  const PrayerTime({super.key});

  @override
  State<PrayerTime> createState() => _PrayerTimeState();
}

class _PrayerTimeState extends State<PrayerTime> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 11, 0, 0),
      width: 87.w,
      child: Column(children: [
        Text("Isha",
            style: TextStyle(
                fontSize: 33.sp,
                fontWeight: FontWeight.w600,
                color: Colors.white)),
        Text("6:10",
            style: TextStyle(
                fontSize: 23.sp,
                fontWeight: FontWeight.w600,
                color: Colors.white))
      ]),
    );
  }
}

class LinearIndicatorPrayerTime extends StatefulWidget {
  const LinearIndicatorPrayerTime({super.key});

  @override
  State<LinearIndicatorPrayerTime> createState() =>
      _LinearIndicatorPrayerTimeState();
}

class _LinearIndicatorPrayerTimeState extends State<LinearIndicatorPrayerTime>
    with TickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    controller = AnimationController(
      /// [AnimationController]s can be created with `vsync: this` because of
      /// [TickerProviderStateMixin].
      vsync: this,
      duration: const Duration(seconds: 5),
    )..addListener(() {
        setState(() {});
      });
    controller.repeat(reverse: true);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 329.w,
      margin: const EdgeInsets.fromLTRB(0, 0, 7, 17),
      child: LinearProgressIndicator(
        minHeight: 9.h,
        backgroundColor: const Color(0xff8C8C8C),
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
    );
  }
}
