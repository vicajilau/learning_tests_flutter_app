import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/favorites.dart';
import 'favorites_item_tile.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({super.key});

  static String routeName = 'favorites_page';

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorites'),
      ),
      body: Consumer<Favorites>(
        builder: (context, value, child) => ListView.builder(
          itemCount: value.items.length,
          padding: const EdgeInsets.symmetric(vertical: 16),
          itemBuilder: (context, index) => FavoriteItemTile(value.items[index]),
        ),
      ),
    );
  }
}
