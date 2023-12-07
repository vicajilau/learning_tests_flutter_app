import 'package:flutter/material.dart';

/// The [Favorites] class holds a list of favorite items saved by the user.
class Favorites extends ChangeNotifier {
  final List<int> _favoriteItems = [];

  List<int> get items => _favoriteItems;

  /// Add a new [itemNo] as favorite into list of favorites.Then notify listeners.
  void add(int itemNo) {
    _favoriteItems.add(itemNo);
    notifyListeners();
  }

  /// Remove [itemNo] from list of favorites.Then notify listeners.
  void remove(int itemNo) {
    _favoriteItems.remove(itemNo);
    notifyListeners();
  }
}