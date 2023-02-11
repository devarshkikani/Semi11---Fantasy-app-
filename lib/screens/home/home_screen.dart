import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:semi11/constant/default_images.dart';
import 'package:semi11/constant/sizedbox.dart';
import 'package:semi11/screens/home/home_screen_controller.dart';
import 'package:semi11/theme/colors.dart';
import 'package:semi11/theme/text_style.dart';

class HomeScreen extends GetView<HomeScreenController> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: light,
        appBar: AppBar(
          leadingWidth: 35,
          elevation: 0,
          backgroundColor: light,
          leading: InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Image.asset(
                hamburgerMenu,
                color: dark,
              ),
            ),
          ),
          title: Text(
            'Semi 11',
            style: mediumText20.copyWith(
              color: primary,
            ),
          ),
          actions: <Widget>[
            const Icon(
              Icons.notifications_sharp,
              color: secondary,
            ),
            width10,
            const CircleAvatar(
              maxRadius: 16,
              backgroundImage: AssetImage(authBackground),
            ),
            width10,
          ],
          bottom: TabBar(
            labelColor: primary,
            dividerColor: secondary,
            indicatorColor: primary,
            unselectedLabelColor: secondary,
            automaticIndicatorColorAdjustment: true,
            labelStyle: mediumText16,
            tabs: const <Tab>[
              Tab(
                icon: Text(
                  'Upcoming',
                ),
              ),
              Tab(
                icon: Text(
                  'Live',
                ),
              ),
              Tab(
                icon: Text(
                  'Result',
                ),
              ),
            ],
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

  Widget upcomingMatch() {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Pick an Upcoming match',
            style: regularText14.copyWith(
              color: secondary,
            ),
          ),
          height15,
          Expanded(
            child: listOfUpcomingList(),
          ),
        ],
      ),
    );
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
