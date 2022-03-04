import 'package:flutter/material.dart';
import 'package:stacked_card_carousel/stacked_card_carousel.dart';

import '../models/card_model.dart';
import '../resources/app_icons.dart';
import '../services/locator.dart';
import '../services/navigation_service.dart';

class BookMark extends StatelessWidget {
  const BookMark();

  static const String routeName = '/bookMarkPage';

  static Widget create() {
    return const BookMark();
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
                  'BookMark',
                  style: Theme.of(context).textTheme.headline6,
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.only(top: kToolbarHeight + 50),
              child: StackedCardCarousel(
                items: CardModel.newsCard,
                spaceBetweenItems: 460,
                applyTextScaleFactor: false,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
