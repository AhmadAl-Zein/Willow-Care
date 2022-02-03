// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';

class DoctorInfoScreen extends StatefulWidget {
  const DoctorInfoScreen({Key? key}) : super(key: key);

  @override
  _DoctorInfoScreenState createState() => _DoctorInfoScreenState();
}

class _DoctorInfoScreenState extends State<DoctorInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: HexColor("#FAFAFA"),
        body: Column(
          children: [
            Container(
              height: 236,
              width: double.infinity,
              child: Stack(
                children: [
                  Positioned(
                    child: ClipPath(
                      clipper: Clipper(),
                      child: Container(
                        height: 156.5,
                        color: HexColor("#0F5699"),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 48,
                    right: 24,
                    left: 24,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset(
                          "assets/images/back.svg",
                          width: 24,
                          height: 24,
                        ),
                        Row(
                          children: [
                            SvgPicture.asset(
                              "assets/images/calendar_2.svg",
                              width: 24,
                              height: 24,
                            ),
                            SizedBox(
                              width: 16,
                            ),
                            SvgPicture.asset(
                              "assets/images/notification.svg",
                              width: 24,
                              height: 24,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 106,
                    right: 24,
                    child: Container(
                      height: 114,
                      width: 108,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.red,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 155,
                    left: 24,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Doctor Eva Reid",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            SvgPicture.asset(
                              "assets/images/verified.svg",
                              width: 17,
                              height: 16,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          width: 200,
                          child: FittedBox(
                            child: Text(
                              "Specialist Dermatology and laser",
                                textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            SvgPicture.asset(
                              "assets/images/star.svg",
                              width: 12,
                              height: 12,
                            ),
                            SvgPicture.asset(
                              "assets/images/star.svg",
                              width: 12,
                              height: 12,
                            ),
                            SvgPicture.asset(
                              "assets/images/star.svg",
                              width: 12,
                              height: 12,
                            ),
                            SvgPicture.asset(
                              "assets/images/star.svg",
                              width: 12,
                              height: 12,
                            ),
                            SvgPicture.asset(
                              "assets/images/star.svg",
                              width: 12,
                              height: 12,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 22,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 53),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Profile View",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                          color: HexColor("#071827"),
                        ),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        "0",
                        style:
                            TextStyle(color: HexColor("#52B1E4"), fontSize: 18),
                      )
                    ],
                  ),
                  VerticalDivider(
                    color: HexColor("#D8D8D8"),
                    thickness: 0.5,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Patients",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                          color: HexColor("#071827"),
                        ),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        "0",
                        style:
                            TextStyle(color: HexColor("#52B1E4"), fontSize: 18),
                      )
                    ],
                  ),
                  VerticalDivider(color: HexColor("#D8D8D8"), thickness: 3,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Experience",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                          color: HexColor("#071827"),
                        ),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        "0",
                        style:
                            TextStyle(color: HexColor("#52B1E4"), fontSize: 18),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Container(
              height: 50,
              margin: EdgeInsets.symmetric(horizontal: 24),
              decoration: BoxDecoration(
                color: HexColor("#E2E3ED"),
                borderRadius: BorderRadius.circular(4),
              ),
              child: TabBar(
                indicator: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(7),
                ),
                tabs: [
                  Tab(text: "Doctor Info"),
                  Tab(text: "Work Info"),
                ],
                padding: EdgeInsets.symmetric(
                  vertical: 4,
                  horizontal: 4,
                ),
                labelColor: HexColor("#0F5699"),
                unselectedLabelColor: HexColor("#343654"),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 24),
              padding: EdgeInsets.all(16),
              height: 64,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  SvgPicture.asset(
                    "assets/images/info.svg",
                    width: 32,
                    height: 32,
                  ),
                  SizedBox(
                    width: 27,
                  ),
                  Text(
                    "Basic Information",
                    style: TextStyle(fontSize: 14),
                  ),
                  Spacer(),
                  FlatButton(
                    onPressed: () {},
                    minWidth: 56,
                    height: 23,
                    color: Color.fromRGBO(82, 177, 228, 0.1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      "Edit",
                      style:
                          TextStyle(fontSize: 10, color: HexColor("#52B1E4")),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                  color: HexColor("#151534"),
                ),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 24),
              padding: EdgeInsets.all(16),
              height: 64,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  SvgPicture.asset(
                    "assets/images/certificate.svg",
                    width: 32,
                    height: 32,
                  ),
                  SizedBox(
                    width: 27,
                  ),
                  Text(
                    "Certificates",
                    style: TextStyle(fontSize: 14),
                  ),
                  Spacer(),
                  FlatButton(
                    onPressed: () {},
                    minWidth: 56,
                    height: 23,
                    color: Color.fromRGBO(82, 177, 228, 0.1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      "Edit",
                      style:
                          TextStyle(fontSize: 10, color: HexColor("#52B1E4")),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  physics: ClampingScrollPhysics(),
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (ctx, index) {
                    return Container(
                      margin:
                          EdgeInsets.only(right: 16, left: index == 0 ? 24 : 0),
                      width: 120,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          width: 2,
                          color: HexColor("#32738F"),
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: 24,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 24),
              padding: EdgeInsets.all(16),
              height: 64,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  SvgPicture.asset(
                    "assets/images/insurance.svg",
                    width: 32,
                    height: 32,
                  ),
                  SizedBox(
                    width: 27,
                  ),
                  Text(
                    "Insurance companies",
                    style: TextStyle(fontSize: 14),
                  ),
                  Spacer(),
                  FlatButton(
                    onPressed: () {},
                    minWidth: 56,
                    height: 23,
                    color: Color.fromRGBO(82, 177, 228, 0.1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      "Edit",
                      style:
                          TextStyle(fontSize: 10, color: HexColor("#52B1E4")),
                    ),
                  ),
                ],
              ),
            ),

            /* Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: ClampingScrollPhysics(),
                  itemCount: 3,
                  itemBuilder: (ctx, index) {
                    return Container(
                      margin: EdgeInsets.only(bottom: 13, left: 24),
                      child: Text(
                        "Romania Company",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    );
                  },
                ),
              ) */
          ],
        ),
      ),
    );
  }
}

class Clipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0, size.height - 30);
    var controlPoint = Offset(size.width - 72, size.height + 12);
    var endPoint = Offset(size.width, size.height - 25);
    path.quadraticBezierTo(
        controlPoint.dx, controlPoint.dy, endPoint.dx, endPoint.dy);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
