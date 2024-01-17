import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QazaGridView extends StatefulWidget {
  const QazaGridView({super.key});

  @override
  State<QazaGridView> createState() => _QazaGridViewState();
}

class _QazaGridViewState extends State<QazaGridView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20)),
          boxShadow: [
            BoxShadow(
              color: Color(0xff008e19),
              offset: Offset(0, 1),
              blurRadius: 15,
              spreadRadius: 0,
            )
          ]),
      margin: const EdgeInsets.fromLTRB(8, 16, 8, 8),
      padding: const EdgeInsets.fromLTRB(36, 16, 36, 16),
      height: 64.h,
      width: 156.w,
      child: Row(children: [
        Image.asset("Assets/prayericon.png"),
        SizedBox(
          width: 8.w,
        ),
        Text(
          "Qaza",
          style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.w500,
              color: const Color(0xff090909)),
        ),
      ]),
    );
  }
}





class QazaBuilder extends StatefulWidget {
  const QazaBuilder({super.key});

  @override
  State<QazaBuilder> createState() => _QazaBuilderState();
}

class _QazaBuilderState extends State<QazaBuilder> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 173.h,
      width: 342.w,
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [QazaGridView(), QazaGridView()],
          ),
          Row(
            children: [QazaGridView(), QazaGridView()],
          )
        ],
      ),
    );
  }
}
