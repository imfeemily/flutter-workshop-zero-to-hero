import 'package:flutter/material.dart';
import 'package:news_reader/data/news.dart';

class NewsCard extends StatelessWidget {
  NewsCard(this.news);

  final News news;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              child: SizedBox(
                width: double.infinity,
                height: MediaQuery.of(context).size.width * 1.5 / 3,
                child: Image.network(
                  news.cover,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 8),
            child: Text(
              news.title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          Center(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                      left: 20,
                      bottom: 10,
                    ),
                    child: Text(news.createAt.toString()),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.more_vert),
                  onPressed: () {},
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
