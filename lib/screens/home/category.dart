import 'package:flutter/material.dart';

import '../../constants.dart';

class CategoryList extends StatefulWidget {
  const CategoryList({Key? key}) : super(key: key);

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  int selectedCategory = 0;
  List<String> categories = ["In Theater", "Coming Soon", "Box Office"];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      height: 60,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedCategory = index;
              });
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  categories[index],
                  style: Theme.of(context).textTheme.headline5?.copyWith(
                        fontWeight: FontWeight.w600,
                        color: index == selectedCategory
                            ? kTextColor
                            : Colors.black.withOpacity(0.4),
                      ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(
                    vertical: 12,
                  ),
                  height: 4,
                  width: 40,
                  decoration: BoxDecoration(
                    color: index == selectedCategory
                        ? kSecondaryColor
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(10),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
