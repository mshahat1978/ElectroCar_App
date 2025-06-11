import 'package:electrocar_app/core/widgets/data_item_class.dart';
import 'package:electrocar_app/core/widgets/image_widget.dart';
import 'package:electrocar_app/core/widgets/title_widget.dart';
import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  final DataItemClass categoryItem;

  const CategoryWidget({super.key, required this.categoryItem});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: const Color.fromRGBO(238, 238, 232, 1.0),
        border: Border.all(color: Colors.grey, width: 2),
        borderRadius: BorderRadius.circular(20),
      ),
      margin: const EdgeInsets.all(5),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          ImageWidget(imagePath: categoryItem.imagePath),
          TitleWidget(title: categoryItem.s_Name),
        ],
      ),
    );
  }
}
