class ApiConst{
  static const apiKey = '4e1bff53d6ab47f3b4fde595df8d1eed';
  static String topNews ([String? domain])=> 
  'https://newsapi.org/v2/top-headlines?country=${domain??'us'}&apiKey=$apiKey';
  static const newsImage = 
  'https://cdn.pixabay.com/photo/2015/11/06/13/27/news-1027876_960_720.jpg';
 
}