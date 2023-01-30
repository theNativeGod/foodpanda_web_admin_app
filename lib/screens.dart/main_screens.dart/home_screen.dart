import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String timeText = "";
  String dateText = "";

  String formatCurrentLiveTime(DateTime time) {
    return DateFormat("hh:mm:ss a").format(time);
  }

  String formatCurrentDate(DateTime date) {
    return DateFormat("dd MMMM, yyyy").format(date);
  }

  getCurrentLiveTime() {
    final DateTime timeNow = DateTime.now();
    final String liveTime = formatCurrentLiveTime(timeNow);
    final String liveDate = formatCurrentDate(timeNow);

    if (this.mounted) {
      setState(() {
        timeText = liveTime;
        dateText = liveDate;
      });
    }
  }

  @override
  void initState() {
    timeText = formatCurrentLiveTime(DateTime.now());
    dateText = formatCurrentDate(DateTime.now());
    Timer.periodic(const Duration(seconds: 1), (timer) {
      getCurrentLiveTime();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Colors.amber,
              Colors.red,
            ],
            begin: FractionalOffset(0, 0),
            end: FractionalOffset(1, 0),
            stops: [0, 1],
            tileMode: TileMode.clamp,
          )),
        ),
        title: Text(
          'FoodPanda Web Admin Panel',
          style: TextStyle(
            letterSpacing: 3,
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            //width: MediaQuery.of(context).size.width,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        '$timeText\n$dateText',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          letterSpacing: 3,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ElevatedButton.icon(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.person_add,
                          color: Colors.white,
                        ),
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(40.0),
                          backgroundColor: Colors.amber,
                        ),
                        label: Text(
                          'Activate Users\nAccounts'.toUpperCase(),
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            letterSpacing: 3,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      ElevatedButton.icon(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.block_flipped,
                          color: Colors.white,
                        ),
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(40.0),
                          backgroundColor: Colors.red,
                        ),
                        label: Text(
                          'Block Users\nAccounts'.toUpperCase(),
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            letterSpacing: 3,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton.icon(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.person_add,
                          color: Colors.white,
                        ),
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(40.0),
                          backgroundColor: Colors.red,
                        ),
                        label: Text(
                          'Activate Sellers\nAccounts'.toUpperCase(),
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            letterSpacing: 3,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      ElevatedButton.icon(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.block_flipped,
                          color: Colors.white,
                        ),
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(40.0),
                          backgroundColor: Colors.amber,
                        ),
                        label: Text(
                          'Block Sellers\nAccounts'.toUpperCase(),
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            letterSpacing: 3,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton.icon(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.person_add,
                          color: Colors.white,
                        ),
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(40.0),
                          backgroundColor: Colors.red,
                        ),
                        label: Text(
                          'Activate Riders\nAccounts'.toUpperCase(),
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            letterSpacing: 3,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      ElevatedButton.icon(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.block_flipped,
                          color: Colors.white,
                        ),
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(40.0),
                          backgroundColor: Colors.amber,
                        ),
                        label: Text(
                          'Block Riders\nAccounts'.toUpperCase(),
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            letterSpacing: 3,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    // width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 20.0),
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.logout,
                          color: Colors.white,
                        ),
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(40.0),
                          backgroundColor: Colors.amber,
                        ),
                        label: Text(
                          'Logout'.toUpperCase(),
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            letterSpacing: 3,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
