import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ProductPage(),
    );
  }
}

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    // DANH SÁCH SẢN PHẨM
    final List<Map<String, dynamic>> products = [
      {
        "image": "https://via.placeholder.com/200",
        "name": "Ví nam mini dựng thẻ VS22 chất da Saffiano bền đẹp chống xước",
        "rating": 4.0,
        "views": "12 views",
        "price": "255.000 VND",
      },
      {
        "image": "https://via.placeholder.com/200",
        "name": "Túi đeo chéo LEACAT chống thấm nước thời trang",
        "rating": 5.0,
        "views": "1.3k views",
        "price": "315.000 VND",
      },
      {
        "image": "https://via.placeholder.com/200",
        "name": "Phin cafe Trung Nguyên - Phin nhôm cao cấp",
        "rating": 4.5,
        "views": "12.2k views",
        "price": "28.000 VND",
      },
      {
        "image": "https://via.placeholder.com/200",
        "name": "Ví da cầm tay mềm mọi cỡ lớn thiết kế thời trang cho nam",
        "rating": 5.0,
        "views": "56 views",
        "price": "610.000 VND",
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "DANH SÁCH SẢN PHẨM",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: GridView.builder(
          itemCount: products.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.62,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
          itemBuilder: (context, i) {
            final p = products[i];
            return _buildProductItem(p);
          },
        ),
      ),
    );
  }

  // ITEM SẢN PHẨM – giống hình nhất
  Widget _buildProductItem(Map<String, dynamic> p) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // HÌNH
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(6),
              topRight: Radius.circular(6),
            ),
            child: Image.network(
              p["image"],
              width: double.infinity,
              height: 120,
              fit: BoxFit.cover,
            ),
          ),

          // TÊN SẢN PHẨM
          Padding(
            padding: const EdgeInsets.all(6),
            child: Text(
              p["name"],
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontSize: 13),
            ),
          ),

          // Badge
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: Row(
              children: [
                _badge("HÀNG MỚI", Colors.orange),
                const SizedBox(width: 4),
                _badge("XTRA", Colors.blue),
              ],
            ),
          ),

          const SizedBox(height: 4),

          // Rating + Views
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: Row(
              children: [
                const Icon(Icons.star, color: Colors.amber, size: 16),
                Text(
                  p["rating"].toString(),
                  style: const TextStyle(fontSize: 13),
                ),
                const SizedBox(width: 8),
                Text(
                  p["views"],
                  style: TextStyle(fontSize: 12, color: Colors.grey.shade600),
                ),
              ],
            ),
          ),

          // PRICE
          Padding(
            padding: const EdgeInsets.all(6),
            child: Text(
              p["price"],
              style: const TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Badge nhỏ
  Widget _badge(String text, Color color) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(3),
      ),
      child: Text(
        text,
        style: const TextStyle(color: Colors.white, fontSize: 10),
      ),
    );
  }
}
