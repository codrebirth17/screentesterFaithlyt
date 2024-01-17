import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.center,
                    end: Alignment.bottomCenter,
                    colors: [Color(0xff00DC37), Color(0xff4CFF33)])),
            padding: const EdgeInsets.all(16),
            height: 82.h,
            width: 360.w,
            child: const ListTile(
              leading: CircleAvatar(
                  backgroundImage: AssetImage("Assets/profile.png")),
              title: Text(
                "Uzair ibn-e-Khizr KhanS",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ),
              subtitle: Text(
                "7890xxxxxxS",
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
              ),
            )),
        const Row(
          children: [
            Premium(),
            NamazSilent(),
          ],
        ),
        const QuestionAnswer(),
        const Languages(),
        const Settings(),
        const Contact(),
        const Review(),
        const Share()
      ],
    );
  }
}

class Premium extends StatelessWidget {
  const Premium({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("premuim Tap!");
      },
      child: Container(
        margin: const EdgeInsets.fromLTRB(16, 16, 14, 16),
        width: 150.w,
        height: 80.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(width: 2, color: const Color(0xffD9D9D9))),
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Image.asset(
              "Assets/premium.png",
              height: 24.h,
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              "Premium",
              style: TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
    );
  }
}

class NamazSilent extends StatelessWidget {
  const NamazSilent({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("Namaz Silent Tap!");
      },
      child: Container(
        margin: const EdgeInsets.fromLTRB(14, 16, 16, 16),
        width: 150.w,
        height: 80.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(width: 2, color: const Color(0xffD9D9D9))),
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Image.asset(
              "Assets/notifications_off.png",
              height: 24.h,
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              "Namaz Silent",
              style: TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
    );
  }
}

class QuestionAnswer extends StatelessWidget {
  const QuestionAnswer({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print("Question Aswer Tap!");
      },
      child: Container(
        margin: EdgeInsets.only(top: 32.h),
        width: 300.w,
        height: 48.h,
        child: Column(children: [
          Row(
            children: [
              const Icon(
                Icons.quiz,
                color: Color(0xff004F1D),
              ),
              SizedBox(
                width: 12.w,
              ),
              Text(
                "Question Answers",
                style: TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w400),
              )
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Container(
            height: 2.h,
            width: 300.w,
            color: const Color(0xffD9D9D9),
          )
        ]),
      ),
    );
  }
}

class Languages extends StatelessWidget {
  const Languages({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print("Languages Tap!");
      },
      child: Container(
        width: 300.w,
        height: 48.h,
        margin: const EdgeInsets.only(top: 20),
        child: Column(children: [
          Row(
            children: [
              const Icon(
                Icons.language,
                color: Color(0xff004F1D),
              ),
              SizedBox(
                width: 12.w,
              ),
              Text(
                "Languages",
                style: TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w400),
              )
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Container(
            height: 2.h,
            width: 300.w,
            color: const Color(0xffD9D9D9),
          )
        ]),
      ),
    );
  }
}

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print("settings Tap!");
      },
      child: Container(
        width: 300.w,
        height: 48.h,
        margin: const EdgeInsets.only(top: 20),
        child: Column(children: [
          Row(
            children: [
              const Icon(
                Icons.settings,
                color: Color(0xff004F1D),
              ),
              SizedBox(
                width: 12.w,
              ),
              Text(
                "Settings",
                style: TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w400),
              )
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Container(
            height: 2.h,
            width: 300.w,
            color: const Color(0xffD9D9D9),
          )
        ]),
      ),
    );
  }
}

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print("Contact Tap!");
      },
      child: Container(
        width: 300.w,
        height: 48.h,
        margin: const EdgeInsets.only(top: 20),
        child: Column(children: [
          Row(
            children: [
              const Icon(
                Icons.phone,
                color: Color(0xff004F1D),
              ),
              SizedBox(
                width: 12.w,
              ),
              Text(
                "Contact Us",
                style: TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w400),
              )
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Container(
            height: 2.h,
            width: 300.w,
            color: const Color(0xffD9D9D9),
          )
        ]),
      ),
    );
  }
}

class Review extends StatelessWidget {
  const Review({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print("Review Tap!");
      },
      child: Container(
        width: 300.w,
        height: 48.h,
        margin: const EdgeInsets.only(top: 20),
        child: Column(children: [
          Row(
            children: [
              const Icon(
                Icons.star_border,
                color: Color(0xff004F1D),
              ),
              SizedBox(
                width: 12.w,
              ),
              Text(
                "Review",
                style: TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w400),
              )
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Container(
            height: 2.h,
            width: 300.w,
            color: const Color(0xffD9D9D9),
          )
        ]),
      ),
    );
  }
}

class Share extends StatelessWidget {
  const Share({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print("share Tap!");
      },
      child: Container(
        width: 300.w,
        height: 48.h,
        margin: const EdgeInsets.only(top: 20),
        child: Column(children: [
          Row(
            children: [
              const Icon(
                Icons.share,
                color: Color(0xff004F1D),
              ),
              SizedBox(
                width: 12.w,
              ),
              Text(
                "Share",
                style: TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w400),
              )
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          // Container(
          //   height: 2.h,
          //   width: 300.w,
          //   color: const  Color(0xffD9D9D9),
          // )
        ]),
      ),
    );
  }
}
