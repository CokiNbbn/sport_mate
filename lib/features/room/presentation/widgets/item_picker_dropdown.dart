import 'package:flutter/material.dart';

import '../../../../core/constants/app_text_style.dart';

class ItemPickerDropdown extends StatefulWidget {
  const ItemPickerDropdown({
    super.key,
    required this.title,
    required this.label,
    required this.items,
    required this.icon,
  });

  final String title;
  final List<String> items;
  final String label;
  final IconData icon;

  @override
  State<ItemPickerDropdown> createState() => _ItemPickerDropdownState();
}

class _ItemPickerDropdownState extends State<ItemPickerDropdown> {
  late String selectedItem;

  @override
  void initState() {
    super.initState();
    selectedItem = widget.label;
  }

  void _selectItem() async {
    final pickedItem = await showDialog(
      context: context,
      builder: (context) {
        return SimpleDialog(
          title: Column(
            children: [
              Text(widget.label),
            ],
          ),
          titleTextStyle: AppTextStyle.text3,
          children: [
            ...widget.items.map(
              (item) => SimpleDialogOption(
                padding: EdgeInsets.zero,
                onPressed: () {
                  Navigator.pop(context, item);
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Text(
                    item,
                    style: AppTextStyle.text9,
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
    if (pickedItem != null) {
      setState(() {
        selectedItem = pickedItem;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.title, style: AppTextStyle.text7),
        const SizedBox(height: 5),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(
              width: 2,
              color: Theme.of(context).colorScheme.surfaceContainer,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: InkWell(
            onTap: _selectItem,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Icon(
                    widget.icon,
                    color: Colors.grey,
                  ),
                  const SizedBox(width: 5),
                  Text(
                    selectedItem,
                    style: AppTextStyle.text8,
                  ),
                  const Spacer(),
                  const Icon(Icons.arrow_drop_down_outlined),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
