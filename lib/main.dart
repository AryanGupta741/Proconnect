import 'package:flutter/material.dart';
import 'package:proconnect/view/profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        primaryColor: Colors.grey,
        useMaterial3: true,
      ),
      home: const ProfileScreen(),
    );
  }
}



// ======= this is the sample code ===============

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class Product {
//   final String name;
//   final String description;
//   final double price;

//   Product(this.name, this.description, this.price);
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Product List'),
//         ),
//         body: ProductViewScreen(),
//       ),
//     );
//   }
// }

// class ProductViewScreen extends StatelessWidget {
//   final List<Product> products = [
//     Product('Product 1', 'Description for Product 1', 19.99),
//     Product('Product 2', 'Description for Product 2', 29.99),
//     Product('Product 3', 'Description for Product 3', 39.99),
//     // Add more product items as needed
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       itemCount: products.length,
//       itemBuilder: (context, index) {
//         Product product = products[index];
//         return ListTile(
//           title: Column(
//             mainAxisAlignment: MainAxisAlignment.end,
//             children: [
//               Container(
//                 color: Colors.red,
//                 width: 10,
//                 height: 10,
//               ),
//               Text(product.name),
//             ],
//           ),
//           subtitle: Text('Price: \$${product.price.toStringAsFixed(2)}'),
//           onTap: () {
//             // Navigate to the detailed product view for this product
//             Navigator.of(context).push(
//               MaterialPageRoute(
//                 builder: (context) => ProductDetailScreen(product: product),
//               ),
//             );
//           },
//         );
//       },
//     );
//   }
// }

// class ProductDetailScreen extends StatelessWidget {
//   final Product product;

//   ProductDetailScreen({required this.product});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(product.name),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text('Description: ${product.description}'),
//             Text('Price: \$${product.price.toStringAsFixed(2)}'),
//             // Add more product details and actions here
//           ],
//         ),
//       ),
//     );
//   }
// }
