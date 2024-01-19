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
        CalJuresticContainer()
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
              color: const Color(0xff004F1D),
              size: ScreenUtil().setSp(24),
            )),
        IconButton(
            onPressed: null,
            icon: Icon(
              Icons.share,
              color: const Color(0xff004F1D),
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
      alignment: Alignment.center,
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
              color: const Color(0xff004F1D),
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
      margin: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
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

class ZoharTime extends StatefulWidget {
  const ZoharTime({super.key});

  @override
  State<ZoharTime> createState() => _ZoharTimeState();
}

class _ZoharTimeState extends State<ZoharTime> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 8.h),
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
      margin: EdgeInsets.only(bottom: 8.h),
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
      margin: EdgeInsets.only(bottom: 8.h),
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
        border: Border.all(
            width: 1.5.w,
            color: Color(0xff004F1D),
            strokeAlign: BorderSide.strokeAlignOutside),
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

class CalculationMethod extends StatefulWidget {
  const CalculationMethod({super.key});

  @override
  State<CalculationMethod> createState() => _CalculationMethodState();
}

class _CalculationMethodState extends State<CalculationMethod> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _showCustomDialog(context);
        print("tap1");
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Calculation Method",
              style: TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 8.h,
            ),
            Text(""" University of Islamic
  Sciences, Hyderabad (INTH)
  (18* , 18*)""",
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 11.sp, fontWeight: FontWeight.w400)),
          ],
        ),
      ),
    );
  }
}

void _showCustomDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return CalculationMethodDiaLogBox();
    },
  );
}

class JuristicMethod extends StatefulWidget {
  const JuristicMethod({super.key});

  @override
  State<JuristicMethod> createState() => _JuristicMethodState();
}

class _JuristicMethodState extends State<JuristicMethod> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            "Juristic Method",
            style: TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w400),
          ),
          SizedBox(
            height: 8.h,
          ),
          Text(
            "Hanfia",
            style: TextStyle(fontSize: 11.sp, fontWeight: FontWeight.w400),
          )
        ]),
      ),
    );
  }
}

class CalJuresticContainer extends StatefulWidget {
  const CalJuresticContainer({super.key});

  @override
  State<CalJuresticContainer> createState() => _CalJuresticContainerState();
}

class _CalJuresticContainerState extends State<CalJuresticContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20.h),
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      height: 90.h,
      width: 360.w,
      child: Row(children: [
        CalculationMethod(),
        VerticalDivider(width: 2.w, thickness: 2),
        JuristicMethod()
      ]),
    );
  }
}

enum SingingCharacter { lafayette, jefferson }

class CalculationMethodDiaLogBox extends StatefulWidget {
  const CalculationMethodDiaLogBox({super.key});

  @override
  State<CalculationMethodDiaLogBox> createState() =>
      _CalculationMethodDiaLogBoxState();
}

class _CalculationMethodDiaLogBoxState
    extends State<CalculationMethodDiaLogBox> {
  @override
  Widget build(BuildContext context) {
    var _character;
    return Container(
      width: 300.w,
      height: 600.h,
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      child: Column(children: [
        Text(
          "Calculation Method",
          style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600),
        ),
        ListTile(
          title: const Text('Lafayette'),
          leading: Radio<SingingCharacter>(
            value: SingingCharacter.lafayette,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        )
      ]),
    );
  }
}
