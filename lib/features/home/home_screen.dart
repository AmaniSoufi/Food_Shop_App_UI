import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:foodshopapp/features/details/details_screen.dart';
import 'package:foodshopapp/features/home/model_product.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(top: 100, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: 'Fruits and berries',
              size: 25,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                  fillColor: Color.fromARGB(255, 236, 236, 236),
                  filled: true,
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  iconColor: Colors.white,
                  hintText: 'Search...',
                  hintStyle: TextStyle(color: Colors.white),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.white),
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: MasonryGridView.builder(
                crossAxisSpacing: 5,
                itemCount: FoodShoopItems().length,
                gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemBuilder: (context, index) {
                  final product = FoodShoopItems()[index];
                  return Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    DetailsScreen(product: product)));
                      },
                      child: Container(
                        height: product.height.toDouble(),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: product.bgColor,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomText(
                                  text: product.title,
                                  fontWeight: FontWeight.bold,
                                  size: 15),
                              CustomText(
                                  text: product.lb,
                                  fontWeight: FontWeight.bold,
                                  size: 12),
                              CustomText(
                                  text: product.price,
                                  fontWeight: FontWeight.bold,
                                  size: 12),
                              Expanded(
                                child: Hero(
                                    tag: product.image,
                                    child: Image.asset(product.image)),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.text,
    required this.fontWeight,
    required this.size,
    this.color,
  });
  final String text;
  final FontWeight fontWeight;
  final double size;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: size, fontWeight: fontWeight, color: color),
    );
  }
}
