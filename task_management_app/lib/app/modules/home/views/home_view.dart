import 'dart:html';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:task_management_app/app/utils/widget/header.dart';
import 'package:task_management_app/app/utils/widget/sideBar.dart';
import 'package:task_management_app/app/utils/widget/style/AppColors.dart';

import '../../../utils/widget/upcomingTask.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _drawerKey,
      drawer: const SideBar(),
      backgroundColor: AppColors.primaryBg,
      body: SafeArea(
        child: Row(
          children: [
            !context.isPhone
                ? const Expanded(
                    flex: 2,
                    child: SideBar(),
                  )
                : const SizedBox(),
            Expanded(
              flex: 15,
              child: Column(children: [
                !context.isPhone
                    ? const header()
                    : Container(
                        padding: const EdgeInsets.all(20),
                        child: Row(
                          children: [
                            IconButton(
                              onPressed: () {
                                _drawerKey.currentState!.openDrawer();
                              },
                              icon: const Icon(
                                Icons.menu,
                                color: AppColors.primaryText,
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Column(
                              // mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Task Management',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: AppColors.primaryText),
                                ),
                                Text(
                                  'Manage Task Made Easy With Friends',
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: AppColors.primaryText),
                                ),
                              ],
                            ),
                            const Spacer(),
                            const Icon(
                              Icons.notifications,
                              color: AppColors.primaryText,
                              size: 30,
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              // ignore: prefer_const_constructors
                              child: CircleAvatar(
                                backgroundColor: Colors.amber,
                                radius: 25,
                                foregroundImage: const NetworkImage(
                                  'https://static.independent.co.uk/s3fs-public/thumbnails/image/2017/09/27/08/jennifer-lawrence.jpg?quality=75&width=982&height=726&auto=webp%27',
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                //content / isi page / screen
                Expanded(
                  child: Container(
                    padding: !context.isPhone
                        ? const EdgeInsets.all(50)
                        : const EdgeInsets.all(20),
                    margin: !context.isPhone
                        ? const EdgeInsets.all(10)
                        : const EdgeInsets.all(0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: !context.isPhone
                          ? BorderRadius.circular(50)
                          : BorderRadius.circular(30),
                    ),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: Get.height * 0.3,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'My Task',
                                  style: TextStyle(
                                      color: AppColors.primaryText,
                                      fontSize: 30),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                // my task
                                SizedBox(
                                  height: 200,
                                  child: ListView(
                                    clipBehavior: Clip.antiAlias,
                                    scrollDirection: Axis.horizontal,
                                    shrinkWrap: true,
                                    children: [
                                      Container(
                                        width: 400,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: AppColors.cardBg,
                                        ),
                                        padding: EdgeInsets.all(20),
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(25),
                                                  child: const CircleAvatar(
                                                    backgroundColor:
                                                        Colors.amber,
                                                    radius: 20,
                                                    foregroundImage:
                                                        NetworkImage(
                                                      'https://static.independent.co.uk/s3fs-public/thumbnails/image/2017/09/27/08/jennifer-lawrence.jpg?quality=75&width=982&height=726&auto=webp%27',
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  height: 25,
                                                  width: 80,
                                                  color: AppColors.primaryBg,
                                                  child: Text('100%'),
                                                ),
                                              ],
                                            ),
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(25),
                                              // ignore: prefer_const_constructors
                                              child: const CircleAvatar(
                                                backgroundColor: Colors.amber,
                                                radius: 20,
                                                foregroundImage: NetworkImage(
                                                  'https://static.independent.co.uk/s3fs-public/thumbnails/image/2017/09/27/08/jennifer-lawrence.jpg?quality=75&width=982&height=726&auto=webp%27',
                                                ),
                                              ),
                                            ),
                                            Row(
                                              children: [
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(25),
                                                  // ignore: prefer_const_constructors
                                                  child: const CircleAvatar(
                                                    backgroundColor:
                                                        Colors.amber,
                                                    radius: 20,
                                                    foregroundImage:
                                                        NetworkImage(
                                                      'https://static.independent.co.uk/s3fs-public/thumbnails/image/2017/09/27/08/jennifer-lawrence.jpg?quality=75&width=982&height=726&auto=webp%27',
                                                    ),
                                                  ),
                                                ),
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(25),
                                                  // ignore: prefer_const_constructors
                                                  child: const CircleAvatar(
                                                    backgroundColor:
                                                        Colors.amber,
                                                    radius: 20,
                                                    foregroundImage: NetworkImage(
                                                        'https://static.independent.co.uk/s3fs-public/thumbnails/image/2017/09/27/08/jennifer-lawrence.jpg?quality=75&width=982&height=726&auto=webp%27'),
                                                  ),
                                                ),
                                                // ignore: prefer_const_constructors
                                                Spacer(),
                                                Container(
                                                  height: 25,
                                                  width: 80,
                                                  color: AppColors.primaryBg,
                                                  child: const Center(
                                                    child: Text(
                                                      '100%',
                                                      style: TextStyle(
                                                        color: AppColors
                                                            .primaryText,
                                                        fontSize: 20,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            const Spacer(),
                                            Container(
                                              height: 25,
                                              width: 80,
                                              color: AppColors.primaryBg,
                                              child: const Center(
                                                  child: Text(
                                                '10 / 10 Task',
                                                style: TextStyle(
                                                  color: AppColors.primaryText,
                                                ),
                                              )),
                                            ),
                                            const Text(
                                              'Pemograman Mobile',
                                              style: TextStyle(
                                                color: AppColors.primaryText,
                                                fontSize: 20,
                                              ),
                                            ),
                                            const Text(
                                              'Deadline 2 hari lagi',
                                              style: TextStyle(
                                                color: AppColors.primaryText,
                                                fontSize: 15,
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              children: [UpcomingTask()],
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            height: 200,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              children: [
                                Container(
                                  width: 400,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: AppColors.cardBg,
                                  ),
                                  margin: const EdgeInsets.all(20),
                                  padding: const EdgeInsets.all(20),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(25),
                                            // ignore: prefer_const_constructors
                                            child: const CircleAvatar(
                                              backgroundColor: Colors.amber,
                                              radius: 20,
                                              foregroundImage: NetworkImage(
                                                'https://static.independent.co.uk/s3fs-public/thumbnails/image/2017/09/27/08/jennifer-lawrence.jpg?quality=75&width=982&height=726&auto=webp%27',
                                              ),
                                            ),
                                          ),
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(25),
                                            // ignore: prefer_const_constructors
                                            child: const CircleAvatar(
                                              backgroundColor: Colors.amber,
                                              radius: 20,
                                              foregroundImage: NetworkImage(
                                                  'https://static.independent.co.uk/s3fs-public/thumbnails/image/2017/09/27/08/jennifer-lawrence.jpg?quality=75&width=982&height=726&auto=webp%27'),
                                            ),
                                          ),
                                          // ignore: prefer_const_constructors
                                          Spacer(),
                                          Container(
                                            height: 25,
                                            width: 80,
                                            color: AppColors.primaryBg,
                                            child: const Center(
                                                child: Text(
                                              '100%',
                                              style: TextStyle(
                                                color: AppColors.primaryText,
                                                fontSize: 20,
                                              ),
                                            )),
                                          ),
                                        ],
                                      ),
                                      const Spacer(),
                                      Container(
                                        height: 25,
                                        width: 80,
                                        color: AppColors.primaryBg,
                                        child: const Center(
                                          child: Text(
                                            '10 / 10 Task',
                                            style: TextStyle(
                                              color: AppColors.primaryText,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const Text(
                                        'Pemograman Mobile',
                                        style: TextStyle(
                                          color: AppColors.primaryText,
                                          fontSize: 20,
                                        ),
                                      ),
                                      const Text(
                                        'Deadline 2 hari lagi',
                                        style: TextStyle(
                                          color: AppColors.primaryText,
                                          fontSize: 15,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 400,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: AppColors.cardBg,
                                  ),
                                  margin: const EdgeInsets.all(20),
                                  padding: const EdgeInsets.all(20),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(25),
                                            // ignore: prefer_const_constructors
                                            child: const CircleAvatar(
                                              backgroundColor: Colors.amber,
                                              radius: 20,
                                              foregroundImage: NetworkImage(
                                                'https://static.independent.co.uk/s3fs-public/thumbnails/image/2017/09/27/08/jennifer-lawrence.jpg?quality=75&width=982&height=726&auto=webp%27',
                                              ),
                                            ),
                                          ),
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(25),
                                            // ignore: prefer_const_constructors
                                            child: const CircleAvatar(
                                              backgroundColor: Colors.amber,
                                              radius: 20,
                                              foregroundImage: NetworkImage(
                                                  'https://static.independent.co.uk/s3fs-public/thumbnails/image/2017/09/27/08/jennifer-lawrence.jpg?quality=75&width=982&height=726&auto=webp%27'),
                                            ),
                                          ),
                                          // ignore: prefer_const_constructors
                                          Spacer(),
                                          Container(
                                            height: 25,
                                            width: 80,
                                            color: AppColors.primaryBg,
                                            child: const Center(
                                                child: Text(
                                              '100%',
                                              style: TextStyle(
                                                color: AppColors.primaryText,
                                                fontSize: 20,
                                              ),
                                            )),
                                          ),
                                        ],
                                      ),
                                      const Spacer(),
                                      Container(
                                        height: 25,
                                        width: 80,
                                        color: AppColors.primaryBg,
                                        child: const Center(
                                          child: Text(
                                            '10 / 10 Task',
                                            style: TextStyle(
                                              color: AppColors.primaryText,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const Text(
                                        'Pemograman Mobile',
                                        style: TextStyle(
                                          color: AppColors.primaryText,
                                          fontSize: 20,
                                        ),
                                      ),
                                      const Text(
                                        'Deadline 2 hari lagi',
                                        style: TextStyle(
                                          color: AppColors.primaryText,
                                          fontSize: 15,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 400,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: AppColors.cardBg,
                                  ),
                                  margin: const EdgeInsets.all(20),
                                  padding: const EdgeInsets.all(20),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(25),
                                            // ignore: prefer_const_constructors
                                            child: const CircleAvatar(
                                              backgroundColor: Colors.amber,
                                              radius: 20,
                                              foregroundImage: NetworkImage(
                                                'https://static.independent.co.uk/s3fs-public/thumbnails/image/2017/09/27/08/jennifer-lawrence.jpg?quality=75&width=982&height=726&auto=webp%27',
                                              ),
                                            ),
                                          ),
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(25),
                                            // ignore: prefer_const_constructors
                                            child: const CircleAvatar(
                                              backgroundColor: Colors.amber,
                                              radius: 20,
                                              foregroundImage: NetworkImage(
                                                  'https://static.independent.co.uk/s3fs-public/thumbnails/image/2017/09/27/08/jennifer-lawrence.jpg?quality=75&width=982&height=726&auto=webp%27'),
                                            ),
                                          ),
                                          // ignore: prefer_const_constructors
                                          Spacer(),
                                          Container(
                                            height: 25,
                                            width: 80,
                                            color: AppColors.primaryBg,
                                            child: const Center(
                                              child: Text(
                                                '100%',
                                                style: TextStyle(
                                                  color: AppColors.primaryText,
                                                  fontSize: 20,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      const Spacer(),
                                      Container(
                                        height: 25,
                                        width: 80,
                                        color: AppColors.primaryBg,
                                        child: const Center(
                                          child: Text(
                                            '10 / 10 Task',
                                            style: TextStyle(
                                              color: AppColors.primaryText,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const Text(
                                        'Pemograman Mobile',
                                        style: TextStyle(
                                          color: AppColors.primaryText,
                                          fontSize: 20,
                                        ),
                                      ),
                                      const Text(
                                        'Deadline 2 hari lagi',
                                        style: TextStyle(
                                          color: AppColors.primaryText,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 400,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: AppColors.cardBg,
                                  ),
                                  margin: const EdgeInsets.all(20),
                                  padding: const EdgeInsets.all(20),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(25),
                                            // ignore: prefer_const_constructors
                                            child: const CircleAvatar(
                                              backgroundColor: Colors.amber,
                                              radius: 20,
                                              foregroundImage: NetworkImage(
                                                'https://static.independent.co.uk/s3fs-public/thumbnails/image/2017/09/27/08/jennifer-lawrence.jpg?quality=75&width=982&height=726&auto=webp%27',
                                              ),
                                            ),
                                          ),
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(25),
                                            // ignore: prefer_const_constructors
                                            child: const CircleAvatar(
                                              backgroundColor: Colors.amber,
                                              radius: 20,
                                              foregroundImage: NetworkImage(
                                                  'https://static.independent.co.uk/s3fs-public/thumbnails/image/2017/09/27/08/jennifer-lawrence.jpg?quality=75&width=982&height=726&auto=webp%27'),
                                            ),
                                          ),
                                          // ignore: prefer_const_constructors
                                          Spacer(),
                                          Container(
                                            height: 25,
                                            width: 80,
                                            color: AppColors.primaryBg,
                                            child: const Center(
                                              child: Text(
                                                '100%',
                                                style: TextStyle(
                                                  color: AppColors.primaryText,
                                                  fontSize: 20,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      const Spacer(),
                                      Container(
                                        height: 25,
                                        width: 80,
                                        color: AppColors.primaryBg,
                                        child: const Center(
                                          child: Text(
                                            '10 / 10 Task',
                                            style: TextStyle(
                                              color: AppColors.primaryText,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const Text(
                                        'Pemograman Mobile',
                                        style: TextStyle(
                                          color: AppColors.primaryText,
                                          fontSize: 20,
                                        ),
                                      ),
                                      const Text(
                                        'Deadline 2 hari lagi',
                                        style: TextStyle(
                                          color: AppColors.primaryText,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: SingleChildScrollView(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Upcoming Task',
                                        style: TextStyle(
                                            color: AppColors.primaryText,
                                            fontSize: 30),
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      SizedBox(
                                        height: 400,
                                        child: ListView(
                                          clipBehavior: Clip.antiAlias,
                                          //scrollDirection: Axis.vertical,
                                          shrinkWrap: true,
                                          children: [
                                            SizedBox(
                                              height: 400,
                                              child: Container(
                                                //width: 400,
                                                //height: 200,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      20,
                                                    ),
                                                    color: AppColors.cardBg),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'My Friends',
                                      style: TextStyle(
                                          color: AppColors.primaryText,
                                          fontSize: 30),
                                    ),
                                    Spacer(),
                                    const Text(
                                      'More',
                                      style: TextStyle(
                                          color: AppColors.primaryText,
                                          fontSize: 30),
                                    ),
                                    const Icon(
                                      Icons.forward,
                                      color: AppColors.primaryText,
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    SizedBox(),
                                    SizedBox(
                                      height: 20,
                                      child: ListView(
                                        clipBehavior: Clip.antiAlias,
                                        scrollDirection: Axis.vertical,
                                        shrinkWrap: true,
                                        children: [
                                          Container(
                                            height: 200,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              color: AppColors.cardBg,
                                            ),
                                            margin: const EdgeInsets.all(20),
                                            padding: const EdgeInsets.all(20),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  children: [
                                                    ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              25),
                                                      // ignore: prefer_const_constructors
                                                      child: const CircleAvatar(
                                                        backgroundColor:
                                                            Colors.amber,
                                                        radius: 20,
                                                        foregroundImage:
                                                            NetworkImage(
                                                          'https://static.independent.co.uk/s3fs-public/thumbnails/image/2017/09/27/08/jennifer-lawrence.jpg?quality=75&width=982&height=726&auto=webp%27',
                                                        ),
                                                      ),
                                                    ),
                                                    ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              25),
                                                      // ignore: prefer_const_constructors
                                                      child: const CircleAvatar(
                                                        backgroundColor:
                                                            Colors.amber,
                                                        radius: 20,
                                                        foregroundImage:
                                                            NetworkImage(
                                                                'https://static.independent.co.uk/s3fs-public/thumbnails/image/2017/09/27/08/jennifer-lawrence.jpg?quality=75&width=982&height=726&auto=webp%27'),
                                                      ),
                                                    ),
                                                    // ignore: prefer_const_constructors
                                                    Container(
                                                      height: 25,
                                                      width: 80,
                                                      color:
                                                          AppColors.primaryBg,
                                                      child: const Center(
                                                        child: Text(
                                                          '100%',
                                                          style: TextStyle(
                                                            color: AppColors
                                                                .primaryText,
                                                            fontSize: 20,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                const Spacer(),
                                                Container(
                                                  height: 25,
                                                  width: 80,
                                                  color: AppColors.primaryBg,
                                                  child: const Center(
                                                    child: Text(
                                                      '10 / 10 Task',
                                                      style: TextStyle(
                                                        color: AppColors
                                                            .primaryText,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                const Text(
                                                  'Pemograman Mobile',
                                                  style: TextStyle(
                                                    color:
                                                        AppColors.primaryText,
                                                    fontSize: 20,
                                                  ),
                                                ),
                                                const Text(
                                                  'Deadline 2 hari lagi',
                                                  style: TextStyle(
                                                    color:
                                                        AppColors.primaryText,
                                                    fontSize: 15,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            height: 200,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              color: AppColors.cardBg,
                                            ),
                                            margin: const EdgeInsets.all(20),
                                            padding: const EdgeInsets.all(20),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  children: [
                                                    ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              25),
                                                      // ignore: prefer_const_constructors
                                                      child: const CircleAvatar(
                                                        backgroundColor:
                                                            Colors.amber,
                                                        radius: 20,
                                                        foregroundImage:
                                                            NetworkImage(
                                                          'https://static.independent.co.uk/s3fs-public/thumbnails/image/2017/09/27/08/jennifer-lawrence.jpg?quality=75&width=982&height=726&auto=webp%27',
                                                        ),
                                                      ),
                                                    ),
                                                    ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              25),
                                                      // ignore: prefer_const_constructors
                                                      child: const CircleAvatar(
                                                        backgroundColor:
                                                            Colors.amber,
                                                        radius: 20,
                                                        foregroundImage:
                                                            NetworkImage(
                                                                'https://static.independent.co.uk/s3fs-public/thumbnails/image/2017/09/27/08/jennifer-lawrence.jpg?quality=75&width=982&height=726&auto=webp%27'),
                                                      ),
                                                    ),
                                                    // ignore: prefer_const_constructors
                                                    Spacer(),
                                                    Container(
                                                      height: 25,
                                                      width: 80,
                                                      color:
                                                          AppColors.primaryBg,
                                                      child: const Center(
                                                        child: Text(
                                                          '100%',
                                                          style: TextStyle(
                                                            color: AppColors
                                                                .primaryText,
                                                            fontSize: 20,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                const Spacer(),
                                                Container(
                                                  height: 25,
                                                  width: 80,
                                                  color: AppColors.primaryBg,
                                                  child: const Center(
                                                    child: Text(
                                                      '10 / 10 Task',
                                                      style: TextStyle(
                                                        color: AppColors
                                                            .primaryText,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                const Text(
                                                  'Pemograman Mobile',
                                                  style: TextStyle(
                                                    color:
                                                        AppColors.primaryText,
                                                    fontSize: 20,
                                                  ),
                                                ),
                                                const Text(
                                                  'Deadline 2 hari lagi',
                                                  style: TextStyle(
                                                    color:
                                                        AppColors.primaryText,
                                                    fontSize: 15,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ]),
                  ),
                )
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
