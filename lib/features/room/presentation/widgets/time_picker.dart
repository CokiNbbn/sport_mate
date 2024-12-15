import 'package:flutter/material.dart';

import '../../../../core/constants/app_text_style.dart';

class TimePicker extends StatefulWidget {
  const TimePicker({super.key});

  @override
  State<TimePicker> createState() => _TimePickerState();
}

class _TimePickerState extends State<TimePicker> {
  TimeOfDay selectedStartTime = TimeOfDay.now();
  TimeOfDay selectedEndTime = TimeOfDay.now();

  Future<void> _selectStartTime(BuildContext context) async {
    final TimeOfDay? pickedStartTime = await showTimePicker(
      context: context,
      initialTime: selectedStartTime,
      builder: (BuildContext context, Widget? child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: false),
          child: child!,
        );
      },
    );
    if (pickedStartTime != null && pickedStartTime != selectedEndTime) {
      setState(() {
        selectedStartTime = pickedStartTime;
      });
    }
  }

  Future<void> _selectEndTime(BuildContext context) async {
    final TimeOfDay? pickedEndTime = await showTimePicker(
      context: context,
      initialTime: selectedEndTime,
      builder: (BuildContext context, Widget? child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: false),
          child: child!,
        );
      },
    );
    if (pickedEndTime != null && pickedEndTime != selectedEndTime) {
      setState(() {
        selectedEndTime = pickedEndTime;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Start',
              style: AppTextStyle.text7,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2,
                  color: Theme.of(context).colorScheme.surfaceContainer,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: InkWell(
                onTap: () {
                  _selectStartTime(context);
                },
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                    left: 10,
                    bottom: 10,
                    right: 80,
                  ),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.access_time_outlined,
                        color: Colors.grey,
                      ),
                      const SizedBox(width: 5),
                      Text(
                        '${selectedStartTime.hour}:${selectedStartTime.minute.toString().padLeft(2, '0')} WIB',
                        style: AppTextStyle.text8,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'End',
              style: AppTextStyle.text7,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2,
                  color: Theme.of(context).colorScheme.surfaceContainer,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: InkWell(
                onTap: () {
                  _selectEndTime(context);
                },
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                    left: 10,
                    bottom: 10,
                    right: 80,
                  ),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.access_time_outlined,
                        color: Colors.grey,
                      ),
                      const SizedBox(width: 5),
                      Text(
                        '${selectedEndTime.hour}:${selectedEndTime.minute.toString().padLeft(2, '0')} WIB',
                        style: AppTextStyle.text8,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
