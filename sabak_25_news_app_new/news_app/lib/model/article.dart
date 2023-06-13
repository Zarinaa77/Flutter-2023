
import 'package:news_app/model/source.dart';

class Article { 
  Article({
      required this.source,
     this.autor,
      required this.title,
      required this.description,
      required this.url,
   this.urlToImage,
      required this.publishedAt,
      required this.content});
  final Source source;
  final String? autor;
  final String title;
  final String description;
  final String url;
  final String? urlToImage;
  final String publishedAt;
  final String content;
factory Article.jsondon(Map<String,dynamic>json){
  return Article(
    source: Source.fromJson(json['source']), 
     title: json['title'], 
     description: json ['description'],
      url:json ['url'], 
    //  urlToImage: json['urlToImage'] , 
      publishedAt:json ['publishedAt'],
       content: json ['content']);
}

  static fromJson(e) {}

}