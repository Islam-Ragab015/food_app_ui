class FoodModel {
  final String name;
  final String image;
  final String description;
  final String category;
  final double price;
  bool isFav;

  FoodModel(
      {required this.name,
      required this.category,
      required this.image,
      required this.description,
      required this.price,
      this.isFav = false});
}
