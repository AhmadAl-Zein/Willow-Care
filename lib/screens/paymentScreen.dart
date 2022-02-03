// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:toggle_switch/toggle_switch.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#FAFAFA"),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          "Payment",
          style: TextStyle(
            fontSize: 18,
            color: HexColor("#151534"),
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: HexColor("#151534"),
          ),
          onPressed: () {},
        ),
        elevation: 0,
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              flex: 9,
              child: Container(
                margin: EdgeInsets.only(
                  top: 37,
                  left: 24,
                  right: 24,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "For Payment :",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: HexColor("#151534")),
                        ),
                        Text(
                          "20.60 LEU",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: HexColor("#151534")),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Text("including taxis (3% )",
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w300,
                          )),
                    ),
                    SizedBox(
                      height: 31,
                    ),
                    Container(
                      /* decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(16, 128, 128, 128),
                            spreadRadius: 5,
                            blurRadius: 24,
                            offset: Offset(0, 12),
                          ),
                        ],
                      ), */
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selected = 0;
                              });
                            },
                            child: Container(
                              height: 58,
                              width: 164,
                              decoration: BoxDecoration(
                                  color: selected == 0
                                      ? HexColor("#52B1E4")
                                      : Colors.white,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(8),
                                    bottomLeft: Radius.circular(8),
                                  )),
                              child: Center(
                                  child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                    "assets/images/credit.svg",
                                    color: selected == 0
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "Credit Card",
                                    style: TextStyle(
                                      color: selected == 0
                                          ? Colors.white
                                          : Colors.black,
                                    ),
                                  ),
                                ],
                              )),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selected = 1;
                              });
                            },
                            child: Container(
                              height: 58,
                              width: 164,
                              decoration: BoxDecoration(
                                color: selected == 1
                                    ? HexColor("#52B1E4")
                                    : Colors.white,
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(8),
                                  bottomRight: Radius.circular(8),
                                ),
                              ),
                              child: Center(
                                  child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                    "assets/images/paypal.svg",
                                    color: selected == 1
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "PayPal",
                                    style: TextStyle(
                                      color: selected == 1
                                          ? Colors.white
                                          : Colors.black,
                                    ),
                                  ),
                                ],
                              )),
                            ),
                          ),
                        ],
                      ), //Toggle Switch
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Credit Card Number :",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding:
                              EdgeInsets.only(top: 18, bottom: 18, left: 44),
                          hintText: "0000 0000 0000 0000",
                          fillColor: Colors.white,
                          hintStyle: TextStyle(
                            color: HexColor("#9898AE"),
                            fontWeight: FontWeight.w300,
                            fontSize: 14,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 1.5, color: Color(0xFFF4F4F4)),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 1.5, color: Color(0xFFF4F4F4)),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    Text(
                      "Cardholder Name :",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding:
                              EdgeInsets.only(top: 18, bottom: 18, left: 44),
                          hintText: "ex. Mikel Jhon",
                          fillColor: Colors.white,
                          hintStyle: TextStyle(
                            color: HexColor("#9898AE"),
                            fontWeight: FontWeight.w300,
                            fontSize: 14,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 1.5, color: Color(0xFFF4F4F4)),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 1.5, color: Color(0xFFF4F4F4)),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 9,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Expiry Date :",
                              style: TextStyle(fontSize: 12),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: 155,
                              child: TextField(
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(
                                      top: 17,
                                      bottom: 19,
                                      left: 25,
                                      right: 33.5),
                                  hintText: "MM  /  YYYY",
                                  fillColor: Colors.white,
                                  hintStyle: TextStyle(
                                    color: HexColor("#9898AE"),
                                    fontWeight: FontWeight.w300,
                                    fontSize: 14,
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        width: 1.5, color: Color(0xFFF4F4F4)),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        width: 1.5, color: Color(0xFFF4F4F4)),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "CVV Code :",
                              style: TextStyle(fontSize: 12),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: 155,
                              child: TextField(
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(
                                      top: 17,
                                      bottom: 19,
                                      left: 25,
                                      right: 33.5),
                                  hintText: "3 - 4 digits",
                                  fillColor: Colors.white,
                                  hintStyle: TextStyle(
                                    color: HexColor("#9898AE"),
                                    fontWeight: FontWeight.w300,
                                    fontSize: 14,
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        width: 1.5, color: Color(0xFFF4F4F4)),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        width: 1.5, color: Color(0xFFF4F4F4)),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 113,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        '''We will send you the bill to your email address
after the successful payment.''',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 12,
                          color: HexColor("#9898AE"),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  height: 86,
                  color: HexColor("#0F5699"),
                  child: Center(
                    child: Text(
                      "Pay Now",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
