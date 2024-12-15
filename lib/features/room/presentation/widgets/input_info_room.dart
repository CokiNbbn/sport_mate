import 'package:flutter/material.dart';

import '../../../../core/constants/app_text_style.dart';

class InputInfoRoom extends StatelessWidget {
  const InputInfoRoom({
    super.key,
    required this.title,
    required this.maxLength,
    this.maxLines,
    this.minLines,
  });

  final String title;
  final int maxLength;
  final int? maxLines;
  final int? minLines;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: AppTextStyle.text7),
        const SizedBox(height: 5),
        TextField(
          maxLength: maxLength,
          maxLines: maxLines,
          minLines: minLines,
          decoration: InputDecoration(
          
            contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Theme.of(context).colorScheme.surfaceContainer,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Theme.of(context).colorScheme.primary,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ],
    );
  }
}
