import 'package:flutter/material.dart';

import '../../../../core/widgets/large_button.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/constants/app_text_style.dart';
import 'option_box.dart';

class FilterBottomSheet extends StatefulWidget {
  const FilterBottomSheet({super.key});

  @override
  State<FilterBottomSheet> createState() => _FilterBottomSheetState();
}

class _FilterBottomSheetState extends State<FilterBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
        bottom: 20,
        top: 10,
      ),
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Column(
              children: [
                Container(
                  width: 50,
                  height: 3,
                  margin: const EdgeInsets.only(bottom: 5),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                const Text(
                  AppStrings.filterByText,
                  style: AppTextStyle.text2,
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          SearchBar(
            elevation: const WidgetStatePropertyAll(0),
            shape: WidgetStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            leading: const Icon(Icons.search, size: 18),
            hintText: 'Search by room name',
            hintStyle: const WidgetStatePropertyAll(
              TextStyle(fontSize: 12),
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            AppStrings.sportNameText,
            style: AppTextStyle.text4,
          ),
          const SizedBox(height: 5),
          const Wrap(
            spacing: 10,
            runSpacing: 10,
            runAlignment: WrapAlignment.start,
            children: [
              OptionBox(label: 'Badminton'),
              OptionBox(label: 'Basketball'),
              OptionBox(label: 'Futsal'),
              OptionBox(label: 'Football'),
              OptionBox(label: 'Volleyball'),
            ],
          ),
          const SizedBox(height: 10),
          const Divider(),
          const SizedBox(height: 10),
          const Text(
            AppStrings.levelText,
            style: AppTextStyle.text4,
          ),
          const SizedBox(height: 5),
          const Wrap(
            spacing: 10,
            runSpacing: 10,
            runAlignment: WrapAlignment.start,
            children: [
              OptionBox(label: 'Newbie'),
              OptionBox(label: 'Beginner'),
              OptionBox(label: 'Intermediate'),
              OptionBox(label: 'Advanced'),
              OptionBox(label: 'Pro'),
            ],
          ),
          const SizedBox(height: 10),
          const Divider(),
          const SizedBox(height: 10),
          const Text(
            AppStrings.timeText,
            style: AppTextStyle.text4,
          ),
          const SizedBox(height: 5),
          const Wrap(
            spacing: 10,
            runSpacing: 10,
            runAlignment: WrapAlignment.start,
            children: [
              OptionBox(label: 'Morning [6-12]'),
              OptionBox(label: 'Afternoon [12-18]'),
              OptionBox(label: 'Evening [18-22]'),
              OptionBox(label: 'Late Night [22-6]'),
            ],
          ),
          const SizedBox(height: 20),
          LargeButton(
            label: AppStrings.applyText,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
