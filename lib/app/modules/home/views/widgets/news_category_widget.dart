import 'package:flutter/material.dart';
import 'package:newsapp/app/core/const/app_style.dart';
import 'package:newsapp/app/core/const/color.dart';

class NewsCategoryWidget extends StatelessWidget {
  final List<Map<String, dynamic>> _categories = [
    {'title': 'Politics', 'icon': Icons.gavel},
    {'title': 'Sports', 'icon': Icons.sports_soccer},
    {'title': 'Technology', 'icon': Icons.computer},
    {'title': 'Health', 'icon': Icons.health_and_safety},
    {'title': 'Business', 'icon': Icons.business},
    {'title': 'Entertainment', 'icon': Icons.movie},
    {'title': 'Science', 'icon': Icons.science},
    {'title': 'World', 'icon': Icons.public},
  ];

  NewsCategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      child: GridView.builder(
        itemCount: _categories.length,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          mainAxisSpacing: 12,
          crossAxisSpacing: 12,
          childAspectRatio: 1,
        ),
        itemBuilder: (context, index) {
          return Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {},
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          blurRadius: 10,
                          spreadRadius: 2,
                          offset: const Offset(4, 4),
                        ),
                      ],
                    ),
                    padding: const EdgeInsets.all(12),
                    child: Icon(
                      _categories[index]['icon'],
                      color: brownColor,
                      size: 26,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    _categories[index]['title'],
                    textAlign: TextAlign.center,
                    style: latoMedium.copyWith(
                      color: blackColor.withOpacity(0.6),
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
