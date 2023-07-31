import 'package:flutter/material.dart';
import 'package:north_indian_culture/widget/style.dart';

import 'colors.dart';

Padding customAppBar() {
  return const Padding(
    padding: EdgeInsets.only(top: 20, left: 25, right: 25, bottom: 50),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        PrimaryText(
          text: 'North Indian Culture',
          size: 29,
          fontWeight: FontWeight.w700,
        ),
        RawMaterialButton(
          constraints: BoxConstraints(minWidth: 0),
          onPressed: null,
          elevation: 2.0,
          fillColor: Colors.white10,
          padding: EdgeInsets.all(8),
          shape: CircleBorder(),
          child: Icon(Icons.search_rounded,
              color: AppColor.primaryColor, size: 30),
        )
      ],
    ),
  );
}
