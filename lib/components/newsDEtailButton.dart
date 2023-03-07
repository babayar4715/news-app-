import 'package:flutter/material.dart';
import 'package:news_app_boom/constants/app_colors.dart';

class NEWsDEtailButton extends StatelessWidget {
  const NEWsDEtailButton({
    Key? key,
    this.onPressed,
  }) : super(key: key);

  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Appcolors.AppBarC,
      ),
      child: const Text("Read more"),
    );
  }
}
