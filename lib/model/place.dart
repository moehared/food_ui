class Place {
  final String name;
  final double rating;
  final double price;
  // location can be of type location that has lattitude and longtitude  but for now we can use string for demo
  final String location;
  final String image;

  const Place({
    required this.name,
    required this.rating,
    required this.price,
    required this.location,
    required this.image,
  });
}
