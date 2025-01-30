import 'package:flutter/material.dart';
import '../constants.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: kPrimaryColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.person,
                    size: 35,
                    color: kPrimaryColor,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  'Welcome!',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
                Text(
                  'Plant Lover',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.8),
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.home_outlined, color: kPrimaryColor),
            title: Text('Home'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.shopping_cart_outlined, color: kPrimaryColor),
            title: Text('My Orders'),
            onTap: () {
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Orders coming soon!'),
                  backgroundColor: kPrimaryColor,
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.favorite_border, color: kPrimaryColor),
            title: Text('Wishlist'),
            onTap: () {
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Wishlist coming soon!'),
                  backgroundColor: kPrimaryColor,
                ),
              );
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.settings_outlined, color: kPrimaryColor),
            title: Text('Settings'),
            onTap: () {
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Settings coming soon!'),
                  backgroundColor: kPrimaryColor,
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.help_outline, color: kPrimaryColor),
            title: Text('Help & Support'),
            onTap: () {
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Help & Support coming soon!'),
                  backgroundColor: kPrimaryColor,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
} 