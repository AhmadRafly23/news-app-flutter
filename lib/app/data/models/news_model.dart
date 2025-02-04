class NewsModel {
  String? title;
  String? link;
  String? description;
  String? date;
  String? imageUrl;

  NewsModel({
    this.title,
    this.link,
    this.description,
    this.date,
    this.imageUrl,
  });

  NewsModel.fromJson(Map<String, dynamic> json) {
    title = json['title'] ?? '';
    link = json['link'];
    description = json['description'];
    date = json['pubDate'];
    imageUrl = json['image_url'];
  }
}
