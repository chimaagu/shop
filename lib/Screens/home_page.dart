import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_app/AppStyles/appColors.dart';
import 'package:shop_app/AppStyles/text_styles.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AppColor appColor = AppColor();
  AppTextStyles appTextStyles = AppTextStyles();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 20),
            getAppbarWidget(),
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Text("Shop by Categories", style: appTextStyles.largeText),
                  const Spacer(),
                  Text(
                    "See All",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
            CategoryListWidget(appTextStyles: appTextStyles),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Text("Top Selling", style: appTextStyles.largeText),
                  const Spacer(),
                  Text(
                    "See All",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding getAppbarWidget() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Container(
            height: 40,
            width: 40,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xffE5D8F6),
            ),
            child: Center(
              child: Text(
                "JK",
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          const Spacer(),
          Container(
            padding: const EdgeInsets.only(right: 10, left: 20),
            height: 40,
            // width: 92,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: Colors.white.withOpacity(0.2),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Women",
                  style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
                const Icon(
                  Icons.arrow_drop_down_rounded,
                  color: Colors.white,
                ),
              ],
            ),
          ),
          const Spacer(),
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: appColor.primaryColor,
            ),
            child: Center(
              child: Image.asset("images/bag.png"),
            ),
          ),
        ],
      ),
    );
  }
}

class CategoryListWidget extends StatelessWidget {
  const CategoryListWidget({
    super.key,
    required this.appTextStyles,
  });

  final AppTextStyles appTextStyles;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        child: Row(
          children: [
            categoryWidget(
              appTextStyles: appTextStyles,
              categoryName: "Clothing",
              categoryImage: "images/cloth.png",
            ),
            categoryWidget(
                appTextStyles: appTextStyles,
                categoryName: "Accessories",
                categoryImage: "images/cloth.png"),
            categoryWidget(
                appTextStyles: appTextStyles,
                categoryName: "Beauty",
                categoryImage: "images/cloth.png"),
            categoryWidget(
                appTextStyles: appTextStyles,
                categoryName: "Shoes",
                categoryImage: "images/cloth.png"),
          ],
        ),
      ),
    );
  }
}

class categoryWidget extends StatelessWidget {
  const categoryWidget({
    super.key,
    required this.appTextStyles,
    required this.categoryName,
    required this.categoryImage,
  });

  final AppTextStyles appTextStyles;
  final String categoryName;
  final String categoryImage;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(right: 15),
          height: 72,
          width: 72,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              fit: BoxFit.contain,
              image: AssetImage(categoryImage),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Text(
          categoryName,
          style: appTextStyles.smallText,
        )
      ],
    );
  }
}
