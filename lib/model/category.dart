class Category {
  final String title;
  final String id;
  final String image;
  var isSelected;

  Category({
    required this.title,
    required this.id,
    required this.image,
    this.isSelected = false,
  });
}
