import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:newsapp/app/data/models/news_model.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class NewsDetailController extends RxController {
  final Dio _dio = Dio();
  RxString title = "".obs;
  var newsDetail = NewsModel().obs;
  RxBool isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    ever(title, (_) => fetchNewsDetail());
  }

  @override
  void onClose() {
    title.value = "";
    super.onClose();
  }

  void setTitle(String title) {
    this.title.value = title;
  }

  Future fetchNewsDetail() async {
    if (title.value.isEmpty) {
      newsDetail.value = NewsModel();
      return;
    }

    final String url = dotenv.env['API_URL'] ?? '';

    try {
      isLoading.value = true;
      final response =
          await _dio.get('$url&country=id&qInTitle=${title.value}');
      if (response.statusCode == 200 || response.statusCode == 201) {
        isLoading.value = false;
        final data = response.data['results'];
        List<NewsModel> news =
            List.from(data.map((item) => NewsModel.fromJson(item)));

        newsDetail.value = news[0];
      }
    } catch (e) {
      isLoading.value = false;
      print(e);
    }
  }
}
