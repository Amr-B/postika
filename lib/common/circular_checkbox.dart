import 'package:flutter/material.dart';

class CircularCheckbox extends StatefulWidget {
  final String label;
  // final ValueChanged<bool> onChanged;

  const CircularCheckbox({
    super.key,
    required this.label,
    // required this.onChanged,
  });

  @override
  State<CircularCheckbox> createState() => _CircularCheckboxState();
}

class _CircularCheckboxState extends State<CircularCheckbox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {
            // setState(() => isChecked = !isChecked);
            // widget.onChanged(isChecked);
          },
          child: Container(
            width: 22,
            height: 22,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: isChecked ? Colors.green : Colors.grey,
                width: 2,
              ),
              color: isChecked ? Colors.green : Colors.transparent,
            ),
            child: isChecked
                ? const Icon(Icons.check, size: 14, color: Colors.white)
                : null,
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Text(
            widget.label,
            style: const TextStyle(
              color: Colors.black87,
              fontSize: 14,
            ),
            softWrap: true,
          ),
        ),
      ],
    );
  }
}
