class Product {
  final String name;
  final String imageUrl;
  final double price;

  const Product({this.name, this.imageUrl, this.price});

  static const List<Product> products = [
    Product(
        name: ("Apple"),
        imageUrl:
            ('https://cdn.pixabay.com/photo/2020/02/09/16/24/apple-4833764_960_720.jpg'),
        price: 23.4),
    Product(
        name: ("Banna"),
        imageUrl:
            ('https://cdn.pixabay.com/photo/2016/09/03/20/48/bananas-1642706_960_720.jpg'),
        price: 7.4),
    Product(
        name: ("APricot"),
        imageUrl:
            ('https://cdn.pixabay.com/photo/2019/05/17/21/22/apricots-4210720_960_720.jpg'),
        price: 3.4),
  ];
}
