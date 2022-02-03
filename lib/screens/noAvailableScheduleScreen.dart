// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';

class NoAvailableScreen extends StatelessWidget {
  const NoAvailableScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: HexColor("#FAFAFA"),
        appBar: AppBar(
          leading: IconButton(
            icon: SvgPicture.asset(
              "assets/images/drawer.svg",
              width: 18,
              height: 12,
            ),
            onPressed: () {},
          ),
          title: Text(
            "Schedule",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                "assets/images/settings.svg",
                width: 24,
                height: 24,
              ),
            ),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 50,
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
                    Tab(text: "Upcoming"),
                    Tab(text: "Accepted"),
                  ],
                  padding: EdgeInsets.symmetric(
                    vertical: 4,
                    horizontal: 4,
                  ),
                  labelColor: HexColor("#52B1E4"),
                  unselectedLabelColor: HexColor("#343654"),
                ),
              ),
              SizedBox(height: 200,),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset("assets/images/calendar_4.svg"),
                    SizedBox(
                      height: 22,
                    ),
                    Text(
                      "No Available Bookings",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
