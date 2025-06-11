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
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.all(5),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          decoration: BoxDecoration(
              color: const Color.fromRGBO(210, 13, 240, 1.0),
              borderRadius: BorderRadius.circular(8)),
          child: const Text(
            'Sales Points',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) =>
                CategoryWidget(categoryItem: dataItemList[index]),
            itemCount: dataItemList.length,
            padding: const EdgeInsets.all(1),
            // scrollDirection: Axis.horizontal ,
          ),
        ),
      ],
    );
  }
}
