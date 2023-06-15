import 'dart:developer';

import 'package:flashstore/utilities/helper.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../utilities/widgets.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    log(size.width.toString());
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Homepage',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
        elevation: 0,
        toolbarHeight: 45,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: Helper.screenPadding(size.width)),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Divider(),
              SizedBox(
                  height: size.height - 100, child: const DescriptionWidget()),
              ProductContainer(
                width: size.width,
              ),
              SizedBox(
                height: 100,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProductContainer extends StatelessWidget {
  final double width;
  const ProductContainer({super.key, required this.width});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Products",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w900,
            ),
          ),
          SizedBox(height: 20),
          GridView.count(
            shrinkWrap: true,
            crossAxisCount: Helper.crossAxisProductCount(width),
            mainAxisSpacing: 20,
            crossAxisSpacing: 30,
            physics: const NeverScrollableScrollPhysics(),
            childAspectRatio: .85,
            children: [
              ProductCard(
                color: Colors.red,
                width: width,
              ),
              ProductCard(
                width: width,
                color: Colors.blue,
              ),
              ProductCard(
                width: width,
                color: Colors.green,
              ),
              ProductCard(
                width: width,
                color: Colors.purple,
              ),
              ProductCard(
                width: width,
                color: Colors.orange,
              ),
              ProductCard(
                width: width,
                color: Colors.pink,
              ),
            ],
          )
        ],
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final MaterialColor color;
  final double width;
  const ProductCard({super.key, required this.color, required this.width});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          constraints: BoxConstraints(
            maxWidth: 300,
            maxHeight: 280,
            minHeight: 100,
            minWidth: 100,
          ),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                color.shade300,
                color.shade900,
              ],
              begin: FractionalOffset.topLeft,
              end: FractionalOffset.bottomRight,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 5),
          child: Text(
            "Product",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Text("\$18"),
        ),
      ],
    );
  }
}

class DescriptionWidget extends StatelessWidget {
  const DescriptionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Lottie.network(
          "https://assets5.lottiefiles.com/packages/lf20_ysljtytl.json",
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            GradientText(
              'FLASH STORE',
              style: const TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w600,
              ),
              gradient: LinearGradient(colors: [
                Colors.blue.shade400,
                Colors.blue.shade900,
              ]),
            ),
            const Text(
              "One Stop For All Your Desire",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                letterSpacing: 2,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
