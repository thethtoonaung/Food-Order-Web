class CardDataModel{
  final double? price;
  final String imageLink;
  final String? title;
  final String description;

  const CardDataModel(
      {this.price, required this.imageLink, this.title, required this.description});
}