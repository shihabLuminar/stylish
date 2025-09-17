import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stylish/core/constants/color_constatns.dart';
import 'package:stylish/core/constants/image_constants.dart';
import 'package:stylish/model/home_screen_model/category_model.dart';
import 'package:stylish/view/global_widgets/fileter_card.dart';
import 'package:stylish/view/home_screen/widgets/categoy_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstatns.white2,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        leading: Center(
          child: CircleAvatar(
            backgroundColor: ColorConstatns.white1,
            radius: 16,
            child: Icon(Icons.menu, size: 18),
          ),
        ),
        title: Row(
          spacing: 9,
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(ImageConstants.appLogo, height: 30),
            Text(
              'Stylish',
              style: GoogleFonts.libreCaslonText(
                color: ColorConstatns.secondary,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ],
        ),
        actions: [
          CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage(ImageConstants.onboarding1),
          ),
          SizedBox(width: 12),
        ],
      ),
      body: Column(
        children: [
          //1----SEARCH SECTION
          _buildSearchSection(),

          // category and filter section
          _buildCategoryAndFilterSection(),
        ],
      ),
    );
  }

  Widget _buildSearchSection() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          enabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
          hintText: "Search any Product..",
          hintStyle: TextStyle(color: ColorConstatns.grey1),
          suffixIcon: IconButton(
            onPressed: () {},
            icon: Icon(Icons.mic_none_rounded, color: ColorConstatns.grey1),
          ),
          prefixIcon: Icon(Icons.search, color: ColorConstatns.grey1),
        ),
      ),
    );
  }

  Widget _buildCategoryAndFilterSection() {
    List<CategoryModel> categoryList = [
      CategoryModel(
        imageUrl:
            "https://images.pexels.com/photos/298863/pexels-photo-298863.jpeg",
        category: "Beauty",
      ),
      CategoryModel(
        imageUrl:
            "https://images.pexels.com/photos/428340/pexels-photo-428340.jpeg",
        category: "Fashion",
      ),
      CategoryModel(
        imageUrl:
            "https://images.pexels.com/photos/2983464/pexels-photo-2983464.jpeg",
        category: "kids",
      ),
      CategoryModel(
        imageUrl:
            "https://images.pexels.com/photos/3755706/pexels-photo-3755706.jpeg",
        category: "Jackets",
      ),
      CategoryModel(
        imageUrl:
            "https://images.pexels.com/photos/6311652/pexels-photo-6311652.jpeg",
        category: "Mens",
      ),
      CategoryModel(
        imageUrl:
            "https://images.pexels.com/photos/853261/pexels-photo-853261.jpeg",
        category: "Womens",
      ),
      CategoryModel(
        imageUrl:
            "https://images.pexels.com/photos/2983465/pexels-photo-2983465.jpeg",
        category: "Gifts",
      ),
      CategoryModel(
        imageUrl:
            "https://images.pexels.com/photos/994523/pexels-photo-994523.jpeg",
        category: "Footwear",
      ),
      CategoryModel(
        imageUrl:
            "https://images.pexels.com/photos/298863/pexels-photo-298863.jpeg",
        category: "Formals",
      ),
      CategoryModel(
        imageUrl:
            "https://images.pexels.com/photos/2983466/pexels-photo-2983466.jpeg",
        category: "Accessories",
      ),
    ];

    return Column(
      spacing: 16,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22.0),
          child: Row(
            children: [
              Text(
                "All Featured",
                style: GoogleFonts.montserrat(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Spacer(),
              FileterCard(text: "Sort", iconData: Icons.swap_vert),
              SizedBox(width: 20),
              FileterCard(text: "Filter", iconData: Icons.filter_alt_outlined),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22),
            child: Row(
              spacing: 16,
              children: List.generate(
                categoryList.length,
                (index) => CategoryWidget(
                  imgePath: categoryList[index].imageUrl,
                  category: categoryList[index].category,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
