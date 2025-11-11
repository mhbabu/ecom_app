import 'package:ecom_app/screens/Home/Widget/home_appbar.dart';
import 'package:ecom_app/screens/Home/Widget/image_slider.dart';
import 'package:ecom_app/screens/Home/Widget/search_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 35),
              // for custom appbar
              const CustomAppBar(),
              const SizedBox(height: 20),
              // for search bar
              const MySearchBar(),
              const SizedBox(height: 20),
              const ImageSlider(),
            ],
          ),
        ),
      ),
    );
  }
}
