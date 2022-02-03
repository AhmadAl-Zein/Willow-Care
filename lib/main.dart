import 'package:flutter/material.dart';
import 'package:willowcare/screens/doctorInfoScreen.dart';
import 'package:willowcare/screens/noAvailableScheduleScreen.dart';
import 'package:willowcare/screens/paymentScreen.dart';
import 'package:willowcare/screens/scheduleScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Willow Care',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: "SF Pro Text",
      ),
      debugShowCheckedModeBanner: false,
      home: PaymentScreen(),
    );
  }
}
