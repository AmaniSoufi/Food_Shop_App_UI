import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:foodshopapp/features/home/home_screen.dart';
import 'package:foodshopapp/features/home/model_product.dart';
import 'package:line_icons/line_icons.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key, required this.product});
  final Product product;

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  int _counter = 0;
  bool _isliked = false;

  void _like() {
    setState(() {
      _isliked = !_isliked;
    });
  }

  void _icrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: widget.product.bgColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 15),
              child: Row(
                children: [
                  CustomButton(
                    splashcolor: widget.product.bgColor,
                    icon: Icons.arrow_back_ios,
                    minheight: 20,
                    minwidth: 20,
                    onpressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
            Container(
                height: height * 0.4,
                child: Hero(
                    tag: widget.product.image,
                    child: Image.asset(widget.product.image))),
            Container(
              height: height * 0.5,
              width: width,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: Padding(
                padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                        text: widget.product.title,
                        fontWeight: FontWeight.bold,
                        size: 20),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Row(
                      children: [
                        CustomButton(
                            splashcolor: widget.product.bgColor,
                            icon: Icons.remove,
                            onpressed: () {
                              _decrementCounter();
                            },
                            minheight: 5,
                            minwidth: 5),
                        CustomText(
                            text: '$_counter',
                            fontWeight: FontWeight.bold,
                            size: 20),
                        CustomButton(
                            splashcolor: widget.product.bgColor,
                            icon: Icons.add,
                            onpressed: () {
                              _icrementCounter();
                            },
                            minheight: 5,
                            minwidth: 5),
                        Spacer(),
                        CustomText(
                            color: widget.product.color,
                            text: widget.product.price,
                            fontWeight: FontWeight.bold,
                            size: 18),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    CustomText(
                        text: widget.product.description,
                        fontWeight: FontWeight.normal,
                        color: widget.product.bgColor,
                        size: 15),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Row(
                      children: [
                        CustomButton(
                          splashcolor: widget.product.bgColor,
                          icon: _isliked ? LineIcons.heartAlt : LineIcons.heart,
                          onpressed: () {
                            _like();
                          },
                          minheight: 5,
                          minwidth: 5,
                          color: widget.product.color,
                          colors: widget.product.bgColor,
                        ),
                        SizedBox(
                          width: width * 0.05,
                        ),
                        GestureDetector(
                          child: Container(
                            alignment: Alignment.center,
                            height: height * 0.07,
                            width: width * 0.6,
                            decoration: BoxDecoration(
                                color: widget.product.color,
                                borderRadius: BorderRadius.circular(10)),
                            child: CustomText(
                              text: 'Add to cart ',
                              fontWeight: FontWeight.bold,
                              size: 16,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.icon,
    required this.onpressed,
    required this.minheight,
    required this.minwidth,
    this.color,
    required this.splashcolor,
    this.colors,
  });
  final IconData icon;
  final VoidCallback onpressed;
  final double minheight;
  final double minwidth;
  final Color splashcolor;
  final Color? colors;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onpressed,
      constraints: BoxConstraints(
        minHeight: minheight,
        minWidth: minwidth,
      ),
      splashColor: splashcolor,
      elevation: 0,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: color ?? Colors.white),
        borderRadius: BorderRadius.circular(10),
      ),
      fillColor: Colors.white,
      padding: EdgeInsets.all(10),
      child: Icon(
        icon,
        color: color,
      ),
    );
  }
}
