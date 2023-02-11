import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:semi11/screens/cricket/cricket_screen_controller.dart';
import 'package:semi11/theme/colors.dart';
import 'package:semi11/theme/text_style.dart';

class CricketScreen extends GetView<CricketScreenController> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: light,
        appBar: PreferredSize(
          preferredSize: Size(Get.width, 70),
          child: Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 10,
            ),
            decoration: BoxDecoration(
              color: secondary.withOpacity(0.2),
              borderRadius: BorderRadius.circular(10),
            ),
            child: TabBar(
              indicatorSize: TabBarIndicatorSize.label,
              padding: const EdgeInsets.symmetric(vertical: 8),
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: primary,
              ),
              labelColor: whiteColor,
              indicatorColor: primary,
              unselectedLabelColor: blackColor,
              automaticIndicatorColorAdjustment: true,
              labelStyle: lightText14.copyWith(
                letterSpacing: 0.5,
              ),
              tabs: <Tab>[
                Tab(
                  child: tabDecoration('Upcoming'),
                ),
                Tab(
                  child: tabDecoration('Live'),
                ),
                Tab(
                  child: tabDecoration('Result'),
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            upcomingMatch(),
            upcomingMatch(),
            upcomingMatch(),
          ],
        ),
      ),
    );
  }

  Widget tabDecoration(String text) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Align(
        alignment: Alignment.center,
        child: Text(
          text,
        ),
      ),
    );
  }

  Widget upcomingMatch() {
    return listOfUpcomingList();
  }

  Widget listOfUpcomingList() {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          height: 100,
          width: 10,
          margin: const EdgeInsets.only(
            bottom: 20,
          ),
          decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const Text(
                    'Indian T20 league',
                  ),
                  const Text(
                    'VS',
                  ),
                  Container(
                    height: 10,
                    decoration: const BoxDecoration(
                      color: primary,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
