import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../details/details_screen.dart';

class FeaturedPlants extends StatelessWidget {
  const FeaturedPlants({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          FeaturePlantCard(
            image: "assets/images/bottom_img_1.png",
            title: "Succulent Garden",
            price: 29.99,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(
                    title: "Succulent Garden",
                    country: "South Africa",
                    price: 29.99,
                    image: "assets/images/bottom_img_1.png",
                    description: "Beautiful collection of hardy succulents perfect for any indoor space.",
                  ),
                ),
              );
            },
          ),
          FeaturePlantCard(
            image: "assets/images/bottom_img_2.png",
            title: "Cactus Collection",
            price: 24.99,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(
                    title: "Cactus Collection",
                    country: "Mexico",
                    price: 24.99,
                    image: "assets/images/bottom_img_2.png",
                    description: "A curated selection of low-maintenance cacti for your home.",
                  ),
                ),
              );
            },
          ),
          FeaturePlantCard(
            image: "assets/images/img.png",
            title: "Snake Plant",
            price: 34.99,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(
                    title: "Snake Plant",
                    country: "West Africa",
                    price: 34.99,
                    image: "assets/images/img.png",
                    description: "Air-purifying snake plant, perfect for bedrooms and offices.",
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class FeaturePlantCard extends StatefulWidget {
  const FeaturePlantCard({
    Key? key,
    required this.image,
    required this.title,
    required this.price,
    required this.press,
  }) : super(key: key);

  final String image;
  final String title;
  final double price;
  final VoidCallback press;

  @override
  State<FeaturePlantCard> createState() => _FeaturePlantCardState();
}

class _FeaturePlantCardState extends State<FeaturePlantCard> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTapDown: (_) => setState(() => isPressed = true),
      onTapUp: (_) {
        setState(() => isPressed = false);
        widget.press();
      },
      onTapCancel: () => setState(() => isPressed = false),
      child: TweenAnimationBuilder(
        duration: const Duration(milliseconds: 200),
        tween: Tween(begin: 1.0, end: isPressed ? 0.95 : 1.0),
        builder: (context, double value, child) {
          return Transform.scale(
            scale: value,
            child: child,
          );
        },
        child: Hero(
          tag: widget.image,
          child: Container(
            margin: EdgeInsets.only(
              left: kDefaultPadding,
              top: kDefaultPadding / 2,
              bottom: kDefaultPadding / 2,
              right: kDefaultPadding,
            ),
            width: size.width * 0.6,
            height: 185,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(kDefaultBorderRadius),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  offset: const Offset(0, 10),
                  blurRadius: 50,
                  color: kPrimaryColor.withOpacity(0.23),
                ),
              ],
            ),
            child: Stack(
              children: [
                Positioned.fill(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(kDefaultBorderRadius),
                    child: Image.asset(
                      widget.image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned.fill(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(kDefaultBorderRadius),
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.center,
                        colors: [
                          Colors.black.withOpacity(0.4),
                          Colors.transparent,
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: kDefaultPadding,
                  right: kDefaultPadding,
                  child: GestureDetector(
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Added ${widget.title} to favorites!'),
                          duration: const Duration(seconds: 1),
                          backgroundColor: kPrimaryColor,
                        ),
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.8),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.favorite_border,
                        size: 20,
                        color: kPrimaryColor,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: kDefaultPadding,
                  left: kDefaultPadding,
                  right: kDefaultPadding,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.title,
                        style: Theme.of(context).textTheme.titleMedium?.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      const SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "\$${widget.price.toStringAsFixed(2)}",
                            style: Theme.of(context).textTheme.titleSmall?.copyWith(
                                  color: Colors.white,
                                ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 5,
                            ),
                            decoration: BoxDecoration(
                              color: kPrimaryColor,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Text(
                              "Buy Now",
                              style: TextStyle(color: Colors.white, fontSize: 12),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
} 