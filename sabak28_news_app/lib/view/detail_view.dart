import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sabak28_news_app/components/detail_divider.dart';
import 'package:sabak28_news_app/components/detail_news_news.dart';
import 'package:sabak28_news_app/components/detail_site_button.dart';
import 'package:sabak28_news_app/components/detail_title.dart';
import 'package:sabak28_news_app/model/article.dart';
import 'package:sabak28_news_app/theme/app_colors.dart';
import 'package:sabak28_news_app/theme/app_text_styles.dart';
import 'package:sabak28_news_app/theme/sized.dart';
import 'package:share_plus/share_plus.dart';

class DetailView extends StatelessWidget {
  const DetailView({super.key, required this.article});
  final Article article;

  @override
  Widget build(BuildContext context) {
    final newsTime = DateFormat
    ('d MMMM y H:m:s').format(DateTime.parse(
      article.publishedAt));
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.detailAppcolors,
        centerTitle: true,
        title:Text(article.title),

        actions: article.url.toString().
        isNotEmpty?

        [
          IconButton(
            onPressed: (){
          Share.share(article.url.toString());
          }, 
          icon: const Icon(Icons.share),
          ),
        ]:null,
    ),

    body:Padding(
      padding: const EdgeInsets.all(10),
      child: SingleChildScrollView(
        child: Column(
          children: [
            DetailTitle(article: article),
            Sized.height10,
            const DetailDivider(),
            DetailNewsTime(newsTime: newsTime),
            Sized.height15,
            Image.network(article.urlToImage.toString()
            ),
            Sized.height15,
            Text(article.description.toString(),
            textAlign: TextAlign.center,
            style: AppTextStyles.descriptionTextStyle,
            ),
            DetailSiteButton(article: article,),
          ],
        ),
      ),
    ) 
  );
 }
}


