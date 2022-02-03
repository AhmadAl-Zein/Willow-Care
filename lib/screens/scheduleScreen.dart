// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:willowcare/widgets/cardSchedule.dart';

class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({Key? key}) : super(key: key);

  @override
  _ScheduleScreenState createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  int selected = 0;
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
              SizedBox(
                height: 22,
              ),
              Text(
                "This Week",
                style: TextStyle(
                  color: HexColor("#151534"),
                  fontSize: 12,
                ),
              ),
              SizedBox(
                height: 22,
              ),
              Expanded(
                flex: 9,
                child: ListView.builder(
                  itemCount: 5, //5 is only an example, but it should
                  itemBuilder: (ctx, index) {
                    return CardSchedule("Ahmad Al-Zein", "Software Dev."); //for Example only
                  },
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          margin: EdgeInsets.only(
            left: 24,
            right: 24,
            bottom: 29,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
          ),
          child: BottomNavigationBar(
            backgroundColor: Colors.white,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: HexColor("#0F5699"),
            unselectedItemColor: HexColor("#9898AE"),
            currentIndex: 0,
            elevation: 0,
            items: [
              BottomNavigationBarItem(
                  icon: SvgPicture.asset("assets/images/home_2.svg"),
                  title: Text('home')),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset("assets/images/schedule.svg"),
                  title: Text('Schedule')),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset("assets/images/message.svg"),
                  title: Text("messages")),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset("assets/images/more.svg"),
                  title: Text('more')),
            ],
          ),
        ),
      ),
    );
  }
}
