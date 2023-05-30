import 'package:flutter/material.dart';

class CustomerInput extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  final bool isTextArea;

  const CustomerInput(
      {super.key,
      required this.label,
      required this.controller,
      this.isTextArea = false});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(bottom: 20),
        width: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              child: Text(
                label.toString(),
                style: const TextStyle(
                  color: Color(0xff51515b),
                  fontSize: 14,
                ),
              ),
            ),
            const SizedBox(height: 8),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                border: Border.all(
                  color: Colors.grey.shade300,
                  width: 1,
                ),
                color: Colors.white,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.only(left: 10),
                      child: TextField(
                        style: const TextStyle(height: 1),
                        maxLines: isTextArea ? 5 : 1,
                        controller: controller,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
