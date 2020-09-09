import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//câu thần chú: Constraints go down. Sizes go up. Parent set position.

class CommonWidget extends StatelessWidget {

  double width = 0;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 16, right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            container,
            viewInfo,
            space1,
            textAboutTitle,
            space2,
            textAboutDoctor,
            space3,
            addressArea,
            space3,
            textActivity,
            space3,
            viewButton,
            space3,
          ],
        ),
      ),
    );
  }


  get container => SizedBox(
    height: 26,
  );

  get viewInfo => Row(
    children: <Widget>[
      Image.asset("assets/images/doctor_pic2.png", height: 220),
      SizedBox(
        width: 20,
      ),
      Container(
        width: width - 250,
        height: 220,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Dr. Stefeni Albert",
              style: TextStyle(fontSize: 32),
            ),
            Text(
              "Heart Speailist",
              style: TextStyle(fontSize: 19, color: Colors.grey),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              children: <Widget>[
                Container(
                  width: 40,
                  height: 40,
                  padding: EdgeInsets.all(10),
                  decoration: new BoxDecoration(
                      color: Color(0xffFFECDD),
                      borderRadius:
                      new BorderRadius.all(Radius.circular(16))),
                  child: Image.asset('assets/images/email.png'),
                ),
                Container(
                  width: 40,
                  height: 40,
                  padding: EdgeInsets.all(12),
                  decoration: new BoxDecoration(
                      color: Color(0xffFEF2F0),
                      borderRadius:
                      new BorderRadius.all(Radius.circular(16))),
                  margin: EdgeInsets.fromLTRB(16.0, 0, 0, 0),
                  child: Image.asset('assets/images/call.png'),
                ),
                Container(
                  width: 40,
                  height: 40,
                  padding: EdgeInsets.all(12),
                  decoration: new BoxDecoration(
                      color: Color(0xffEBECEF),
                      borderRadius:
                      new BorderRadius.all(Radius.circular(16))),
                  margin: EdgeInsets.fromLTRB(16.0, 0, 0, 0),
                  child: Image.asset('assets/images/video_call.png'),
                ),
              ],
            )
          ],
        ),
      ),
    ],
  );

  get space1 => SizedBox(
  height: 26,
  );

  get textAboutTitle => Text(
    "About",
    style: TextStyle(fontSize: 22),

  );

  get space2 => SizedBox(
    height: 16,
  );

  get textAboutDoctor => Text(
    "Dr. Stefeni Albert is a cardiologist in Nashville & affiliated with multiple hospitals in the  area.He received his medical degree from Duke University School of Medicine and has been in practice for more than 20 years. ",
    style: TextStyle(color: Colors.grey, fontSize: 16),

  );

  get space3 => SizedBox(
    height: 24,
  );

  get addressArea => Row(
    children: <Widget>[
      Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Image.asset("assets/images/mappin.png"),
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Address",
                    style: TextStyle(
                        color: Colors.black87.withOpacity(0.7),
                        fontSize: 20),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Container(
                      width: width - 268,
                      child: Text(
                        "House # 2, Road # 5, Green Road Dhanmondi, Dhaka, Bangladesh",
                        style: TextStyle(color: Colors.grey),
                      ))
                ],
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: <Widget>[
              Image.asset("assets/images/clock.png"),
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Daily Practict",
                    style: TextStyle(
                        color: Colors.black87.withOpacity(0.7),
                        fontSize: 20),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Container(
                      width: width - 268,
                      child: Text(
                        '''Monday - Friday
Open till 7 Pm''',
                        style: TextStyle(color: Colors.grey),
                      ))
                ],
              )
            ],
          )
        ],
      ),
      Image.asset(
        "assets/images/map.png",
        width: 180,
      )
    ],
  );

  get textActivity => Text(
    "Activity",
    style: TextStyle(
        color: Color(0xff242424),
        fontSize: 28,
        fontWeight: FontWeight.w600),
  );

  get viewButton => Row(
    children: <Widget>[
      Expanded(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 24,horizontal: 16),
          decoration: BoxDecoration(
              color: Color(0xffFBB97C),
              borderRadius: BorderRadius.circular(20)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Color(0xffFCCA9B),
                      borderRadius: BorderRadius.circular(16)
                  ),
                  child: Image.asset("assets/images/list.png")),
              SizedBox(
                width: 16,
              ),
              Container(
                width: width/2 - 130,
                child: Text(
                  "List Of Schedule",
                  style: TextStyle(color: Colors.white,
                      fontSize: 16),
                ),
              )
            ],
          ),
        ),
      ),
      SizedBox(width: 16,),
      Expanded(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 24,horizontal: 16),
          decoration: BoxDecoration(
              color: Color(0xffA5A5A5),
              borderRadius: BorderRadius.circular(20)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Color(0xffBBBBBB),
                      borderRadius: BorderRadius.circular(16)
                  ),
                  child: Image.asset("assets/images/list.png")),
              SizedBox(
                width: 16,
              ),
              Container(
                width: width/2 - 130,
                child: Text(
                  "Doctor's Daily Post",
                  style: TextStyle(color: Colors.white,
                      fontSize: 16),
                ),
              )
            ],
          ),
        ),
      ),
    ],
  );
}

