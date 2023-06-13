
import 'package:http/http.dart' as http;
import 'package:sabak_27_news_app/constants/api_const.dart';
class TopNewsRepo{
  final http.Client client = http.Client();
  Future <void>fetchTopNews()async{
    final Uri uri =Uri.parse(ApiConst.topNews);
    final http.Response response = await client.get(uri);
    if (response.statusCode ==200 || response.statusCode==201){
      print(response.body);
      // print('_____________');
      // print(response.body.runtimeType);
      // final data=jsonDecode(response.body);
      // print(data.runtimeType);
      // final topNews= TopNews.fromJson(data);
      // print(data.runtimeType);
    }
  }
}