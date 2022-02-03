import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';

class CardSchedule extends StatelessWidget {
  String name;
  String section;
  CardSchedule(this.name, this.section);

  @override
  Widget build(BuildContext context) {
    return Container(
                      margin: EdgeInsets.only(
                        bottom: 16,
                      ),
                      width: 327,
                      height: 200,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 48,
                            margin: EdgeInsets.symmetric(
                              vertical: 16,
                              horizontal: 24,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Eva Reid",
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: HexColor(
                                          "#151534",
                                        ),
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Text(
                                      "Online Consultation",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w300,
                                        color: HexColor(
                                          "#151534",
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                CircleAvatar(
                                  backgroundImage: NetworkImage(""),
                                )
                              ],
                            ),
                          ),
                          Divider(),
                          Container(
                            margin: EdgeInsets.only(
                              top: 14,
                              bottom: 16,
                              left: 24,
                              right: 50,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    SvgPicture.asset(
                                        "assets/images/calendar.svg"),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "November 17, 12:30 PM",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w300,
                                          fontSize: 12),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    SvgPicture.asset(
                                        "assets/images/online.svg"),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "Confirmed",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w300,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              bottom: 16,
                              left: 24,
                              right: 24,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    width: 156,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: HexColor("#0F5699"),
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Start examination",
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    width: 98.75,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: Color.fromRGBO(82, 177, 228, 0.1),
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Reshedule", //It's wrong => Reschedule
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: HexColor("#52B1E4"),
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
  }
}