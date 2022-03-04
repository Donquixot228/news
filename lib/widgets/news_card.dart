
import 'package:flutter/material.dart';
import 'package:test1/resources/app_icons.dart';

import '../models/news_model.dart';
import '../resources/app_colors.dart';

class NewsCard extends StatelessWidget {
  NewsCard({required this.newsModel});

  NewsModel newsModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 30,
      height: MediaQuery.of(context).size.height * 0.6,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        image: DecorationImage(
          image: AssetImage(newsModel.photo),
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
                  newsModel.data,
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2!
                      .copyWith(fontSize: 12),
                ),
                const SizedBox(
                  width: 13,
                ),
                Text(
                  newsModel.time,
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
                //'Boris Jhonson says he intends to scrap Covid isolation rules as new party photo emerges-live',
                newsModel.mainText,
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 9),
              child: Text(
                newsModel.secondText,
                //'simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the',
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
    );
  }
}
