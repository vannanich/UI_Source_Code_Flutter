// ignore_for_file: public_member_api_docs, sort_constructors_first
class ProductModel {
  String title;
  String thumbnail;
  String description;
  String category;
  double price;
  double discountPercentage;

  ProductModel({
    required this.title,
    required this.thumbnail,
    required this.description,
    required this.category,
    required this.price,
    required this.discountPercentage,
  });

  factory ProductModel.fromMap(Map<String, dynamic> data) {
    return ProductModel(
        title: data["title"] ?? "",
        thumbnail: data["thumbnail"] ?? "",
        description: data["description"] ?? "",
        category: data["category"] ?? "",
        price: data["price"] ?? 0.0,
        discountPercentage: data["discountPercentage"] ?? 0.0);
  }
}
