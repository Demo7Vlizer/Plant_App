import 'package:flutter/material.dart';
import '../../components/base_layout.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseLayout(
      currentIndex: 2,
      body: SafeArea(
        child: Column(
          children: const [
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                'Profile',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // Add your profile content here
          ],
        ),
      ),
    );
  }
} 