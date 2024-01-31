class Items {
  String image;
  String title;
  String sold;
  String location;
  String price;
  int rate;
  bool liked; // Add this property to track like status

  Items({
    required this.image,
    required this.title,
    required this.sold,
    required this.location,
    required this.price,
    required this.rate,
    this.liked = false, // Default value is false
  });
}
