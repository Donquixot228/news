import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:stacked_card_carousel/stacked_card_carousel.dart';
import 'package:test1/models/card_model.dart';
import 'package:test1/models/news_model.dart';
import 'package:test1/pages/categories.dart';
import 'package:test1/resources/app_colors.dart';
import 'package:test1/resources/app_icons.dart';

import '../services/locator.dart';
import '../services/navigation_service.dart';
import 'bookmark_page.dart';

class HomePage extends StatelessWidget {
  const HomePage();

  static const String routeName = '/homePage';

  static Widget create() {
    return const HomePage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.4,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/top.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: kToolbarHeight,
              left: 27,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Today for you',
                  style: Theme.of(context).textTheme.headline6,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: IconButton(
                    onPressed: (){ locator<NavigationService>()
                        .navigateTo(CategoriesPage.routeName);},
                    icon: Image.asset(AppIcons.top),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: kToolbarHeight + 100),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      locator<NavigationService>()
                          .navigateTo(BookMark.routeName);
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width - 30,
                      height: MediaQuery.of(context).size.height * 0.6,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        image: const DecorationImage(
                          image: AssetImage('assets/images/first.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 21),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  top: 27,
                                ),
                                child: Container(
                                  width: 54,
                                  height: 54,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: AppColors.redColor,
                                  ),
                                  child: Image.asset(AppIcons.logo),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.2,
                            ),
                            Row(
                              children: [
                                Text(
                                  'Wed, 09 Feb',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText2!
                                      .copyWith(fontSize: 12),
                                ),
                                const SizedBox(
                                  width: 13,
                                ),
                                Text(
                                  '3 Hours ago',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText2!
                                      .copyWith(fontSize: 12),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 9),
                              child: Text(
                                'Boris Jhonson says he intends to scrap Covid isolation rules as new party photo emerges-live',
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 9),
                              child: Text(
                                'simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2!
                                    .copyWith(fontSize: 12),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: TextButton(
                                onPressed: null,
                                child: Text(
                                  'Read More',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText2!
                                      .copyWith(color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width - 80,
                    height: 7,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30)),
                      color: Color(0xFF747474),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width - 100,
                    height: 7,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30)),
                      color: Color(0xFF8E8E8E),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width - 115,
                    height: 7,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30)),
                      color: const Color(0xFF8E8E8E).withOpacity(0.8),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(
                  bottom: kBottomNavigationBarHeight, left: 50, right: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 30,
                    child: Container(
                        width: 30,
                        height: 30,
                        child: Image.asset(AppIcons.heart)),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 30,
                    child: Container(
                        width: 30,
                        height: 30,
                        child: Image.asset(AppIcons.zak)),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 30,
                    child: Container(
                        width: 30,
                        height: 30,
                        child: Image.asset(AppIcons.share)),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

