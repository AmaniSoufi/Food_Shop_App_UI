import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Product {
  String title;
  String price;
  String description;
  String image;

  Color color;
  Color bgColor;

  double height;
  String lb;

  Product({
    required this.description,
    required this.title,
    required this.image,
    required this.price,
    required this.color,
    required this.bgColor,
    required this.height,
    required this.lb,
  });
}

List<Product> FoodShoopItems() {
  return <Product>[
    Product(
      description:
          'Experience the delightful sweetness of our premium strawberries, handpicked at the peak of ripeness to ensure the best flavor. These vibrant red berries are perfect for creating decadent desserts, adding a pop of color and flavor to salads, or simply enjoying as a healthy, refreshing snack on their own. Each bite delivers a burst of natural sweetness',
      title: 'Strawberry',
      image: 'images/straweberry.png',
      price: '\$4.99',
      color: Colors.red,
      bgColor: Colors.red[100]!,
      height: 200.0,
      lb: '1kg',
    ),
    Product(
      description:
          'Our fresh blueberries are a must-have for any berry lover. These plump and juicy berries are packed with antioxidants and bursting with sweet-tart flavor. Perfect for baking delicious muffins, adding to your morning yogurt or cereal, or simply snacking on by the handful. Their deep blue hue and robust taste make them a nutritious and flavorful addition to any dish.',
      title: 'Blueberry',
      image: 'images/blueberry.png',
      price: '\$5.99',
      color: Colors.blue,
      bgColor: Colors.blue[100]!,
      height: 180.0,
      lb: '1kg',
    ),
    Product(
      description:
          'Indulge in the refreshing taste of our crisp and juicy grapes. Whether you’re enjoying them as a healthy snack, adding them to a cheese platter, or incorporating them into salads and desserts, these grapes are sure to please. With their perfect balance of sweetness and crunch, they’re a delightful treat for any occasion.',
      title: 'Grapes',
      image: 'images/grapes.png',
      price: '\$3.99',
      color: Colors.purple,
      bgColor: Colors.purple[100]!,
      height: 200.0,
      lb: '1kg',
    ),
    Product(
      description:
          'Transport yourself to a tropical paradise with our fresh coconuts, brimming with hydrating coconut water and tender, succulent flesh. Whether you’re sipping the refreshing water straight from the shell or using the rich, creamy coconut meat in your cooking, these coconuts are a versatile addition to your pantry.',
      title: 'Coconut',
      image: 'images/coconut.png',
      price: '\$4.99',
      color: Colors.brown,
      bgColor: Colors.green[100]!,
      height: 180.0,
      lb: '1kg',
    ),
    Product(
      description:
          'Bursting with citrusy goodness, our juicy oranges are the perfect way to start your day. Whether you’re juicing them for a refreshing morning drink, slicing them up for a midday snack, or incorporating their zest and juice into your cooking, these oranges deliver a vibrant, tangy flavor that brightens up any dish. Their sweet and slightly tart taste makes them a versatile fruit that’s loved by all.',
      title: 'Orange',
      image: 'images/orange.png',
      price: '\$2.49',
      color: Colors.orange,
      bgColor: Colors.orange[100]!,
      height: 180.0,
      lb: '1kg',
    ),
    Product(
      description:
          'Our golden pineapples are a tropical delight, known for their sweet, tangy flavor and juicy texture. Perfect for slicing up and enjoying on their own, adding to fruit salads, or grilling for a unique, caramelized treat. These pineapples bring a taste of the tropics to your table, making them an essential fruit for summer parties, smoothies, and desserts.',
      title: 'Pineapple',
      image: 'images/pineapple.png',
      price: '\$3.49',
      color: Colors.yellow,
      bgColor: Colors.yellow[100]!,
      height: 200.0,
      lb: '1kg',
    ),
    Product(
      description:
          'Cool down on a hot summer day with our refreshing and juicy watermelon. Each bite is bursting with sweet, hydrating goodness, making it the perfect treat for picnics, barbecues, or a light snack. Enjoy it sliced up, blended into smoothies, or as part of a refreshing fruit salad. This vibrant green and red fruit is synonymous with summer fun.',
      title: 'Watermelon',
      image: 'images/watermelon.png',
      price: '\$7.99',
      color: Colors.green,
      bgColor: Colors.green[100]!,
      height: 200.0,
      lb: '1kg',
    ),
    Product(
      description:
          'Dive into the exotic flavor of our ripe mangoes, known for their fragrant aroma and sweet, succulent flesh. These tropical fruits are perfect for enjoying on their own, adding to salsas, or blending into smoothies. Their vibrant orange color and juicy texture make them a favorite for fruit lovers everywhere, adding a touch of the exotic to any meal.',
      title: 'Mango',
      image: 'images/mango.png',
      price: '\$2.99',
      color: Colors.orange,
      bgColor: const Color.fromARGB(255, 236, 196, 136)!,
      height: 200.0,
      lb: '1kg',
    ),
    Product(
      description:
          'Add a zesty burst of flavor to your dishes with our fresh lemons. Whether you’re squeezing them for juice, grating their zest, or adding slices to your water, these lemons are a versatile kitchen staple. Their bright, tangy flavor is perfect for enhancing everything from salads and seafood to desserts and cocktails. A must-have for any culinary enthusiast.',
      title: 'Lemon',
      image: 'images/lemon.png',
      price: '\$2.49',
      color: Colors.yellow,
      bgColor: Colors.yellow[100]!,
      height: 200.0,
      lb: '1kg',
    ),
    Product(
      description:
          'Our rich and creamy avocados are a true superfood, packed with healthy fats and a buttery texture that’s perfect for spreading on toast, blending into smoothies, or making guacamole. Their subtle, nutty flavor complements a wide variety of dishes, making them a versatile ingredient in any kitchen. Enjoy them in salads, sandwiches, or on their own with a sprinkle of salt.',
      title: 'Avocado',
      image: 'images/avocado.png',
      price: '\$3.99',
      color: Colors.green,
      bgColor: Colors.green[100]!,
      height: 200.0,
      lb: '1kg',
    ),
    Product(
      description:
          'Sink your teeth into our crisp and juicy apples, perfect for a quick and healthy snack. These apples are known for their balance of sweetness and tartness, making them ideal for eating fresh, adding to salads, or baking into pies. Their vibrant red color and satisfying crunch make them a classic fruit that’s loved by all ages.',
      title: 'Apple',
      image: 'images/Apple.png',
      price: '\$2.99',
      color: Colors.red,
      bgColor: Colors.green[100]!,
      height: 200.0,
      lb: '1kg',
    ),
    Product(
      description:
          'Our sweet and tart cherries are the perfect summer treat, whether you’re snacking on them by the handful, baking them into pies, or adding them to salads. These deep red gems are bursting with flavor, making them a delightful addition to any meal. Their juicy texture and vibrant color make them a favorite for both eating fresh and cooking.',
      title: 'Cherry',
      image: 'images/cherry.png',
      price: '\$6.99',
      color: Colors.red,
      bgColor: Colors.red[100]!,
      height: 260.0,
      lb: '1kg',
    ),
  ];
}
