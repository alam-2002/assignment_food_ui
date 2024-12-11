import 'package:flutter/material.dart';
import 'package:assignment_food_ui/screens/cart_screen.dart';
import 'package:assignment_food_ui/screens/offers_screen.dart';
import 'package:assignment_food_ui/screens/profile_screen.dart';
import 'package:assignment_food_ui/home_screen.dart';

class MyNavigationBar extends StatefulWidget{

  @override
  State<MyNavigationBar> createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {

  int myIndex = 0;

  void getScreen(int index) {
    int screen = index;
    if(screen == 0) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
    }
    else if(screen == 1) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => OffersScreen()));
    }
    else if(screen == 2) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => CartScreen()));
    }
    else if(screen == 3) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileScreen()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: myIndex,
      onTap: (index) {
        setState(() {
          myIndex = index;
        });
      },
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            // color: Colors.red,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.local_offer,
            color: Colors.red,
          ),
          label: 'Offers',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.shopping_cart,
            color: Colors.red,
          ),
          label: 'Cart',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person,
            color: Colors.red,
          ),
          label: 'Profile',
        ),
      ],
      selectedItemColor: Colors.red.shade900,
      unselectedItemColor: Colors.red,
      unselectedLabelStyle: TextStyle(
          color: Colors.red
      ),
    );
  }
}
