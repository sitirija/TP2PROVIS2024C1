import 'package:flutter/material.dart';
import 'package:siti_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class ThirteenItemWidget extends StatelessWidget {
  const ThirteenItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 12.v,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        "10.00 a.m",
        style: TextStyle(
          color: appTheme.black900,
          fontSize: 18.fSize,
          fontFamily: 'Mongolian Baiti',
          fontWeight: FontWeight.w400,
        ),
      ),
      selected: false,
      backgroundColor: appTheme.gray500,
      selectedColor: appTheme.cyan600,
      shape: RoundedRectangleBorder(
        side: BorderSide.none,
        borderRadius: BorderRadius.circular(
          20.h,
        ),
      ),
      onSelected: (value) {},
    );
  }
}
