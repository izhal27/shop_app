import 'package:flutter/material.dart';

import './product.dart';

class Products with ChangeNotifier {
  List<Product> _items = [
    Product(
      id: 'p0',
      title: 'Watch',
      description: 'A pretty watch!',
      price: 28.99,
      imageUrl:
          'https://images.unsplash.com/photo-1546868871-7041f2a55e12?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=400&q=80',
    ),
    Product(
      id: 'p1',
      title: 'Sunglasses',
      description: 'A nice sunglasses.',
      price: 58.99,
      imageUrl:
          'https://images.unsplash.com/photo-1572635196237-14b3f281503f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1400&q=80',
    ),
    Product(
      id: 'p2',
      title: 'Red Shoe',
      description: 'Exactly what you need.',
      price: 18.99,
      imageUrl:
          'https://images.unsplash.com/photo-1542291026-7eec264c27ff?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80',
    ),
    Product(
      id: 'p3',
      title: 'A Nikon Camera',
      description: 'A Nikon Camera for take a picture.',
      price: 48.99,
      imageUrl:
          'https://images.unsplash.com/photo-1564466809058-bf4114d55352?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=333&q=80',
    ),
  ];

  List<Product> get items {
    return [..._items];
  }

  Product findById(String id) {
    return _items.firstWhere((product) => product.id == id);
  }

  List<Product> get getFavorites {
    return _items.where((product) => product.isFavorite).toList();
  }
}
