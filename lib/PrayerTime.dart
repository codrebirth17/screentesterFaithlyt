import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrayerTimeScreen extends StatefulWidget {
  const PrayerTimeScreen({super.key});

  @override
  State<PrayerTimeScreen> createState() => _PrayerTimeScreenState();
}

class _PrayerTimeScreenState extends State<PrayerTimeScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          
          decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 5.0),
                  blurRadius: 5.0,
                  spreadRadius: -3.0,
                  color: Colors.black38,
                ),
              ],
              gradient: LinearGradient(
                  begin: Alignment.center,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xff00DC37), Color(0xff4CFF33)])),
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
          height: 51.h,
          width: 360.w,
          child: Text(
            "Prayer Times",
            style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600),
          ),
        ),
        const Todayshare(),
        const SinglePrayerTile(),
        const SunriseTime(),
        const ZoharTime(),
        const AsarTime(),
        const MagribTime(),
        const IshaTime(),
      ],
    );
  }
}

class Todayshare extends StatelessWidget {
  const Todayshare({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
      width: 328.w,
      height: 44.h,
      child: Row(children: [
        Text(
          "Today",
          style: TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w600),
        ),
        SizedBox(
          width: 183.w,
        ),
        IconButton(
            onPressed: null,
            icon: Icon(
              Icons.calendar_month,
              color: Color(0xff004F1D),
              size: ScreenUtil().setSp(24),
            )),
        IconButton(
            onPressed: null,
            icon: Icon(
              Icons.share,
              color: Color(0xff004F1D),
              size: ScreenUtil().setSp(24),
            ))
      ]),
    );
  }
}

class SinglePrayerTile extends StatefulWidget {
  const SinglePrayerTile({super.key});

  @override
  State<SinglePrayerTile> createState() => _SinglePrayerTileState();
}

class _SinglePrayerTileState extends State<SinglePrayerTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              blurRadius: 15,
              offset: const Offset(0, 4),
              color: const Color(0xff008E19).withOpacity(0.20),
              blurStyle: BlurStyle.outer,
              spreadRadius: 0)
        ],
        borderRadius: BorderRadius.circular(20.r),
      ),
      height: 44.h,
      width: 328.w,
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
      child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
       
          children: [
            Image.asset(
              "Assets/prayericon.png",
              height: 24.h,
              width: 24.w,
            ),
            SizedBox(
              width: 10.w,
            ),
            Text("Fajr",
                style: TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w400)),
            SizedBox(
              width: 138.w,
            ),
            Text(
              "05:51 AM",
              style: TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              width: 10.w,
            ),
            IconButton(
                onPressed: null,
                icon: Icon(
                  size: ScreenUtil().setSp(24),
                  Icons.notifications_none_outlined,
                  color: Color(0xff004F1D),
                ))
          ]),
    );
  }
}

class SunriseTime extends StatefulWidget {
  const SunriseTime({super.key});

  @override
  State<SunriseTime> createState() => _SunriseTimeState();
}

class _SunriseTimeState extends State<SunriseTime> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8.w,vertical: 8.h),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              blurRadius: 15,
              offset: const Offset(0, 4),
              color: const Color(0xff008E19).withOpacity(0.20),
              blurStyle: BlurStyle.outer,
              spreadRadius: 0)
        ],
        borderRadius: BorderRadius.circular(20.r),
      ),
      height: 44.h,
      width: 328.w,
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
      child: Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
        Image.asset(
          "Assets/sunrise.png",
          height: 24.h,
          width: 24.w,
        ),
        SizedBox(
          width: 10.w,
        ),
         Text("Sunrise",
            style: TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w400)),
        SizedBox(
          width: 114.w,
        ),
         Text(
          "05:51 AM",
          style: TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w400),
        ),
        SizedBox(
          width: 10.w,
        ),
         IconButton(
            iconSize:  ScreenUtil().setSp(24),
            onPressed: null,
            icon: const Icon(
              Icons.notifications_none_outlined,
              color: Color(0xff004F1D),
            ))
      ]),
    );
  }
}

class ZoharTime extends StatefulWidget {
  const ZoharTime({super.key});

  @override
  State<ZoharTime> createState() => _ZoharTimeState();
}

class _ZoharTimeState extends State<ZoharTime> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin:  EdgeInsets.only(bottom: 8.h),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              blurRadius: 15,
              offset: const Offset(0, 4),
              color: const Color(0xff008E19).withOpacity(0.20),
              blurStyle: BlurStyle.outer,
              spreadRadius: 0)
        ],
        borderRadius: BorderRadius.circular(20),
      ),
      height: 44.h,
      width: 328.w,
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
      child: Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
        Image.asset(
          "Assets/prayericon.png",
          height: 24.h,
          width: 24.w,
        ),
        SizedBox(
          width: 10.w,
        ),
        Text("Zohar",
            style: TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w400)),
        SizedBox(
          width: 124.w,
        ),
         Text(
          "05:51 AM",
          style: TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w400),
        ),
        SizedBox(
          width: 10.w,
        ),
         IconButton(
            iconSize: ScreenUtil().setSp(24),
            onPressed: null,
            icon: const Icon(
              Icons.notifications_none_outlined,
              color: Color(0xff004F1D),
            ))
      ]),
    );
  }
}

class AsarTime extends StatefulWidget {
  const AsarTime({super.key});

  @override
  State<AsarTime> createState() => _AsarTimeState();
}

class _AsarTimeState extends State<AsarTime> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin:  EdgeInsets.only(bottom: 8.h),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              blurRadius: 15,
              offset: const Offset(0, 4),
              color: const Color(0xff008E19).withOpacity(0.20),
              blurStyle: BlurStyle.outer,
              spreadRadius: 0)
        ],
        borderRadius: BorderRadius.circular(20.r),
      ),
      height: 44.h,
      width: 328.w,
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
      child: Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
        Image.asset(
          "Assets/prayericon.png",
          height: 24.h,
          width: 24.w,
        ),
        SizedBox(
          width: 10.w,
        ),
         Text("Asar",
            style: TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w400)),
        SizedBox(
          width: 131.w,
        ),
         Text(
          "05:51 AM",
          style: TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w400),
        ),
        SizedBox(
          width: 10.w,
        ),
         IconButton(
            iconSize: ScreenUtil().setSp(24),
            onPressed: null,
            icon: const Icon(
              Icons.notifications_none_outlined,
              color: Color(0xff004F1D),
            ))
      ]),
    );
  }
}

class MagribTime extends StatefulWidget {
  const MagribTime({super.key});

  @override
  State<MagribTime> createState() => _MagribTimeState();
}

class _MagribTimeState extends State<MagribTime> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin:  EdgeInsets.only(bottom: 8.h),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              blurRadius: 15,
              offset: const Offset(0, 4),
              color: const Color(0xff008E19).withOpacity(0.20),
              blurStyle: BlurStyle.outer,
              spreadRadius: 0)
        ],
        borderRadius: BorderRadius.circular(20.r),
      ),
      height: 44.h,
      width: 328.w,
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
      child: Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
        Image.asset(
          "Assets/prayericon.png",
          height: 24.h,
          width: 24.w,
        ),
        SizedBox(
          width: 10.w,
        ),
         Text("Magrib",
            style: TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w400)),
        SizedBox(
          width: 116.4.w,
        ),
         Text(
          "05:51 AM",
          style: TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w400),
        ),
        SizedBox(
          width: 10.w,
        ),
         IconButton(
            iconSize: ScreenUtil().setSp(24),
            onPressed: null,
            icon: const Icon(
              Icons.notifications_none_outlined,
              color: Color(0xff004F1D),
            ))
      ]),
    );
  }
}

class IshaTime extends StatefulWidget {
  const IshaTime({super.key});

  @override
  State<IshaTime> createState() => _IshaTimeState();
}

class _IshaTimeState extends State<IshaTime> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 8.h),
      decoration: BoxDecoration(
        // border: Border.all(color: Color(0xff004F1D), width: 1.w),
        boxShadow: [
          BoxShadow(
              blurRadius: 15,
              offset: const Offset(0, 4),
              color: const Color(0xff008E19).withOpacity(0.20),
              blurStyle: BlurStyle.outer,
              spreadRadius: 0)
        ],
        borderRadius: BorderRadius.circular(20),
      ),
      height: 44.h,
      width: 328.w,
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
      child: Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
        Image.asset(
          "Assets/prayericon.png",
          height: 24.h,
          width: 24.w,
        ),
        SizedBox(
          width: 10.w,
        ),
         Text("Isha",
            style: TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w400)),
        SizedBox(
          width: 133.8.w,
        ),
         Text(
          "05:51 AM",
          style: TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w400),
        ),
        SizedBox(
          width: 10.w,
        ),
         IconButton(
            iconSize: ScreenUtil().setSp(24),
            onPressed: null,
            icon: const Icon(
              Icons.notifications_none_outlined,
              color: Color(0xff004F1D),
            ))
      ]),
    );
  }
}
