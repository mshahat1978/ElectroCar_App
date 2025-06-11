import 'package:electrocar_app/core/widgets/category_widget.dart';
import 'package:electrocar_app/core/widgets/data_item_class.dart';
import 'package:flutter/material.dart';

class Sales extends StatelessWidget {
  final List<DataItemClass> dataItemList = []; // create list of data
  Sales({super.key}) {
    for (int i = 0; i <= 3; i++) {
      dataItemList.add(DataItemClass(
          id: i + 1,
          s_Name: 'New Cairo City${i + 1} ',
          imagePath: 'assets/images/services/P${i + 1}.jpg'));
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) =>
          CategoryWidget(categoryItem: dataItemList[index]),
      itemCount: dataItemList.length,
      padding: const EdgeInsets.all(1),
      // scrollDirection: Axis.horizontal ,
    );
  }
}
