class Product{
  final String name;
  final String category;
  final int quantity;

  Product(this.name, this.category, this.quantity);

  static List<Product> products = [
    Product('susu', 'minuman', 10),
    Product('roti', 'makanan', 3),
    Product('keju', 'makanan', 10),
    Product("Celana", "pakaian", 10),
    Product("baju", "pakaian", 20)
  ];
}