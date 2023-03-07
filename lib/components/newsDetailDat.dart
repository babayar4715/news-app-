import 'package:flutter/material.dart';
import 'package:news_app_boom/constants/app_colors.dart';

class NewsDEtailDAte extends StatelessWidget {
  const NewsDEtailDAte({
    Key? key,
    required this.time,
  }) : super(key: key);

  final String time;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(Icons.access_time, color: Appcolors.Dividf, size: 30),
        const SizedBox(width: 10),
        Text(
          time,
          style: const TextStyle(
            color: Appcolors.Black,
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
