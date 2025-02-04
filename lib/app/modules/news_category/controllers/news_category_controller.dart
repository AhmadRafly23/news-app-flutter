import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:newsapp/app/data/models/news_model.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class NewsCategoryController extends RxController {
  final Dio _dio = Dio();
  RxString category = "".obs;
  var newsList = <NewsModel>[].obs;
  RxBool isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    ever(category, (_) => fetchNews());
  }

  void setCategory(String category) {
    this.category.value = category;
  }

  Future fetchNews() async {
    if (category.value.isEmpty) {
      newsList.clear();
      return;
    }

    final String url = dotenv.env['API_URL'] ?? '';

    try {
      isLoading.value = true;
      final response =
          await _dio.get('$url&country=id&category=${category.value}');
      if (response.statusCode == 200 || response.statusCode == 201) {
        isLoading.value = false;
        final data = response.data['results'];
        List<NewsModel> news =
            List.from(data.map((item) => NewsModel.fromJson(item)));

        newsList.assignAll(news); // Mengupdate newsList
      }
    } catch (e) {
      isLoading.value = false;
      print(e);
    }
  }
}
