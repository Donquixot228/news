import 'package:flutter/material.dart';
import 'package:test1/resources/app_colors.dart';
import 'package:test1/resources/resources.dart';

import '../resources/app_icons.dart';
import '../services/locator.dart';
import '../services/navigation_service.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage();

  static const String routeName = '/categoriesPage';

  static Widget create() {
    return const CategoriesPage();
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
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: IconButton(
                    onPressed: () {
                      locator<NavigationService>().goBack();
                    },
                    icon: SizedBox(
                        width: 50,
                        height: 50,
                        child: Image.asset(AppIcons.arrow)),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'Categories',
                  style: Theme.of(context).textTheme.headline6,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8, top: kToolbarHeight + 60),
            child: Column(
              children: const [
                GreyCard(
                  icon: AppIcons.medikit,
                  sum: '120',
                  topText: 'Health',
                ),
                GreyCard(
                  icon: AppIcons.ear,
                  sum: '350',
                  topText: 'Politics',
                ),
                GreyCard(
                  icon: AppIcons.static,
                  sum: '554',
                  topText: 'Economy',
                ),
                GreyCard(
                  icon: AppIcons.ball,
                  sum: '150',
                  topText: 'Sports',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class GreyCard extends StatelessWidget {
  const GreyCard({
    required this.icon,
    required this.topText,
    required this.sum,
  });

  final String icon;
  final String topText;
  final String sum;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 4),
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width - 30,
            height: MediaQuery.of(context).size.height * 0.17,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: AppColors.cardSmallColor,
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 80,
                    height: 80,
                    child: Image.asset(icon),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width - 200,
                  alignment: Alignment.centerLeft,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          topText,
                          style: Theme.of(context)
                              .textTheme
                              .headline6!
                              .copyWith(color: AppColors.smallTextColor),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            '$sum+ News',
                            style: Theme.of(context).textTheme.bodyText2,
                          ),
                        ),
                      ),
                      Text(
                        'simply dummy text of the printing and typesetting industry. Lorem',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2!
                            .copyWith(fontSize: 14),
                        softWrap: true,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width - 80,
            height: 5,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30)),
              color: Color(0xFF747474),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width - 100,
            height: 5,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30)),
              color: Color(0xFF8E8E8E),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width - 115,
            height: 5,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30)),
              color: const Color(0xFF8E8E8E).withOpacity(0.8),
            ),
          ),
        ],
      ),
    );
  }
}
