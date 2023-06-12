import 'package:flutter/material.dart';
import 'package:shop_app/AppStyles/appColors.dart';
import 'package:shop_app/Screens/home_page.dart';

class BasePage extends StatefulWidget {
  const BasePage({Key? key}) : super(key: key);

  @override
  State<BasePage> createState() => _BasePageState();
}

class _BasePageState extends State<BasePage> {
  int selectedIndex = 0;
  changeIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  List<Widget> pages = [
    const HomePage(),
    Container(color: Colors.red),
    Container(color: Colors.red),
    Container(color: Colors.white),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: selectedIndex,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        onTap: changeIndex,
        items: [
          BottomNavigationBarItem(
              icon: Image.asset("images/home.png"),
              activeIcon: CircleAvatar(
                backgroundColor: AppColor().primaryColor,
                child: Image.asset(
                  "images/home.png",
                  color: Colors.black,
                ),
              ),
              label: ""),
          BottomNavigationBarItem(
            icon: Image.asset("images/notification.png"),
            label: "",
            activeIcon: CircleAvatar(
              backgroundColor: AppColor().primaryColor,
              child: Image.asset(
                "images/home.png",
                color: Colors.black,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Image.asset("images/receipt.png"),
            label: "",
            activeIcon: CircleAvatar(
              backgroundColor: AppColor().primaryColor,
              child: Image.asset(
                "images/home.png",
                color: Colors.black,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Image.asset("images/profile.png"),
            label: "",
            activeIcon: CircleAvatar(
              backgroundColor: AppColor().primaryColor,
              child: Image.asset(
                "images/home.png",
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
