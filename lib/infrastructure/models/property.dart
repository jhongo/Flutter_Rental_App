
class Property {

  final String name;
  final String mainImage;
  final String address;
  final double price;
  final int area;
  final int bedrooms;
  final int bathrooms;
  final int livingrooms;
  final int buildyears;
  final double qualitify;
  final List<String> photos;
  final String category;

  const Property({
    required this.mainImage, 
    required this.area, 
    required this.livingrooms, 
    required this.buildyears,
    required this.qualitify,
    required this.name,
    required this.address,
    required this.price,
    required this.bedrooms,
    required this.bathrooms,
    required this.photos,
    required this.category,
  });
  
}