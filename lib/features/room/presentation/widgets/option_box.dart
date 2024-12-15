import 'package:flutter/material.dart';

class OptionBox extends StatefulWidget {
  const OptionBox({
    super.key,
    required this.label,
  });

  final String label;

  @override
  State<OptionBox> createState() => _OptionBoxState();
}

class _OptionBoxState extends State<OptionBox> {
  bool isSelected = false;

  void _toggleSelection() {
    setState(() {
      isSelected = !isSelected;
    });
  }

  BoxDecoration _getBoxDecoration(bool isSelected) {
    return BoxDecoration(
      border: Border.all(
        color: isSelected
            ? Theme.of(context).colorScheme.onPrimaryContainer
            : Theme.of(context).colorScheme.secondaryContainer,
      ),
      borderRadius: BorderRadius.circular(10),
      color: isSelected
          ? Theme.of(context).colorScheme.primaryContainer
          : Theme.of(context).colorScheme.surfaceContainer,
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _toggleSelection,
      child: FittedBox(
        child: Container(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 15,
          ),
          decoration: _getBoxDecoration(isSelected),
          child: Center(
            child: Text(
              widget.label,
              style: TextStyle(
                color: isSelected
                    ? Theme.of(context).colorScheme.onPrimaryContainer
                    : Theme.of(context).colorScheme.secondary,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
