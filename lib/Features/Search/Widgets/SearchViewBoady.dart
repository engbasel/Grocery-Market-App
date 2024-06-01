// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// class SearchViewBoady extends StatelessWidget {
//   const SearchViewBoady({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: IconButton(
//           icon: const Icon(Icons.arrow_back),
//           onPressed: () => Navigator.pop(context),
//         ),
//         title: const Text('Search'),
//         backgroundColor: Colors.white,
//         foregroundColor: Colors.black,
//         elevation: 0,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             _buildSearchBar(context),
//             const SizedBox(height: 16.0),
//             const Text(
//               'Search Result',
//               style: TextStyle(
//                 fontSize: 18.0,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             const SizedBox(height: 8.0),
//             _buildFilterChips(),
//             const SizedBox(height: 16.0),
//             _buildProductList(),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildSearchBar(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         color: const Color(0xFFF0F1F2),
//         borderRadius: BorderRadius.circular(8.0),
//       ),
//       child: Row(
//         children: [
//           Expanded(
//             child: TextField(
//               decoration: InputDecoration(
//                 hintText: 'Search Anything',
//                 filled: true,
//                 fillColor: Colors.transparent,
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(8.0),
//                   borderSide: BorderSide.none,
//                 ),
//               ),
//             ),
//           ),
//           IconButton(
//             icon: const FaIcon(FontAwesomeIcons.search),
//             onPressed: () {
//               // Implement the search action
//             },
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildFilterChips() {
//     final filters = ['DANO', 'Nestle', 'Arong', 'Freas'];
//     return SingleChildScrollView(
//       scrollDirection: Axis.horizontal,
//       child: Row(
//         children: filters
//             .map((filter) => Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 4.0),
//                   child: FilterChip(
//                     label: Text(filter),
//                     onSelected: (bool selected) {
//                       // Handle filter selection
//                     },
//                   ),
//                 ))
//             .toList(),
//       ),
//     );
//   }

//   Widget _buildProductList() {
//     final products = [
//       {
//         'name': 'Arla DANO Full Cream Milk Powder Instant',
//         'oldPrice': 200,
//         'newPrice': 182,
//         'image':
//             'assets/ProductDetails/Milkimage.png', // Make sure to add this image
//         'discount': '20% OFF',
//       },
//       {
//         'name': 'Nestle Nido Full Cream Milk Powder Instant',
//         'oldPrice': 342,
//         'newPrice': 270,
//         'image':
//             'assets/ProductDetails/Milkimage.png', // Make sure to add this image
//       },
//       // Add more products as needed
//     ];

//     return Expanded(
//       child: ListView.builder(
//         itemCount: products.length,
//         itemBuilder: (context, index) {
//           final product = products[index];
//           return Card(
//             margin: const EdgeInsets.symmetric(vertical: 8.0),
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Row(
//                 children: [
//                   Stack(
//                     children: [
//                       Image.asset(
//                         product['image'] as String,
//                         width: 80.0,
//                         height: 80.0,
//                       ),
//                       if (product.containsKey('discount'))
//                         Positioned(
//                           top: 0,
//                           left: 0,
//                           child: Container(
//                             color: Colors.orange,
//                             padding: const EdgeInsets.all(4.0),
//                             child: Text(
//                               product['discount'] as String,
//                               style: const TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 12.0,
//                               ),
//                             ),
//                           ),
//                         ),
//                     ],
//                   ),
//                   const SizedBox(width: 16.0),
//                   Expanded(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           product['name'] as String,
//                           style: const TextStyle(
//                             fontSize: 16.0,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         const SizedBox(height: 8.0),
//                         Row(
//                           children: [
//                             if (product.containsKey('oldPrice'))
//                               Text(
//                                 '৳${product['oldPrice']}',
//                                 style: const TextStyle(
//                                   decoration: TextDecoration.lineThrough,
//                                   color: Colors.grey,
//                                 ),
//                               ),
//                             const SizedBox(width: 8.0),
//                             Text(
//                               '৳${product['newPrice']}',
//                               style: const TextStyle(
//                                 color: Colors.green,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                   ElevatedButton(
//                     onPressed: () {
//                       // Handle add to cart action
//                     },
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Colors.green,
//                     ),
//                     child: const Text('Add'),
//                   ),
//                 ],
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchViewBody extends StatefulWidget {
  const SearchViewBody({super.key});

  @override
  _SearchViewBodyState createState() => _SearchViewBodyState();
}

class _SearchViewBodyState extends State<SearchViewBody> {
  String _searchText = '';
  final List<Map<String, dynamic>> _products = [
    {
      'name': 'Arla DANO Full Cream Milk Powder Instant',
      'oldPrice': 200,
      'newPrice': 182,
      'image': 'assets/ProductDetails/Milkimage.png',
      'discount': '20% OFF',
    },
    {
      'name': 'Nestle Nido Full Cream Milk Powder Instant',
      'oldPrice': 342,
      'newPrice': 270,
      'image': 'assets/ProductDetails/Milkimage.png',
    },
    // Add more products as needed
  ];

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> filteredProducts = _products
        .where((product) => product['name']
            .toString()
            .toLowerCase()
            .contains(_searchText.toLowerCase()))
        .toList();

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text('Search'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSearchBar(),
            const SizedBox(height: 16.0),
            const Text(
              'Search Result',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            _buildFilterChips(),
            const SizedBox(height: 16.0),
            _buildProductList(filteredProducts),
          ],
        ),
      ),
    );
  }

  Widget _buildSearchBar() {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFF0F1F2),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              onChanged: (value) {
                setState(() {
                  _searchText = value;
                });
              },
              decoration: InputDecoration(
                hintText: 'Search Anything',
                filled: true,
                fillColor: Colors.transparent,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          IconButton(
            icon: const FaIcon(FontAwesomeIcons.search),
            onPressed: () {
              // Implement the search action if needed
            },
          ),
        ],
      ),
    );
  }

  Widget _buildFilterChips() {
    final filters = ['DANO', 'Nestle', 'Arong', 'Freas'];
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: filters
            .map((filter) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: FilterChip(
                    label: Text(filter),
                    onSelected: (bool selected) {
                      // Handle filter selection
                    },
                  ),
                ))
            .toList(),
      ),
    );
  }

  Widget _buildProductList(List<Map<String, dynamic>> products) {
    return Expanded(
      child: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 8.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Stack(
                    children: [
                      Image.asset(
                        product['image'] as String,
                        width: 80.0,
                        height: 80.0,
                      ),
                      if (product.containsKey('discount'))
                        Positioned(
                          top: 0,
                          left: 0,
                          child: Container(
                            color: Colors.orange,
                            padding: const EdgeInsets.all(4.0),
                            child: Text(
                              product['discount'] as String,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 12.0,
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                  const SizedBox(width: 16.0),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          product['name'] as String,
                          style: const TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8.0),
                        Row(
                          children: [
                            if (product.containsKey('oldPrice'))
                              Text(
                                '৳${product['oldPrice']}',
                                style: const TextStyle(
                                  decoration: TextDecoration.lineThrough,
                                  color: Colors.grey,
                                ),
                              ),
                            const SizedBox(width: 8.0),
                            Text(
                              '৳${product['newPrice']}',
                              style: const TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Handle add to cart action
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                    ),
                    child: const Text('Add'),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
