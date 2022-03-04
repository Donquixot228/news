import 'package:test1/models/news_model.dart';
import 'package:test1/pages/home_page.dart';

import '../widgets/news_card.dart';

class CardModel {
  static List<NewsCard> newsCard = [
    NewsCard(
      newsModel: NewsModel(
        data: 'Wed, 09 Feb',
        mainText:
            'Boris Jhonson says he intends to scrap Covid isolation rules as new party photo emerges-live',
        photo: 'assets/images/first.png',
        secondText:
            'simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the',
        time: '3 Hours ago',
      ),
    ),
    NewsCard(
      newsModel: NewsModel(
        data: 'Thue, 05 May',
        mainText:
        'Which countries in Europe will follow Austria and make COVID vaccines mandatory?',
        photo: 'assets/images/second.png',
        secondText:
        'simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the',
        time: '10 Hours ago',
      ),
    ),
    NewsCard(
      newsModel: NewsModel(
        data: 'Wed, 09 Feb',
        mainText:
        'Boris Jhonson says he intends to scrap Covid isolation rules as new party photo emerges-live',
        photo: 'assets/images/first.png',
        secondText:
        'simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the',
        time: '3 Hours ago',
      ),
    ),
    NewsCard(
      newsModel: NewsModel(
        data: 'Thue, 05 May',
        mainText:
        'Which countries in Europe will follow Austria and make COVID vaccines mandatory?',
        photo: 'assets/images/second.png',
        secondText:
        'simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the',
        time: '10 Hours ago',
      ),
    ),
  ];
}
