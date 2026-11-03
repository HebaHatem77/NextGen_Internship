import 'package:flutter/material.dart';

import '../widgets/custom_button.dart';
import '../widgets/custom_sheet.dart';
import '../widgets/links_row.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool showSheet = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
          child: Text(
            "Y.",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        actions: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            padding: EdgeInsets.all(4),
            decoration: BoxDecoration(color: Colors.white),
            child: Icon(Icons.menu, size: 12),
          ),
        ],
      ),
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(color: Colors.black),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  showSheet ? SizedBox(height: 0) : SizedBox(height: 100),
                  Image.asset(
                    "assets/images/photo.png",
                    width: 360,
                    fit: BoxFit.cover,
                  ),
                  showSheet
                      ? const SizedBox.shrink()
                      : Column(
                        children: [
                          SizedBox(height: 60,),
                          Text(
                              "Hello I am",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                        ],
                      ),
                  Text(
                    "Yaron Fanger",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 2),
                  Text(
                    "Ux Designer & Developer",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 30),
                  CustomButton(
                    text: 'Hire me',
                    onPressed: () {
                      setState(() {
                        showSheet = true;
                      });
                    },
                  ),
                  SizedBox(height: 80),
                  LinksRow(),
                ],
              ),
            ),
          ),
          if (showSheet)
            CustomSheet(
              onClose: () {
                setState(() {
                  showSheet = false;
                });
              },
            ),
        ],
      ),
    );
  }
}
