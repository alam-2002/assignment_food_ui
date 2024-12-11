import 'package:flutter/material.dart';
import 'package:assignment_food_ui/models/carousel.dart';
import 'package:assignment_food_ui/models/navigation_bar.dart';
import 'package:assignment_food_ui/models/bestseller_section.dart';
import 'package:assignment_food_ui/models/categories_section.dart';
import 'package:assignment_food_ui/models/section_title.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // toolbarHeight: 80.0,
        backgroundColor: Colors.red,
        title: SizedBox(
          height: 35.0,
          child: TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              labelStyle: TextStyle(
                color: Colors.grey,
              ),
              labelText: 'Search',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              prefixIcon: Icon(Icons.search, color: Colors.grey),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 20.0),
            BannerCarousel(),
            SizedBox(height: 20.0),
            SectionTitle(
              title: "Bestsellers",
              icon: Icons.search,
              bgColor: Color(0xFF1C3D36),
              textColor: Colors.white,
            ),
            Container(
              color: Color(0xFF1C3D36),
              padding: EdgeInsets.all(6.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                    child: FoodCard(
                      imageUrl: 'images/waffles.jpg',
                      title: 'Belgian Waffle',
                      description:
                          'Lorem ipsum is simply dummy text of the printing',
                      price: '₹ 129.00',
                    ),
                  ),
                  SizedBox(width: 6.0),
                  Expanded(
                    child: FoodCard(
                      imageUrl:
                          'images/chocolate_cake.jpg',
                      title: 'Chocolate Cake',
                      description:
                          'Lorem ipsum is simply dummy text of the printing',
                      price: '₹ 199.00',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.0),
            SectionTitle(
              title: "Shop by Categories",
              icon: Icons.chevron_right,
              bgColor: Colors.white,
              textColor: Colors.black,
            ),
            CategoriesSection(),
          ],
        ),
      ),
      bottomNavigationBar: MyNavigationBar(),
    );
  }
}

