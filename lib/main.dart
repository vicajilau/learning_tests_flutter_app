import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testing_app/services/router_service.dart';

import 'models/favorites.dart';

void main() {
  runApp(const TestingApp());
}

class TestingApp extends StatelessWidget {
  const TestingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Favorites>(
      create: (context) => Favorites(),
      child: MaterialApp.router(
        title: 'Testing Sample Liquid Galaxy!',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        routerConfig: RouterService.shared.getRouter(),
      ),
    );
  }
}
