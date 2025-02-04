import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:newsapp/app/data/models/news_model.dart';

class HomeController extends GetxController {
  final Dio _dio = Dio();

  var newsList = <NewsModel>[].obs;
  RxBool isLoading = true.obs;

  @override
  void onInit() {
    fetchNews();
    super.onInit();
  }

  Future fetchNews() async {
    final String url = dotenv.env['API_URL'] ?? '';

    try {
      isLoading.value = true;
      final response = await _dio.get(url);
      if (response.statusCode == 200 || response.statusCode == 201) {
        isLoading.value = false;
        final data = response.data['results'];
        List<NewsModel> news =
            List<NewsModel>.from(data.map((news) => NewsModel.fromJson(news)))
                .take(4)
                .toList();
        newsList.assignAll(news);
      }
    } catch (e) {
      isLoading.value = false;
      print(e);
    }
  }
}
