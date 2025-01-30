import 'package:flutter/material.dart';
import '../../components/base_layout.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseLayout(
      currentIndex: 1,
      body: SafeArea(
        child: Column(
          children: const [
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                'My Favorites',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // Add your favorites content here
          ],
        ),
      ),
    );
  }
} 