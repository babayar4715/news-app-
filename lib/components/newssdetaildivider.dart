import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:news_app_boom/constants/app_colors.dart';

class NewsDEtailDivider extends StatelessWidget {
  const NewsDEtailDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Divider(
      height: 20,
      thickness: 3,
      color: Appcolors.Divid,
    );
  }
}
