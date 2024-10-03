import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:travelappflutter/presentation/home_screen/controller/home_controller.dart';

class CustomBottomNavBar extends StatelessWidget {
  final HomeController controller;

  const CustomBottomNavBar({required this.controller});

  @override
  Widget build(BuildContext context) {
    return Obx(() => Material(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20.0),
        topRight: Radius.circular(20.0),
        // bottomLeft: Radius.circular(20.0),
        // bottomRight: Radius.circular(20.0),
      ),
      clipBehavior: Clip.hardEdge,
      child: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(0.6),
        type: BottomNavigationBarType.fixed,
        iconSize: 28.0,
        elevation: 8.0,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
        unselectedLabelStyle: const TextStyle(fontSize: 12.0),
        items: const [
          BottomNavigationBarItem(icon: Icon(Iconsax.home1), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Iconsax.search_normal), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.confirmation_number_outlined), label: 'Bookings'),
          BottomNavigationBarItem(icon: Icon(Icons.bookmark_outline), label: 'Favorites'),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: 'Profile'),
        ],
        currentIndex: controller.selectedPage.value,
        onTap: (index) {
          controller.changePage(index);
          switch (index) {
            case 0:
              Get.offNamed('/welcome_screen');
              break;
            case 1:
              // Get.offNamed('/welcome_screen'); 
              break;
            case 2:
              Get.offNamed('/bookings');
              break;
            case 3:
              Get.offNamed('/favorites'); 
              break;
            case 4:
              Get.offNamed('/profile_screen');
              break;
          }
        },
      ),
    ));
  }
}